<%@ page language="java" pageEncoding="gbk"%>
<%@ include file="includes/importer.jsp"%>

<%
response.setHeader("P3P","CP=CAO PSA OUR");//��ֹie��ʹ��IFrame��Frameset����session��ʧ
session.setMaxInactiveInterval(60 * 60 * 8);
String path  = request.getContextPath();
String flag =  request.getParameter("flag");
if(flag == null){
	flag = "0";
	session.setAttribute("flag",flag);	
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>�̻����˹���ϵͳ</title>
<!-- js �Լ� css ���� -->
<!--common js  -->
 <script src="<spring:url value="/static/js/jquery-1.8.3.js"/>"  type="text/javascript" charset="utf-8"></script>
<link href="<spring:url value="/static/css/index_style.css"/>" rel="stylesheet" type="text/css" />
<script type="text/javascript">
if((self.name =="" || self.name == "menu") && self.name != "menu1"){
	if (top.location != self.location){
	 	top.location=self.location; 
	 }
}else{
	if(self.name == "content-iframe"){
		top.location=self.location;
	}
	
}
//�����쳣��Ϣ����
var arrTips = [
'���ڵ�¼...', //0
'����Ҫ��¼����ܼ�������������', //1
'�������û��˺ţ�', //2
'����������!', //3
'��������֤��!', //4
'��֤���������!', //5
'�˺Ż����벻��ȷ!����������!', //6
'�˺Ż����벻��ȷ!����������!', //7
'�˺��Ѿ�������������ϵ����Ա!', //8
'�˺���ע��������ϵ����Ա!', //9
'�쳣��¼!', //10
'�����ʻ��ѹ���Ч��!', //11
'������볬��30��δ�޸ģ��Ѿ���������', //12
'�Բ�������������ݸ�ʽ���Ϸ���', //13
'', //14
'�Բ����������������Σ��Ѿ���������', //15
'�Բ��������̻���Ϣδ�ҵ���', //16
'�Բ������̻��ĺ�ͬ�ѵ��ڣ�' //17
];

//���ص�¼��ʾ��Ϣ
var loadTip = function() {
  $('#userCode').focus();
};

//�Ƴ���ʾdiv��class name
var removePromptClass = function(){
	//Ĭ���Ƴ�������ʾdiv��class
	$('#prompt').removeClass('correctmsg');
	$('#prompt').removeClass('loginmsg');
	$('#prompt').removeClass('errormsg');
}

var login = function(){
 
	removePromptClass();

	$('#loginBtn').attr("disabled",true);
	$('#prompt').addClass('correctmsg loginmsg');
	$('#prompt').show();
	$('#prompt').html('���ڵ�¼����ȴ�...');
				
	//form ajax�ύ��֤
	$('#loginForm').action = './login';
	
	$.post("./login",$('#loginForm').serialize(),function(respData){
		var ret = respData.replace(/^\s+|\s+$/g, "");
		//alert(ret);
		$('#loginForm').attr("disabled",false);
		$('#loginBtn').attr("disabled",false);
		
		removePromptClass();
		
		if(!jQuery.isNumeric(ret)){
			$('#prompt').addClass('errormsg loginmsg');
			$('#prompt').show();
			$('#prompt').html(arrTips[10]);
			return false;
		}
		if(ret == '0'){
			$('loginForm').attr("disabled",true);
			$('prompt').addClass('correctmsg loginmsg');
			$('prompt').show();
			$('prompt').html(arrTips[ret]);
			window.location='./menu';
		}else if(ret == '14' ){
			window.location='./common/mobileSend.jsp';
		}else if(ret == '18' ){
			$('loginForm').attr("disabled",true);
			$('prompt').addClass('correctmsg loginmsg');
			$('prompt').show();
			$('prompt').html(arrTips[0]); 
			window.location='./shoparea/index.jsp';
		}else{
			$('prompt').addClass('errormsg loginmsg');
			$('prompt').show();
			$('prompt').html(arrTips[ret]);					
		}
	});

}

//body onload�¼�����
$(function(){
	/**
	��ʼ������
	*/
	$('#imgCode').attr("title","������»����֤��!");
	$('#imgCode').attr("src","vdimg.servlet");

	/**
	��ʼ������
	*/
	loadTip();
	
	/**
	��ʼ���¼�
	*/
	//�����֤��ͼƬ
	$("#imgCode").bind("click", function(){
		$(this).attr("src", "vdimg.servlet?r=" + Math.random());
	});
	
	
	
	//��ʼ���س�����
	$(window).keydown(function(event){
		if(event.keyCode==13 
				&& event.srcElement.type!='button' 
				&& event.srcElement.type!='submit' 
				&& event.srcElement.type!='reset' 
				&& event.srcElement.type!='textarea' 
				&& event.srcElement.type!=''){
				//�ûس���¼
				login();
			}
	});
	//��������
	$("#forgetPwdBtn").bind("click", function(){
		window.location="./common/forget_pwd.jsp";
	});
	
});  

</script>
</head>

<body>
<form action="./login_control.jsp" method="post" id="loginForm" name="loginForm" >
<input type="hidden" name="method" value="login" />
<input type="hidden" name="curent" value="" />
<input type="hidden" name="nowtime" value="" />

<div id="midmain">
	<div id="top"></div>
	<div id="mainbox">
		<div class="leftpic"></div>
			<div class="rightlog">
				
				   	<div id="alertDiv" class="alertDiv">
				   	   <div id="prompt" style="display:none" class="errormsg loginmsg"><p></p></div>
				   	</div>
			   	 
			   
				<div class="alignmid">		   	
					<br/>	
					<table width="100%" border="0" cellspacing="6" cellpadding="0">
						<tr>
					    	<td width="28%"><div align="center" class="fontwhite">�û���</div></td>
					    	<td width="72%">
					    		<input type="text" name="userCode" class="txt" tabindex="1" id="userCode" value="system" maxlength="10" />
					    	</td>
					  	</tr>
					  	<tr>
					    	<td><div align="center" class="fontwhite">��&nbsp;&nbsp;&nbsp;��</div></td>
					    	<td>
					    		<input type="password" name="userPwd" class="txt" tabindex="2" id="userPwd"  value="abc123!@" maxlength="10" />
					    	</td>
					  	</tr>
					  	<tr>
					    	<td><div align="center" class="fontwhite">��֤��</div></td>
					    	<td>
					    		<input type="text" name="verfyCode" class="txt" maxlength="4" tabindex="2" AUTOCOMPLETE="off" id="verfyCode" value="" style="margin-right:5px;width:66px;" />
					      		<!-- <img style="cursor: hand;" width="58" id="imgCode" height="21" /> -->
					      		<img style="cursor: hand;"  width="58" height="21" id="imgCode"/>
					    	</td>
					  	</tr>
					  	<tr>
					  		<td>&nbsp;</td>
					  		<td><font color="white">���ͼƬ���»�ȡ��֤�룡</font></td>
					  	</tr>
					  	<tr>
					    	<td><div align="right"></div></td>
					    	<td height="50"><input name="loginBtn" id="loginBtn" type="button" class="btn_bg2" value="��¼" onclick="login();" />
					      		<input type="button" name="forgetPwdBtn" id="forgetPwdBtn" value="��������" class="btn_bg2" title="�벦��ͷ��绰400******��ȡ������" /></td>
					  	</tr>
					  	
					</table>
				 </div>
			</div>
		</div>
		<div id="logfoot">��������ʮ�����ּ������޹�˾ ƽ̨����֧��</div>
	</div>
</form>
</body>
</html>