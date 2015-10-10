<%@ page language="java" pageEncoding="GBK"%>
<%@ page import="java.util.Map"%>
<%@ page import="java.util.List"%>
<%@ page import="com.cplatform.dbhelp.page.ListPage"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="�쵼�ձ�" />
<%@ include file="../../includes/t.jsp"%>

<script type="text/javascript">
/**
 * ��ȡ����
 */
function getSingle() {
	var frm = document.getElementById("queryForm");
	frm.action = "${ctx}/businessOverview/leaderdaily/getSingle";
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
					<th colspan=2 width="50%">ָ������</th>
					<td colspan=2 width="50%"></td>
				</tr>
				<tr>
					<th width="25%">�ۼ�ע���û���</th>
					<td width="25%">${dataLJZCYH}</td>
					<th width="25%">�����ֽ�֧��ռ��</th>
					<td width="25%">${dataDYXJZB}</td>
				</tr>
				<tr>
					<th>�ۼƻ�Ա��</th>
					<td>${dataDQHYS}</td>
					<th>�����ۼ��̳Ǳ�����</th>
					<td>${dataSCBZJE['SUM']}</td>
				</tr>
				<tr>
					<th>���»�Ծ�û���</th>
					<td>${dataDYHYYH} </td>
					<th>�վ�PV/UV</th>
					<td></td>
				</tr>
				<tr>
					<th>���¿ͻ��˻�Ծ��</th>
					<td> </td>
					<th>���¿ͻ��˼�����</th>
					<td> </td>
				</tr>
				<tr>
					<th>�����ۼƽ����û���</th>
					<td>${dataDYLJJYYH} </td>
					<th>�ϼ���Ʒ��</th>
					<td>${dataSJSPS} </td>
				</tr>
			</table>
			<br />
			<table class="table table-bordered table-hover table-striped">
				<tr>
					<th rowspan=2>����</th>
					<th colspan=7>���׶�</th>
					<th rowspan=2>��������</th>
					<th colspan=6>֧����ʽ</th>
					<th rowspan=2>�̳Ǳ����Ӷ�</th>
				</tr>
				<tr>
					<th>�����ܶ�</th>
					<th>���̳�</th>
					<th>�ͻ���</th>
					<th>��������</th>
					<th>��Ʊ</th>
					<th>��ӰƱ</th>
					<th>�Ź�</th>
					<th>����ȯ</th>
					<th>�̳Ǳ�</th>
					<th>�ֽ�֧�����</th>
					<th>����Mֵ֧�����</th>
					<th>����֧�����</th>
					<th>����������ȣ�</th>
				</tr>
                <c:forEach var="item" varStatus="status" begin="1" end="${days}">
                <c:set var="dt" value="${selectedYear}${ct:strAppend(selectedMonth,2,'0')}${ct:strAppend(status.index,2,'0')}"></c:set>
                
				<tr>
					<td>${selectedMonth}.${status.index}</td>
					<td>${dataJYZE[dt]}</td>
                    <td>${dataWZBHWAP[dt]}</td>    
                    <td>${dataKHD[dt]}</td>                
                    <td>${dataXXXFPT[dt]}</td>
					<td>${dataCPJYE[dt]}</td>
					<td>${dataDYPJYE[dt]}</td>
					<td>${dataTGJYE[dt]}</td>
					<td>${dataO2OJYE[dt]}</td>
					<td>${dataZDD[dt]}</td>
					<td>${dataZFFS['coin'][dt]}</td>
					<td>${dataZFFS['cash'][dt]}</td>
					<td>${dataZFFS['score'][dt]}</td>
					<td>${dataZFFS['balance'][dt]}</td>
					<td>${dataQTZFJE[dt]}</td>
					<td>${dataSCBZJE[dt]}</td>
				</tr>
				</c:forEach>
				<tr>
					<td>${selectedMonth}��</td>
					<td>${dataJYZE['SUM']}</td>
                    <td>${dataWZBHWAP['SUM']}</td>
                    <td>${dataKHD['SUM']}</td>
                    <td>${dataXXXFPT['SUM']}</td>
					<td>${dataCPJYE['SUM']}</td>
					<td>${dataDYPJYE['SUM']}</td>
					<td>${dataTGJYE['SUM']}</td>
					<td>${dataO2OJYE['SUM']}</td>
					<td>${dataZDD['SUM']}</td>
					<td>${dataZFFS['SUM']['coin']}</td>
					<td>${dataZFFS['SUM']['cash']}</td>
					<td>${dataZFFS['SUM']['score']}</td>
					<td>${dataZFFS['SUM']['balance']}</td>
					<td>${dataQTZFJE['SUM']}</td>
					<td>${dataSCBZJE['SUM']}</td>
				</tr>
			</table>
		</div>
	</div>
	</div>
</form>

<%@ include file="../../includes/b.jsp"%>