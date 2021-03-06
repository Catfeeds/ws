<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="../../includes/importer.jsp"%>
<!doctype html>
<html>
<head>
    <ht:head/>
    <script type="text/javascript">
    function showDiv(){
		with (fm) {
			//驳回时显示原因框
			if(status[0].checked) {
				bhyy.style.display="none";
				var checkStatus = document.getElementById("checkStatus");
				checkStatus.value = status[0].value;
			} else if(status[1].checked){
				bhyy.style.display="block";
				var checkStatus = document.getElementById("checkStatus");
				checkStatus.value = status[1].value;
			}
		}
	}
	$().ready(function() {
		//获取来源地址
		var url = document.referrer;
		$("#backUrl").val(url);
	});
    </script>
</head>
<body>

<div id="content">
<!-- forms -->
<div class="box">
    <!-- box / title -->
    <div class="title">
        <h5>审核</h5>
    </div>
    <!-- end box / title -->
    <form id="fm" class="required-validate" action="${ctx}/cont/sms/sms_auditing" method="post" accept-charset="utf-8">
        <input type="hidden" id="id" name="id" value="${id}">
        <input type="hidden" id="backUrl" name="backUrl" />
        <div class="form">
            <div class="fields">                
                <div class="field">
                  <div class="label">
                        <label for="taskName">被审内容：</label>
                    </div>
                    <div class="input"><!-- small medium large -->
                       ${content}
                    </div>
              	</div>              
                <div class="field">
                    <div class="label label-radio">
                        <label>审核:</label>
                    </div>
                    <div class="radios">
                        <div class="radio">
                            <input type="radio" id="radio-1" name="status" checked="checked" value="1" onclick="javascript:showDiv();" /><label for="radio-1">通过</label>
                            <input type="radio" id="radio-2" name="status" value="2" onclick="javascript:showDiv();" /><label for="radio-2">驳回</label>
                        </div>
                    	<input type="hidden" id="checkStatus" />
                    </div>
                </div>
                <div id="bhyy" style="display: none">
                <div class="field">
                    <div class="label label-textarea">
                        <label for="advice" class="req">驳回原因：</label>
                    </div>
                    <div class="input">
                        <textarea id="advice" name="advice" cols="50" rows="8" class="required max-length-100" >${contSms.advice}</textarea>
                    	<span class="error" id="advice-required-advice" style="display:none"></span>
                        <span class="error" id="advice-max-length-advice" style="display:none"></span>
                        <span class="error" id="advice-server-advice" style="display:none"></span>
                    </div>
                </div>
                </div>
                <div class="buttons">
                    <div class="highlight">
                        <input type="submit" name="submit.highlight" value="提交" />
                    </div>
                    <input type="reset" name="reset" value="重置" />
                    <a href="javascript:history.go(-1)" class="btnAnchor">返回</a>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- end forms -->
</div>
</body>
</html>