<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="inner_title" value="����֧��ͳ��" />
<%@ include file="../../includes/t.jsp"%>

<script type="text/javascript">
	$(function() {
		var chartsZftj = $.parseJSON('${chartsZftj}');
		var chartsSbtj = $.parseJSON('${chartsSbtj}');

		//Ĭ����Ⱦ��һ��ͼ��
		renderCharts(1, chartsZftj);

		//��ѯ��ť
		$('button[name=btnQuery]').click(function() {
			var frm = document.getElementById("queryForm");
			frm.action = "${ctx}/order/pay";
			frm.submit();
		});

		//֧��ͳ�ư�ť
		$('button[name=btnZftj]').click(function() {
			$(this).siblings().removeClass('btn-primary');
			$(this).addClass('btn-primary');
			renderCharts(1, chartsZftj);
			$('div[name=zftj]').show();
			$('div[name=sbtj]').hide();
		});

		//֧��ʧ��ԭ��ͳ�ư�ť
		$('button[name=btnSbtj]').click(function() {
			$(this).siblings().removeClass('btn-primary');
			$(this).addClass('btn-primary');
			renderChartsPie3D(1, chartsSbtj);
			$('div[name=sbtj]').show();
			$('div[name=zftj]').hide();
		});

		//������ť��֧��ͳ�ƣ�
		$('button[name=btnExcelZftj]').click(function() {
			var frm = document.getElementById("queryForm");
			frm.action = "${ctx}/order/pay/toExcel/zftj";
			frm.submit();
		});

		//ͼ��ť��֧��ͳ�ƣ�
		$('a[name=btnChartZftj]').click(function() {
			var type = $(this).attr('type');
			$(this).siblings().removeClass('btn-primary');
			$(this).addClass('btn-primary');
			renderCharts(type, chartsZftj);
		});

		//������ť��֧��ʧ��ԭ��ͳ�ƣ�
		$('button[name=btnExcelSbtj]').click(function() {
			var frm = document.getElementById("queryForm");
			frm.action = "${ctx}/order/pay/toExcel/sbtj";
			frm.submit();
		});
	});
</script>

<div class="row-fluid">
	<div class="span12">
		<div class="well" style="padding: 0px !important; padding-top: 19px !important;">
			<form id="queryForm" name="queryForm" class="form-horizontal" method="post">
				<div class="control-group group-search" style="margin-left: 0px;">
					<label class="control-label">ѡ�������</label>
					<div class="controls controls-row">
						<select id="areaStr" name="areaStr" style="float: left;">
							<option value="">ȫ��</option>
							<c:forEach var="area" items="${condition.areaList}">
								<option value="${area.areaCode}" <c:if test="${area.areaCode == condition.areaStr}">selected="selected"</c:if>>${area.areaName}</option>
							</c:forEach>
						</select>
					</div>
					<c:set var="dateType" value="${condition.dateType == 0}"></c:set>
					<label class="control-label">ѡ��ʱ�䣺</label>
					<div class="controls controls-row">
						<input type="radio" name="dateType" value="0" <c:if test="${dateType}">checked="checked"</c:if> /> <span>���գ�</span>
						<div id="from" class="input-append date" data-date-format="yyyy-mm-dd" data-provide="datepicker-inline">
							<input id="dateStr" name="dateStr" type="text" value="${condition.dateStr}"> <span class="add-on"> <i class="icon16 i-calendar-4"></i>
							</span>
						</div>
						<br /> <input type="radio" name="dateType" value="1" <c:if test="${!dateType}">checked="checked"</c:if> /> <span>���£�</span> <select id="yearStr" name="yearStr">
							<c:forEach var="year" begin="${condition.startYear}" end="${condition.endYear}" step="1">
								<option value="${year}" <c:if test="${year == condition.yearStr}">selected="selected"</c:if>>${year}</option>
							</c:forEach>
						</select> <span class="form-middle-word">��</span> <select id="monthStr" name="monthStr">
							<c:forEach var="month" begin="${1}" end="${12}" step="1">
								<option value="${month}" <c:if test="${month == condition.monthStr}">selected="selected"</c:if>>
									<c:if test="${month<10}">0${month}</c:if>
									<c:if test="${month>=10}">${month}</c:if>
								</option>
							</c:forEach>
						</select> <span class="form-middle-word">��</span>
					</div>
					<label class="control-label" for="payTypeStr">֧����ʽ��</label>
					<div class="controls controls-row">
						<select id="payTypeStr" name="payTypeStr">
							<option value="">��ѡ��</option>
							<c:if test="${not empty payTypes}">
								<c:forEach var="pt" items="${payTypes}">
									<option value="${pt.code}" <c:if test="${pt.code eq condition.payTypeStr}">selected</c:if>>${pt.name}</option>
								</c:forEach>
							</c:if>
						</select>
					</div>
				</div>
				<div class="control-group group-search">
					<label class="control-label"></label>
					<div class="controls controls-row">
						<button name="btnQuery" class="btn btn-primary" type="button">
							<i class="icon16 i-search"></i> ��ѯ
						</button>
					</div>
				</div>
			</form>
		</div>
		<div style="float: left; width: 300px;">
			<div class="control-group group-search">
				<button name="btnZftj" class="btn btn-primary">֧��ͳ��</button>
				<button name="btnSbtj" class="btn">֧��ʧ��ԭ��ͳ��</button>
			</div>
		</div>
		<div name="zftj">
			<div style="text-align: right; margin: 5px 0px">
				<button name="btnExcelZftj" class="btn">������EXCEL�ļ�</button>
			</div>
			<table class="table table-bordered table-hover table-striped">
				<c:forEach var="data" items="${datasZftj}" varStatus="status">
					<c:if test="${status.index == 0}">
						<thead>
							<tr>
								<c:forEach var="item" items="${data}">
									<th>${item}</th>
								</c:forEach>
							</tr>
						</thead>
					</c:if>
					<c:if test="${status.index != 0}">
						<tbody>
							<tr>
								<c:forEach var="item" items="${data}">
									<td>${item}</td>
								</c:forEach>
							</tr>
						</tbody>
					</c:if>
				</c:forEach>
			</table>
		</div>
		<div name="sbtj" style="display: none;">
			<div style="text-align: right; margin: 5px 0px">
				<button name="btnExcelSbtj" class="btn">������EXCEL�ļ�</button>
			</div>
			<table class="table table-bordered table-hover table-striped">
				<c:forEach var="data" items="${datasSbtj}" varStatus="status">
					<c:if test="${status.index == 0}">
						<thead>
							<tr>
								<c:forEach var="item" items="${data}">
									<th>${item}</th>
								</c:forEach>
							</tr>
						</thead>
					</c:if>
					<c:if test="${status.index != 0}">
						<tbody>
							<tr>
								<c:forEach var="item" items="${data}">
									<td>${item}</td>
								</c:forEach>
							</tr>
						</tbody>
					</c:if>
				</c:forEach>
			</table>
		</div>
	</div>
</div>

<div name="zftj" style="float: left; width: 200px;">
	<c:forEach var="data" items="${datasZftj}" varStatus="statusI">
		<c:if test="${statusI.index == 0}">
			<c:forEach var="item" items="${data}" varStatus="statusJ">
				<c:if test="${!statusJ.first}">
					<c:if test="${statusJ.index == 1}">
						<a name="btnChartZftj" type="${statusJ.index}" class="btn btn-primary" style="width: 110px; margin-top: 10px; font-weight: bold">${item}</a>
					</c:if>
					<c:if test="${statusJ.index != 1}">
						<a name="btnChartZftj" type="${statusJ.index}" class="btn" style="width: 110px; margin-top: 10px; font-weight: bold">${item}</a>
					</c:if>
				</c:if>
			</c:forEach>
		</c:if>
	</c:forEach>
</div>

<div style="float: left;">
	<div id="divCharts"></div>
</div>

<%@ include file="../../includes/b.jsp"%>