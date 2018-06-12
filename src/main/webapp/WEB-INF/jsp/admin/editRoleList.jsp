<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/styles/update.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询角色列表</title>
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.js"></script>
<script type="text/javascript">
 function queryRole(){
	//提交form
	document.userForm.action="${pageContext.request.contextPath }/role/selectRole";
	document.userForm.method="get";
	document.userForm.submit();
} 
  jQuery(document).ready(function($) {
		$('.theme-login').click(function(){
			$('.theme-popover-mask').fadeIn(100);
			$('.theme-popover').slideDown(200);
		})
		$('.theme-poptit .close').click(function(){
			$('.theme-popover-mask').fadeOut(100);
			$('.theme-popover').slideUp(200);
		})

	}) 
</script>
</head>
<body> 
<form name="userForm" action="${pageContext.request.contextPath }/items/queryItems.action" method="post">
<div class="panel panel-warning addDiv">
<div class="panel-heading">查询条件：权限名</div>
	<table class="editTable">
		<tr>
		<td>
			<input class="form-control" id="RoleName" name="RoleName" type="text">
		</td>
		<td>
			<input class="btn btn-primary" type="button" value="查询" onclick="javascript:queryRole();"/>
		</td>
		</tr>
		<tr>
			<td align="center">
				<a class="btn btn-primary btn-large theme-login" href="javascript:;">添加角色</a>
				<input class="btn btn-danger" type="button" value="批量删除"  onclick="deleteUsers()"/>
			</td>
		</tr>
	</table>
</div>



<div class="listDataTableDiv">
<h1 class="label label-info" >角色列表：</h1>
<br>
<br>
<table class="table table-striped table-bordered table-hover  table-condensed">
<tr class="success">
	<td>*</td>
	<td>权限名</td>
	<td>是否可用</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
	<input type="hidden" id="roleid${status.index}" name="role_id" value="${item.id }"/>
	<td><input type="checkbox" id="id" name="id" value="${item.id }"/></td>
	<td><input class="form-control" id="name${status.index}" name="name" value="${item.name }"/></td>
	<td>
		<c:if test="${item.available == 0}">否</c:if>
		<c:if test="${item.available == 1}">是</c:if>
	</td>
	<td>
		<%-- <c:forEach items="${permission}" var="par">
			<a href=javascript:addTab('${par.name }','${baseurl }/${par.url }')>${par.name }</a>
		</c:forEach> --%>
		<button class="btn btn-success" type="button" onclick="updateRole(${status.index})">修改</button>
		<button class="btn btn-warning" type="button" onclick="deleteRole(${item.id})">删除</button>
		<a class="btn btn-primary" type="button" href="${pageContext.request.contextPath }/RolePermission/selectRolePermission?roleId=${item.id}">查看权限</a>
	</td>
	
</tr>
</c:forEach>
</table>

</div>

</form>

  <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp" %>
    </div>

 <div class="theme-buy">
<!-- <a class="btn btn-primary btn-large theme-login" href="javascript:;">点击查看效果</a> -->
</div>
<div class="theme-popover">
     <div class="theme-poptit">
          <a href="javascript:;" title="关闭" class="close">×</a>
          <h3>添加角色</h3>
     </div>
     <div class="theme-popbod dform">
           <form class="theme-signin" name="loginform" action="" method="post">
                <ol>
                     <li><h4>请输入角色信息</h4></li>
                     <li><strong>权限名：</strong><input class="ipt" type="text" id="roleName" name="roleName"  size="20" /></li>
                     <li><strong>是否可用：</strong>
                     	<input  type="radio" id="roleAvailable" name="roleAvailable" value="1" checked="checked"/>是
                     	<input  type="radio" id="roleAvailable" name="roleAvailable" value="0" />否
                     	<!-- <input class="ipt" type="radio" id="roleAvailable" name="roleAvailable" value="0" /> -->
                     </li>
                     <li><input class="btn btn-primary" type="button" onclick="insertRole()" value=" 提交" /></li>
                </ol>
           </form>
     </div>
</div>
<div class="theme-popover-mask"></div>
</body>
<script type="text/javascript">
function insertRole(){
	var roleName = $("#roleName").val();
	var roleAvailable = $("#roleAvailable").val();
	$.post("${pageContext.request.contextPath }/role/insertRole",
			{ name:roleName,available:roleAvailable},
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
function updateRole(index){
	 var name = $("#name"+index).val();
	var id = $("#roleid"+index).val();
	$.post("${pageContext.request.contextPath }/role/updateRole",
			{ id:id,name:name},
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
function deleteRole(id){
	//var id = $("#id").val();
	$.post("${pageContext.request.contextPath }/role/deleteRole",
			{ id:id},
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
function deleteUsers() {
	var checkBoxArray=[];
	 $("input[name='id']:checked").each(function () { 
         checkBoxArray.push(this.value) 
     }); 
  $.ajax({ 
         type : 'post', 
         url : '${pageContext.request.contextPath }/role/deleteBatch', 
         traditional : true,//注意，必须要有个设置否则传递数组报400错误。默认为false深度序列化，在此改为true 
         data : { 
             id : checkBoxArray 
         }, 
         success : function(data) {
        	 if(data.isSuccess == true){
			    	alert(data.message);
			    	window.location.reload();
			    }else{
			    	alert(data.message);
			    }
         }   
     });  

}
</script>

</html>