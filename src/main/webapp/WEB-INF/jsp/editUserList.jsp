<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询用户列表</title>
<script type="text/javascript">
function editItemsAllSubmit(){
	//提交form
	document.itemsForm.action="${pageContext.request.contextPath }/items/editItemsAllSubmit.action";
	document.itemsForm.submit();
}
function queryItems(){
	//提交form
	document.itemsForm.action="${pageContext.request.contextPath }/items/queryItems.action";
	document.itemsForm.submit();
}
</script>
</head>
<body> 
<form name="itemsForm" action="${pageContext.request.contextPath }/items/queryItems.action" method="post">
查询条件：
<table width="100%" border=1>
<tr>
<td>
用户账号：<input name="itemsCustom.name">
</td>
<td>
<input type="button" value="查询" onclick="javascript:queryItems();"/>
<input type="button" value="批量修改提交" onclick="javascript:editItemsAllSubmit();">
</td>
</tr>
</table>
用户列表：
<table width="100%" border=1>
<tr>
	<td>用户账号</td>
	<td>用户姓名</td>
	<td>盐</td>
	<td>账号是否锁定</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
	<input type="hidden" name="list[${status.index}].id" value="${item.id }"/>
	<td><input name="list[${status.index}].usercode" value="${item.usercode }"/></td>
	<td><input name="list[${status.index}].username" value="${item.username }"/></td>
	<td>${item.salt }</td>
	<td>
		<c:if test="${item.locked == 0}">否</c:if>
		<c:if test="${item.locked == 1}">是</c:if>
	</td>
</tr>
</c:forEach>


</table>
</form>
</body>

</html>