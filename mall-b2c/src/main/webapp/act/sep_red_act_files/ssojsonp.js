/**
 * �Զ���Ļص����������ָ�����Զ���ص���������Ϊ�ûص������趨һ����Σ������Ϊ�ӿ���Ӧ״̬
 **/
var cb = null;
var logoutcb = null;

/**
 * ��ʹ��sso��֤ǰ�����ȵ��ô˷��������ɱ���cookie
 * һ�����û������״η��ʵ���ҳ������¼��е���
 * �����֮ǰ��ҳ��������jQuery1.2�����ϰ汾
 * ����˵��
 * callback���Զ���Ļص�����
 **/
function initLocalCookie(callback){
	cb = callback;
	var url = "http://u.12580life.com/ssoCookieJsonp";//ͳһ��֤���ĵ�ַ
	$.getScript(url); 
	//�˺��ִ��dealResult
}

function ssoLogout(logoutCallBack)
{	
	logoutcb = logoutCallBack;
	//$.cookie('szcmjsSSOCookie',null,{path:'/'});
	//$.cookie('szcmtokenid',null,{path:'/'});
	var url = "http://u.12580life.com/ssoLogoutJsonp";//ͳһ��֤�����˳���¼jsonp
	$.getScript(url,function(){
		init10086SSOcookie(null,"");    // �˳�ʡ����
	}); 
	//�˺��ִ��dealLogoutResult
}

/**
 * ��ʹ��sso��¼�����ȵ��ô˷���������ʡ��֤������cookie
 * һ������ɵ�¼�ӿں�ǰ̨��Ӧ�û���֤��Ϣ�����
 * �����֮ǰ��ҳ��������jQuery1.2�����ϰ汾
 * ����˵��
 * callback���Զ���Ļص���������Ϊ��
 * cookie��sso��¼��ʵ���з��ص��û�cookieֵ
 **/

function init10086SSOcookie(callback, cookie){
	cb = callback;
	//���򱾵�д��cookie
	//$.cookie('szcmjsSSOCookie',cookie,{path:'/'});
	//$.cookie('szcmtokenid',cookie,{path:'/'});
	var url = "http://www.js.10086.cn/jssso/ssoCookieJsonp?co="+cookie;
	$.getScript(url); 
}


/**
 * ����ӿڷ��ؽ��������趨���Զ���ص������������
 * �����֮ǰ��ҳ��������jQuery1.2�����ϰ汾
 **/
function dealResult(res){
	var v=res[0].res;//vΪ��֤���ķ��ص�cookieֵ
	var logic=false;
	if(v=="0"){
		//alert("sso�ӿ�ִ��ʧ�ܣ�");
	}else if (v=="2"){
		alert("sso�ӿڵ���ʧ�ܣ��������Σ�");
	}else if (v=="1"){
		//ͨ��jsonp��Խд����֤��������cookie�ɹ�
		logic=true;
	}else{
		//ͨ��jsonp�����ȡ��֤��������cookieֵ�ɹ�����ʼ��������cookie���˴������Լ����ú�̨дcookie������Ҳ������jsд
		//$.cookie('szcmjsSSOCookie',v,{path:'/'});
		//$.cookie('szcmtokenid',v,{path:'/'});
		logic=true;
	}

	//����Զ���ص�������Ϊ�գ������
	if (cb!=null && cb!="") {
		//window[cb](logic);
		eval(cb+"(logic)") ;
	}
}


function dealLogoutResult(res){
	var v=res[0].res;
	var logic=false;
	
	if(v=="0")
	{
		logic=true;
	}

	//����Զ���ص�������Ϊ�գ������
	if (logoutcb!=null && logoutcb!="") 
	{
		eval(logoutcb+"(logic)") ;
	}
}

/**
 * jquery.cookie
 **/
jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        var path = options.path ? '; path=' + options.path : '';
        var domain = options.domain ? '; domain=' + options.domain : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', value, expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = cookie.substring(name.length + 1);
                    break;
                }
            }
        }
        return cookieValue;
    }
};