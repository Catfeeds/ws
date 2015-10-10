<%@ page language="java" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(function() {
		$('a[name=analysis]').click(function() {
			var type = $(this).attr('type');
			$(this).siblings().removeClass('btn-primary');
			$(this).addClass('btn-primary');
			$('div[name=analysis]').hide();
			$('#analysis_'+type).show();
		});
	});
</script>
<div class="well"
	style="padding: 0px !important; padding-top: 19px !important;">
	<form class="form-horizontal" action="?" name="queryForm"
		id="queryForm" method="get">
		<div class="control-group group-search">
			<label class="control-label" for="queryStartTime"> ��ѯ���ڣ�</label>
			<div class="controls controls-row">
				<select id="year" name="year">
				<!-- 	<option value="">��ѡ�����</option> -->
					<c:forEach var="year" begin="${beginYear}" end="${endYear }" step="1">
						<option value="${year}"
							<c:if test="${year == year_search }">selected</c:if>>${year}</option>
					</c:forEach>
				</select> <span class="form-middle-word">��</span> <select id="month"
					name="month">
					<!-- <option value="">��ѡ���·�</option> -->
					<c:forEach var="month" begin="1" end="12" step="1">
						<option value='<c:choose><c:when test="${month < 10 }">0${month }</c:when><c:otherwise>${month }</c:otherwise></c:choose>'
							<c:if test="${month == month_search }">selected</c:if>>${month}</option>
					</c:forEach>
				</select> <span class="form-middle-word">��</span>
				<button class="btn btn-primary" type="submit">
					<i class="icon16 i-search"></i> ɸѡ
				</button>
				<span>��ǰ��ʾ��${year_search } �� ${month_search } ��</span>
			</div>
		</div>
	</form>
	<form id="exportForm" name="exportForm" method="post" action="${ctx}/businessOverview/analysis/export">
		<input type="hidden" value="" name="year" id="export_year" />
		<input type="hidden" value="" name="month" id="export_month" />
		<input type="hidden" value="" name="type" id="export_type" />
	</form>
</div>

<div class="page-header">
	<h4></h4>
</div>
<div>
	<a href="javascript:;" style="height: 30px;" name="analysis" class="btn btn-primary" type="ywsr">ҵ������</a>
	<a href="javascript:;" style="margin-left: 15px;height: 30px;" name="analysis" class="btn" type="dzhy">���ƻ�Ա��</a>
	<a href="javascript:;" style="margin-left: 15px;height: 30px;" name="analysis" class="btn" type="jyyh">�½����û���</a>
	<a href="javascript:;" style="margin-left: 15px;height: 30px;" name="analysis" class="btn" type="khd">�ͻ��˰�װ��</a>
	<a href="javascript:;" style="margin-left: 15px;height: 30px;" name="analysis" class="btn" type="dsjy_jsuss">���̽��׶�</a>
	<a href="javascript:;" style="margin-left: 15px;height: 30px;" name="analysis" class="btn" type="hyyh">�»�Ծ�û���</a>
</div>