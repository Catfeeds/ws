<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="com.cplatform.dbhelp.page.ListPage"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="�ͻ��˽�����Ϣ�ձ�" />
<%@ include file="../../includes/t.jsp"%>

<script type="text/javascript">
/**
 * ��ȡ����
 */
function getSingle() {
	var frm = document.getElementById("queryForm");
	frm.action = "${ctx}/kpireport/khdTrade/getSingle";
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
				<form id="queryForm" name="queryForm" class="form-horizontal" method="post">
				<div class="control-group group-search" style="margin-left: 0px;">
					<label class="control-label">ѡ�������</label>
					<div class="controls controls-row">
						<select id="area_code" name="area_code" style="float: left;">
							<option value="">ȫ��</option>
							<c:forEach var="area" items="${areaList}">
								<option value="${area.areaCode}" <c:if test="${area.areaCode ==  selectedAreacode}">selected="selected"</c:if>>${area.areaName}</option>
							</c:forEach>
						</select>
					</div>
					<c:set var="dateType" value="${condition.dateType == 0}"></c:set>
					<label class="control-label">ѡ��ʱ�䣺</label>
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
					</div>
				</div>
				
			</form>
			</div>
			<div>
			<table class="table table-bordered table-hover table-striped">
				<tr>
					<th rowspan=2>����</th>
				</tr>
				<tr>				
					<th>��½�û�</th>
					<th>���������û�</th>
					<th>�����û�</th>
					<th>�ۼƼ����û���</th>
					<th>���׶�</th>
					<th>�ܶ�����</th>
					<th>�ɽ�����</th>
					<th>δ�ɽ�����</th>
					<th>֧����</th>
					<th>ת����</th>
					<th>����ȯ���׶�</th>
					<th>�Ź����׶�</th>
					<th>ʵ�ｻ�׶�</th>
					<th>��ӰƱ���׶�</th>
					<th>����Ʊ���׶�</th>
					<th>��Ʊ(����)���׶�</th>
					<th>�ֽ�֧����</th>
					<th>�̳Ǳ�֧����</th>
					<th>����֧����</th>
					<th>����֧����</th>
				</tr>
				
				  <c:forEach var="item" varStatus="status" begin="1" end="${days}">
                <c:set var="dt" value="${selectedYear}${ct:strAppend(selectedMonth,2,'0')}${ct:strAppend(status.index,2,'0')}"></c:set>
                
				<tr>
					<td>${selectedMonth}.${status.index}</td>
					<td>${dataReport[dt]['LOG_USER_CNT']}</td>
					<td>${dataReport[dt]['FST_LOG_USER_CNT']}</td>
					<td>${dataReport[dt]['TRNSCT_USER_CNT']}</td>
					<td>${dataReport[dt]['TOT_USER_CNT']}</td>
					<td>${dataReport[dt]['TRNSCT_AMT']}</td>
					<td>${dataReport[dt]['TOT_ORDER_CNT']}</td>
					<td>${dataReport[dt]['SUCCESS_ORDER_CNT']}</td>
					<td>${dataReport[dt]['UNSUCCESS_ORDER_CNT']}</td>
					<td>${dataReport[dt]['ORDER_SUCCS_PECT']}</td>
					<td>${dataReport[dt]['TRNSCT_USER_PECT']}</td>
					<td>${dataReport[dt]['VOUCHER_TRNSCT_AMT']}</td>
					<td>${dataReport[dt]['GROUP_TRNSCT_AMT']}</td>
					<td>${dataReport[dt]['MATRLGOOD_TRNSCT_AMT']}</td>
					<td>${dataReport[dt]['FLM_TKT_AMT']}</td>
					<td>${dataReport[dt]['BUS_TKT_AMT']}</td>
					<td>${dataReport[dt]['LOTT_TKT_AMT']}</td>
					<td>${dataReport[dt]['CASH_AMT']}</td>
					<td>${dataReport[dt]['COIN_AMT']}</td>
					<td>${dataReport[dt]['BALANCE_AMT']}</td>
					<td>${dataReport[dt]['SCORE_AMT']}</td>
				</c:forEach>
				<tr>
					<td>${selectedMonth}�ºϼ�</td>
					<td>${dataReportTotal['LOG_USER_CNT']}</td>
					<td>${dataReportTotal['FST_LOG_USER_CNT']}</td>
					<td>${dataReportTotal['TRNSCT_USER_CNT']}</td>
					<td>${dataReportTotal['TOT_USER_CNT']}</td>
					<td>${dataReportTotal['TRNSCT_AMT']}</td>
					<td>${dataReportTotal['TOT_ORDER_CNT']}</td>
					<td>${dataReportTotal['SUCCESS_ORDER_CNT']}</td>
					<td>${dataReportTotal['UNSUCCESS_ORDER_CNT']}</td>
					<td>${dataReportTotal['ORDER_SUCCS_PECT']}</td>
					<td>${dataReportTotal['TRNSCT_USER_PECT']}</td>
					<td>${dataReportTotal['VOUCHER_TRNSCT_AMT']}</td>
					<td>${dataReportTotal['GROUP_TRNSCT_AMT']}</td>
					<td>${dataReportTotal['MATRLGOOD_TRNSCT_AMT']}</td>
					<td>${dataReportTotal['FLM_TKT_AMT']}</td>
					<td>${dataReportTotal['BUS_TKT_AMT']}</td>
					<td>${dataReportTotal['LOTT_TKT_AMT']}</td>
					<td>${dataReportTotal['CASH_AMT']}</td>
					<td>${dataReportTotal['COIN_AMT']}</td>
					<td>${dataReportTotal['BALANCE_AMT']}</td>
					<td>${dataReportTotal['SCORE_AMT']}</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</form>

<%@ include file="../../includes/b.jsp"%>