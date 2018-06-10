<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="${pageContext.request.contextPath }/js/jquery/2.0.0/jquery.min.js"></script>
<link href="${pageContext.request.contextPath }/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath }/js/bootstrap/3.3.6/bootstrap.min.js"></script>
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
	<table class="editTable">
	<tr>
		<td>
			旧密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input class="form-control" type="password" id="oldPassword" name="oldPassword"/>
		</td>
	</tr>
	<tr>
		<td>
			新密码：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input class="form-control"  type="password" id="newPassword" name="newPassword"/>
		</td>
	</tr>
	<tr>
		<td>
		确认新密码：<input  class="form-control" type="password" id="secendPassword" name="secendPassword">
		</td>
	</tr>
		</table>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<br>	
		<!-- <input type="button" value="确认" onclick="pudatePassword()"> -->
		<button type="button" class="btn btn-success" onclick="pudatePassword()">确认</button>
	
	</div>
</body>
</html>