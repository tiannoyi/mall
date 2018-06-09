<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>修改密码界面</title>
<style type="text/css">
	.div1{
		margin-left: 150px;
		margin-top: 50px;
	}
</style>
<script type="text/javascript">
function pudatePassword() {
	var id = $("#userid").val();
	var oldPassword = $("#oldPassword").val();
	var newPassword = $("#newPassword").val();
	var secendPassword = $("#secendPassword").val();
	$.post("${pageContext.request.contextPath }/user/updatePassword",
			{ 	id:id,
				oldPassword:oldPassword,
				newPassword:newPassword,
				secendPassword:secendPassword
				},
			 function(data){
			    if(data.isSuccess == true){
			    	alert(data.message);
			    	//window.location.reload();
			    	location.href = '${pageContext.request.contextPath }/logout';
			    }else{
			    	alert(data.message);
			    }
			  },"json");	
}
</script>
</head>
<body>
	<div class="div1">
	<input type="hidden" id="userid" name="userid" value="${userid}">
	<h1>修改密码</h1>
	<h4>旧密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="password" id="oldPassword" name="oldPassword"/></h4>
	<h4>新密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="password" id="newPassword" name="newPassword"/></h4>
	<h4>确认新密码：<input type="password" id="secendPassword" name="secendPassword"></h4>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	<input type="button" value="确认" onclick="pudatePassword()">
	</div>
</body>
</html>