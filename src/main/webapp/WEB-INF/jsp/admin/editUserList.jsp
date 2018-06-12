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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询用户列表</title>
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.js"></script>
<script type="text/javascript">
 function queryUser(){
	//提交form
	document.userForm.action="${pageContext.request.contextPath }/user/selectUser";
	document.userForm.method="get";
	document.userForm.submit();
} 
</script>
</head>
<body> 
<form name="userForm" action="${pageContext.request.contextPath }/items/queryItems.action" method="post">
	<div class="panel panel-warning addDiv">
	<div class="panel-heading">查询条件：用户账号</div>
		<table class="editTable" >
		<tr>
			<td>
				<input class="form-control" id="usercode" name="usercode" type="text">		
			</td>
			<td>
				<button class="btn btn-primary" type="button" onclick="javascript:queryUser();">查询</button>
			</td>
			<td>
				<button class="btn btn-danger" type="button" onclick="deleteUsers()">批量删除</button>
			</td>
		</tr>
		</table>
	</div>
<div class="listDataTableDiv">
<h1 class="label label-info" >用户列表：</h1>
<br>
<br>
<table class="table table-striped table-bordered table-hover  table-condensed">
<tr class="success">
	<td>*</td>
	<td>用户账号</td>
	<td>用户姓名</td>
	<td>盐</td>
	<td>账号是否锁定</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
	 <input type="hidden" name="userid${status.index}" id="userid${status.index}" value="${item.id }"/>
	<td><input type="checkbox" id="id" name="id" value="${item.id }"/></td>
	<td>${item.usercode }</td>
	<td><input class="form-control" id="username${status.index}" name="username" value="${item.username }"/></td>
	<td>${item.salt }</td>
	<td>
		<c:if test="${item.locked == 0}">否</c:if>
		<c:if test="${item.locked == 1}">是</c:if>
	</td>
	<td>
		<%-- <c:forEach items="${permission}" var="par">
			<a href=javascript:addTab('${par.name }','${baseurl }/${par.url }')>${par.name }</a>
		</c:forEach> --%>
		<button class="btn btn-success" type="button" onclick="updateUser(${status.index})">修改 </button>
		<button class="btn btn-warning" type="button" onclick="deleteUser(${item.id})">删除</button>
		<button class="btn btn-info" type="button" onclick="">详细信息</button>
		<a class="btn btn-primary" type="button" href="${pageContext.request.contextPath }/UserRoler/selectUserRole?userId=${item.id}">查看角色</a>
	</td>
	
</tr>
</c:forEach>


</table>
</div>
</form>

  <div class="pageDiv">
         <%@include file="../include/admin/adminPage.jsp" %> 
    </div>
</body>
<script type="text/javascript">
function skipPage(index){
	var id = $("#userid"+index).val();
	$.post("${pageContext.request.contextPath }/UserRoler/skipPage",
			{ userId:id},
			 function(data){
			  
			  },"json");
}

function updateUser(index){
	 var username = $("#username"+index).val();
	var id = $("#userid"+index).val();
	$.post("${pageContext.request.contextPath }/user/updateUser",
			{ id:id,username:username},
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
function deleteUser(id){
	//var id = $("#id").val();
	$.post("${pageContext.request.contextPath }/user/deleteUser",
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
         url : '${pageContext.request.contextPath }/user/deleteBatch', 
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