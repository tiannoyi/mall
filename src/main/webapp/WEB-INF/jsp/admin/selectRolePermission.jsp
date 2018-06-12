<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/styles/update.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>角色权限页面</title>
</head>
<body>
	<div class="listDataTableDiv">
	<div class="panel panel-warning addDiv">
	<div class="panel-heading">分配权限</div>
		<table class="editTable" >
		<tr>
			<td>
				<select class="form-control" id="rolePermission" name="rolePermission">
					<c:forEach items="${listPermission}" var="permission" varStatus="status">
						<option value="${permission.id}">${permission.name}</option>
					</c:forEach>	
				</select>
			</td>
			<td>
				<button class="btn btn-primary" type="button" onclick="addPermission()">分配权限</button>
			</td>
		</tr>
		</table>
	</div>
<br>
<br>
<input type="hidden" id="roleId" name="roleId" value="${roleId}"/>
<table class="table table-striped table-bordered table-hover  table-condensed">
<tr class="success">
	
	<td>权限名</td>
	<td>是否可用</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
	  <%-- <input type="hidden" name="Role${status.index}" id="Role${status.index}" value="${item.id }"/> --%>
	<td>${item.name }</td>
	<td>
		<c:if test="${item.available == 0}">否</c:if>
		<c:if test="${item.available == 1}">是</c:if>
	</td>
	<td>
		<button class="btn btn-warning" type="button" onclick="deleteRole(${item.id})">删除</button>
	</td>
	
</tr>
</c:forEach>


</table>
</div>

  <div class="pageDiv">
         <%@include file="../include/admin/adminPage.jsp" %> 
    </div>

</body>
<script type="text/javascript">
	function addPermission() {
		var roleId = $("#roleId").val();
		var permissionId = $("#rolePermission").val();	
		$.post("${pageContext.request.contextPath }/RolePermission/insertPermission",
				{ permissionId:permissionId,roleId:roleId},
				 function(data){
				    if(data.isSuccess == true){
				    	alert(data.message);
				    	window.location.reload();
				    	//$(location).attr('href','user/selectAll');
				    }else{
				    	alert(data.message);
				    }
				  },"json");	
	}
	function deleteRole(id) {
		var roleId = $("#roleId").val();
		$.post("${pageContext.request.contextPath }/RolePermission/deleteRolePermission",
				{permissionId:id,roleId:roleId},
				 function(data){
				    if(data.isSuccess == true){
				    	alert(data.message);
				    	window.location.reload();
				    	//$(location).attr('href','user/selectAll');
				    }else{
				    	alert(data.message);
				    }
				  },"json");	
	}
</script>
</html>