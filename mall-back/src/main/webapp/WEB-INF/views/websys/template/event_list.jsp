<%@ page language="java" pageEncoding="utf-8"%>
<%@ include file="../../includes/importer.jsp"%>
<!doctype html>
<html>
<head>
<ht:head />
<script type="text/javascript">
	$().ready(function() {

		$(".item_view").click(function() {
			var id = $(this).attr("id");
			showDialog("查看模版事件", "view?id=" + id, function(doc) {
			}, {
				"Width" : 400,
				"Height" : 700,
				"ShowMessageRow" : false,
				"ShowButtonRow" : false
			});

		});
	});
</script>

</head>
<body>
	<br />
	<div id="search-menu">
		<ul>
			<ht:menu-btn type="search" />
			<ct:display model="templateEvent_list" btn="add_btn">
			<ht:menu-btn text="添加模版事件" url="/websys/template/event_add" />
			</ct:display>
		</ul>
		<br style="clear: left" />
	</div>
	<div class="queryContainer">
		<form name="queryForm" id="queryForm" action="?" method="get">
			<table>
				<tr>
					<td>模版事件名称：</td>
					<td><input type="text" name="name" value="${param.name}" class="txt" style="width:206px"/>
					</td>
					<td colspan="2">&nbsp; <ct:btn type="search" /></td>
				</tr>

			</table>
		</form>
	</div>
	<div class="container">
		<br />
		<h3>模版列表</h3>
		<div class="mainbox">
			<c:if test="${not empty pageData}">
				<table class="datalist fixwidth">
					<tr>
						<th nowrap="nowrap">模版事件编号</th>
						<th nowrap="nowrap">识别码</th>
						<th nowrap="nowrap">事件名称</th>
						<th nowrap="nowrap">模板（组）名称</th>
						<th nowrap="nowrap">备注</th>
						<th nowrap="nowrap">操作</th>
					</tr>
					<c:forEach items="${pageData.data}" var="snow">
						<tr>
							<td width="50" nowrap="nowrap">${snow.id}</td>
							<td nowrap="nowrap" width="100">${snow.code}</td>
							<td nowrap="nowrap" width="100">${snow.name}</td>
							<td nowrap="nowrap" width="100">${snow.tgName }</td>
							<td nowrap="nowrap" width="100">${snow.memo}</td>
							<td width="100" nowrap="nowrap"><ct:display
									model="templateEvent_list" btn="mod_btn">
									<a href="event_edit?id=${snow.id}">修改</a>
								</ct:display> &nbsp;&nbsp; <ct:display model="templateEvent_list" btn="del_btn">
									<a href="#" onclick="deleteItem('event_del?id=${snow.id}');">删除</a>
								</ct:display></td>
						</tr>
					</c:forEach>
				</table>
				<ht:page pageData="${pageData}" />
			</c:if>
			<c:if test="${empty pageData}">
       	 <div class="note">
            <p class="i">目前没有相关记录!</p>
        </div>
        </c:if>
		</div>
	</div>

</body>
</html>