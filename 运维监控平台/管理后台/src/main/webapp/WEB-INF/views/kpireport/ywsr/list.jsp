<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="com.cplatform.dbhelp.page.ListPage"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="ҵ������" />
<%@ include file="../../includes/t.jsp"%>

<script type="text/javascript">
/**
 * ��ȡ����
 */
function getSingle() {
	var frm = document.getElementById("queryForm");
	frm.action = "${ctx}/kpireport/ywsr/getSingle";
	frm.submit();
}
</script>
<style type="text/css">
.table td{text-align:right;}
</style>
<form class="form-horizontal" action="?" name="queryForm" id="queryForm"
	method="post">
	<div class="row-fluid">
		<div class="span12">
			<div class="well"
				style="padding: 0px !important; padding-top: 19px !important;">
				<div class="control-group group-search" style="margin-left: 0px;">
					<label class="control-label" for="queryStartTime">
						��ѯʱ�䣺
					</label>
					<div class="controls controls-row">
						<select id="year" name="year">
							<!--                                 <option value="">��ѡ�����</option> -->
							<c:forEach var="year" begin="${beginYear}" end="${endYear}"
								step="1">
								<option value="${year}"
									<c:if test="${year == selectedYear}">selected</c:if>>
									${year}
								</option>
							</c:forEach>
						</select>
						<span class="form-middle-word">��</span>
						<select id="month" name="month">
							<!--                                 <option value="">��ѡ���·�</option> -->
							<c:forEach var="month" begin="1" end="12" step="1">
								<option
									value='<c:choose><c:when test="${month < 10}">0${month}</c:when><c:otherwise>${month}</c:otherwise></c:choose>'
									<c:if test="${month == selectedMonth}">selected</c:if>>
									${month}
								</option>
							</c:forEach>
						</select>
						<span class="form-middle-word">��</span>

						<c:if test="${queryType == 'single'}">
							<button class="btn btn-primary" onclick="getSingle();"><i class="icon16 i-search"></i> ɸѡ</button>
							<span>��ǰ��ʾ��${selectedYear } �� ${selectedMonth } ��</span>
						</c:if>
						<c:if test="${queryType != 'single'}">
							<button class="btn" onclick="getSingle();"><i class="icon16 i-search"></i> ɸѡ</button>
						</c:if>
					</div>
				</div>
			</div>
			<div>
			<table class="table table-bordered table-hover table-striped">
				<tr>
					<th rowspan=2>����</th>
					<th rowspan=2>����</th>
					<th rowspan=2>ҵ��������</th>
					<th colspan=4>ǰ������</th>
					<th colspan=16>��������</th>
				</tr>
				<tr>				
					<th>���˻�Ա����</th>
					<th>��Ʊ���ֲ���Ա����</th>
					<th>��Ӱ���ֲ���Ա����</th>
					<th>����</th>
					<th>����Ӷ��</th>
					<th>����Ӷ��(�ֽ�)</th>
					<th>����Ӷ��(����)</th>
					<th>����Ӷ��(�̳Ǳ�)</th>
					<th>����Ӷ��(����)</th>
					<th>����Ӷ��(Ӫ����ά��)	</th>
					<th>����Ӷ��(����)</th>
					<th>�������</th>
					<th>�������(��վ���)</th>
					<th>�������(���������)</th>
					<th>�������(����)</th>
					<th>�������</th>
					<th>�������(ƽ̨����)</th>
					<th>�������(�ͷ��̻�/��������)</th>
					<th>�������(Ʊ�����)</th>
					<th>�������(����)</th>
					
				</tr>
				
				<c:forEach items="${dataReport}" var="data" varStatus="status">
				<tr>
					<td>${data['CITY_NAME']}</td>
					<td>${data['TOT_INCOM']}</td>
					<td>${data['FW_SM_MEM_INCOM']}</td>
					<td>${data['FW_CP_MEM_INCOM']}</td>
					<td>${data['FW_WY_MEM_INCOM']}</td>
					<td>${data['FW_OTHER']}</td>
					<td>${data['BW_COMMS_INCOM']}</td>
					<td>${data['BW_COMMS_CASH']}</td>
					<td>${data['BW_COMMS_BALANCE']}</td>
					<td>${data['BW_COMMS_COIN']}</td>
					<td>${data['BW_COMMS_SCORE']}</td>
					<td>${data['BW_COMMS_2DCODE']}</td>
					<td>${data['BW_COMMS_OTHER']}</td>
					<td>${data['BW_AD_INCOM']}</td>
					<td>${data['BW_AD_WEB']}</td>
					<td>${data['BW_AD_INTC_SCRN']}</td>
					<td>${data['BW_AD_OTHER']}</td>
					<td>${data['BW_SERV_INCOM']}</td>
					<td>${data['BW_SERV_PLATF']}</td>
					<td>${data['BW_SERV_SECRT']}</td>
					<td>${data['BW_SERV_TCKT']}</td>
					<td>${data['BW_SERV_OTHER']}</td>
				</c:forEach>
				<tr>
					<td>${selectedMonth}�ºϼ�</td>
					<td>${dataReportTotal['TOT_INCOM']}</td>
					<td>${dataReportTotal['FW_SM_MEM_INCOM']}</td>
					<td>${dataReportTotal['FW_CP_MEM_INCOM']}</td>
					<td>${dataReportTotal['FW_WY_MEM_INCOM']}</td>
					<td>${dataReportTotal['FW_OTHER']}</td>
					<td>${dataReportTotal['BW_COMMS_INCOM']}</td>
					<td>${dataReportTotal['BW_COMMS_CASH']}</td>
					<td>${dataReportTotal['BW_COMMS_BALANCE']}</td>
					<td>${dataReportTotal['BW_COMMS_COIN']}</td>
					<td>${dataReportTotal['BW_COMMS_SCORE']}</td>
					<td>${dataReportTotal['BW_COMMS_2DCODE']}</td>
					<td>${dataReportTotal['BW_COMMS_OTHER']}</td>
					<td>${dataReportTotal['BW_AD_INCOM']}</td>
					<td>${dataReportTotal['BW_AD_WEB']}</td>
					<td>${dataReportTotal['BW_AD_INTC_SCRN']}</td>
					<td>${dataReportTotal['BW_AD_OTHER']}</td>
					<td>${dataReportTotal['BW_SERV_INCOM']}</td>
					<td>${dataReportTotal['BW_SERV_PLATF']}</td>
					<td>${dataReportTotal['BW_SERV_SECRT']}</td>
					<td>${dataReportTotal['BW_SERV_TCKT']}</td>
					<td>${dataReportTotal['BW_SERV_OTHER']}</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</form>

<%@ include file="../../includes/b.jsp"%>