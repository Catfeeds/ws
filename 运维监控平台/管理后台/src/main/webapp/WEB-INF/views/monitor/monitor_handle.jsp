<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="�̻�ͳ��" />
<%@ include file="../includes/t.jsp"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 <script type="text/javascript" src="${ctx }/static/js/datepicker/WdatePicker.js" ></script>
<link href="${ctx }/static/js/datepicker/skin/WdatePicker.css" rel="stylesheet" type="text/css" />
<body>
<form id="handleForm" name="handleForm" class="form-horizontal"  method="post">
<c:if test="${!empty monitor}">
		<input type="hidden" name="seqId" value="${monitor.seqId }" />
</c:if>
<table style="width:600px; text-align:left; padding:0; margin:0;" border="1">
	<tr>
		<td width="200px"><label class="control-label" for="itemNameStr" style="margin-top:18px;">ƽ̨���ƣ�</label></td>
		<td>
			<c:if test="${!empty monitor}">
				<c:if test="${monitor.platName=='1' }" >����</c:if>
				<c:if test="${monitor.platName=='2' }" >����</c:if>
				<c:if test="${monitor.platName=='3' }" >����</c:if>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >�澯����</label></td>
		<td>
			<c:if test="${!empty monitor}">
				<c:out value="${monitor.monitorLevel }"></c:out>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >�澯���ͣ�</label></td>
		<td>
			<c:if test="${!empty monitor}">
				<c:if test="${monitor.monitorType=='1' }" >���ݿ�</c:if>
				<c:if test="${monitor.monitorType=='2' }" >ϵͳ</c:if>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >�澯�����ˣ�</label></td>
		<td>
			<SPAN style="color:blue;"><c:out value="${createUser.name }"></c:out></SPAN>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >ָ�������ˣ�</label></td>
		<td>
			<c:if test="${!empty appoint_deal_user}">
			<c:forEach var="dealUser" items="${appoint_deal_user }">
				<SPAN style="color:blue;"><c:out value="${dealUser.name }"></c:out></SPAN>&nbsp;&nbsp;&nbsp;&nbsp;
			</c:forEach>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >�澯���ݣ�</label></td>
		<td>
			<c:if test="${!empty monitor}">
				<c:out value="${monitor.monitor_content }"></c:out>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td ><label class="control-label" for="itemNameStr" style="margin-top:18px;" >�澯ʱ�䣺</label></td>
		<td>
			<c:if test="${!empty monitor}">
				<c:out value="${monitor.monitor_time }"></c:out>
			</c:if>
		</td>
	</tr>
	<tr>	
		<td><label class="control-label" for="itemNameStr" style="margin-top:18px;" >������Ϣ��</label></td>
		<td>
			<textarea rows="5" cols="400" name="deal_content"></textarea>
		</td>
	</tr>
	<tr>	
	<td colspan="2">
			<button name="btnQuery" class="btn btn-primary" style="margin-top:0px;margin-left: 180px" type="button" onclick="addMonitor();">
				<i class="icon16 i-search"></i> ����
			</button>
		</td>
	</tr>
</table>
</form>
<script>
	function addMonitor(){
		var frm = document.getElementById("handleForm");
		frm.action = "${ctx}/monitor/monitorHandle";
		frm.submit();
	}
</script>
</body> 