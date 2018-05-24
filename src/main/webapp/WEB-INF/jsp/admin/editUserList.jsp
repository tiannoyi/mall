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
查询条件：
<table width="100%" border=1>
<tr>
<td>
用户账号：<input class="ipt" id="usercode" name="usercode" type="text">
		<input class="btn btn-primary btn-large theme-login" type="button" value="查询" onclick="javascript:queryUser();"/>
</td>
<td>
<input class="btn btn-primary btn-large theme-login" type="button" value="批量删除" onclick="deleteUsers()">
</td>
</tr>
</table>
用户列表：
<table width="100%" border=1>
<tr>
	<td>*</td>
	<td>用户账号</td>
	<td>用户姓名</td>
	<td>盐</td>
	<td>账号是否锁定</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
	< <input type="hidden" name="userid${status.index}" value="${item.id }"/>
	<td><input type="checkbox" id="id" name="id" value="${item.id }"/></td>
	<td>${item.usercode }</td>
	<td><input id="username${status.index}" name="username" value="${item.username }"/></td>
	<td>${item.salt }</td>
	<td>
		<c:if test="${item.locked == 0}">否</c:if>
		<c:if test="${item.locked == 1}">是</c:if>
	</td>
	<td>
		<%-- <c:forEach items="${permission}" var="par">
			<a href=javascript:addTab('${par.name }','${baseurl }/${par.url }')>${par.name }</a>
		</c:forEach> --%>
		<input class="btn btn-primary btn-large theme-login" type="button" value="修改" onclick="updateUser(${status.index})"/>
		<input class="btn btn-primary btn-large theme-login" type="button" value="删除" onclick="deleteUser(${item.id})"/>
		<input class="btn btn-primary btn-large theme-login" type="button" value="详细信息" onclick=""/>
	</td>
	
</tr>
</c:forEach>


</table>
</form>
</body>
<script type="text/javascript">
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
	var uid = id;
	alert(uid);
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