<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String backURL = request.getParameter("backURL")==null?"http://www.12580life.com":request.getParameter("backURL");
backURL = backURL.indexOf("pro_sso_sync")!=-1?"http://www.12580life.com":backURL;
String mode = request.getParameter("mode");
String tip = "ҳ����ת�У����Ժ�";
if("logout".equals(mode)){
	tip = "�û���ע����������Ҫ�����µ�½";
}else if("change".equals(mode)){
	tip = "ҳ����ת�У����Ժ�";
}
pageContext.setAttribute("indexDomain","http://www.12580life.com");
pageContext.setAttribute("mallDomain","http://mall.12580life.com");
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GBK" />
<title>ҳ����ת�У����Ժ�</title>
<meta name="keywords" content="" />
<meta http-equiv="description" content="" />
<style>
body{text-align: center;}
#wait_cont{
	position:absolute;
	margin:-50px 0 0 -110px;
	top:50%;
	left:50%;
}
</style>
<!--  -->
<script>
var proBackUrl="<%=backURL %>";
var mallDomain="${mallDomain}";
</script>
<script src="${indexDomain }/js/jquery.js" type="text/javascript"></script>
<script src="${mallDomain}/js/ssojsonp.js?v=1304231655" type="text/javascript"></script>
</head>
<body>
	<div id="wait_cont" style="color:#9c9c9c;font-size:16px;font-family:����"><b><%=tip %></b><br/><img src="${mallDomain}/login/loading1.gif"/></div>
</body>
</html>