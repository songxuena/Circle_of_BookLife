<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="admin/images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>

<!--确认删除-->
<script type="text/javascript">
	function deleteType(id){
		if(confirm("确定要删除吗？")){
			window.location.href="TypeServlet?action=deleteType&id="+id;
		}
	}

</script>

</head>

<body>
	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">
				<div align="center">
					<table id="table2" class="line_table"
						style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
						cellPadding="0">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="8" height="20">
									<span class="left_bt2">类别信息列表</span>
								</td>
							</tr>
							<tr>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">类别ID</span></td>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">类别名称</span></td>
								<td class="line_table" align="center" width="20%"></td>
								<td class="line_table" align="center" width="20%"></td>
							</tr>
							<c:if test="${typelist!=null}">
								<c:forEach items="${typelist}" var="type">
								<tr>
									<td class="line_table" align="center" width="30%"><span
										class="left_txt">${type.id}</span></td>
									<td class="line_table" align="center" width="30%"><span
										class="left_txt">${type.name}</span></td>
									<td class="line_table" align="center" width="20%"><a
										href="${pageContext.request.contextPath}/TypeServlet?action=selectById&id=${type.id}" target="main">修改</a></td>
									<td class="line_table" align="center" width="20%"><a
										href="#" onclick="deleteType(${type.id})" target="main">删除</a></td>
								</tr>
								</c:forEach>
							</c:if>						
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
	<!-- EL表达式取出内容 -->
	${addmsg}
	${updatemsg}
	${deletemsg}
</html>
