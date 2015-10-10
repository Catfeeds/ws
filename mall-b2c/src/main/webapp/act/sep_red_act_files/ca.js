/**
 * Count Analytics
 * ͳ��js,�����̨�ű�ͳ�Ƶ������
 */
var CA = {
	hasInit : 0,// �Ƿ��ʼ��ҳ���ǩdata-ca����
	arrImg : [],// ���ڹ�����Image�����Լ�״̬
	maxLength : 4,// ͬʱ������Image����������
	taskQueue : [],// ��Ҫ�ŶӵȺ������
	// ��ʼ��������body��mousedown�¼������ͷ��Ϲ���������Ϣ
	// ��������һ������data-ca���ԵĽڵ㣨������Ľڵ���������ĸ��ڵ㣩��
	init : function(mobile, ssoid) {
		var me = this;
		if (me.hasInit || $("body").size() == 0)
			return;
		$("body").bind("mousedown", function(e) {
			var o = $(e.target);
			while (o.length > 0) {
				if (o[0] == $("body")[0])
					break;
				// ���object��ǩ�������쳣
				try {
					var name = o.attr("data-ca");
					if (name) {
						me.log(name, mobile, ssoid);
						return true;
					}
				} catch (err) {
				}
				o = o.parent();
			}
		});
		me.hasInit = 1;
	},
	/**
	 * ��¼ͳ�����ݡ�����CA,���ӵ����ͳ�Ʒ�ʽ
	 * 
	 * @param {String}posi
	 *            λ��
	 * @param {String}mobile
	 *            �ֻ���
	 * @param {String}ssoid
	 *            ��¼id
	 * @param {String}serverUrl(opt)
	 *            ͳ�Ʒ�������ַ, ��ѡ
	 */
	log : function(posi, mobile, ssoid, serverUrl) {
		var me = this, mobile, ssoid, dateid, logUrl = (serverUrl || "http://u.12580life.com:8080/count-analytics/CountHitsServlet");
		if ((mobile == "") && (ssoid == "")) {
			dateid = (new Date().getTime());
		}
		me.send(logUrl + "?itemid=" + posi + "&mobile=" + mobile + "&ssoid="
				+ ssoid + "&dateid=" + dateid);
	},
	send : function(url) {
		// �������Ϊ�գ��򲻴���
		if (typeof (url) == "undefined" || url == "")
			return;
		var me = this, img, imgHandler, arrImg, len = 0, index = -1;
		arrImg = me.arrImg;
		len = arrImg.length;
		// ��ѯ���õ�Image����
		for ( var i = 0; i < len; i++) {
			if (arrImg[i].f == 0) {
				index = i;
				break;
			}
		}
		// ȡ����������Image����
		if (index == -1) {
			if (len == me.maxLength) {
				me.taskQueue.push(url);
				return;
			}
			img = $(new Image());
			arrImg.push({
				f : 1,
				img : img
			});
			index = (len == 0 ? 0 : len);
		} else {
			img = arrImg[index].img;
		}
		// ���Image����Ϊ����ʹ��״̬
		arrImg[index].f = 1;
		// ��¼��ʹ�õ�Image�����λ��
		img.data("vid", index);
		imgHandler = function() {
			var vid = $(this).data("vid");
			if (vid >= 0) {
				arrImg[vid].f = 0;
			}
			if (me.taskQueue.length > 0) {
				me.send(me.taskQueue.shift());
			}
		};
		img.unbind().load(imgHandler).error(imgHandler);
		$(img).attr("src", url);
	}
};
