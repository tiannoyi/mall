<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/styles/update.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.0.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询权限列表</title>
<script language="JavaScript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.js"></script>
<script type="text/javascript">
 function queryPermission(){
	//提交form
	document.userForm.action="${pageContext.request.contextPath }/permission/selectPermission";
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
查询条件：
<table width="100%" border=1>
<tr>
<td>
资源名称：<input class="ipt" id="permissionName" name="permissionName" type="text">
		<input class="btn btn-primary btn-large theme-login" type="button" value="查询" onclick="javascript:queryPermission();"/>
</td>
<td>
	<a class="btn btn-primary btn-large theme-login" href="javascript:;">添加权限</a>
</td>
<td>
<input class="btn btn-primary btn-large theme-login" type="button" value="批量删除" onclick="deletePermissions()">
</td>
</tr>
</table>
权限列表：
<table width="100%" border=1>
<tr>
	<td>*</td>
	<td>资源名称</td>
	<td>资源类型</td>
	<td>访问url地址</td>
	<td>权限代码字符串</td>
	<td>父节点id</td>
	<td>父节点id列表串</td>
	<td>排序号</td>
	<td>是否可用</td>
	<td>操作</td>
</tr>
<c:forEach items="${list}" var="item" varStatus="status">
<tr>
 <input type="hidden" id="permissionid${status.index}" name="permissionid${status.index}" value="${item.id }"/>
	<td><input type="checkbox" id="id" name="id" value="${item.id }"/></td>
	<td><input id="name${status.index}" name="name" value="${item.name }"/></td>
	<td><input id="type${status.index}" name="type" value="${item.type }"/></td>
	<td><input id="url${status.index}" name="url" value="${item.url}"/></td>
	<td><input id="percode${status.index}" name="percode" value="${item.percode }"/></td>
	<td><input id="parentid${status.index}" name="parentid" value="${item.parentid }"/></td>
	<td><input id="parentids${status.index}" name="parentids" value="${item.parentids }"/></td>
	<td><input id="sortstring${status.index}" name="sortstring" value="${item.sortstring }"/></td>
	<td>
		<c:if test="${item.available == 0}">否</c:if>
		<c:if test="${item.available == 1}">是</c:if>
	</td>
	<td>
		<%-- <c:forEach items="${permission}" var="par">
			<a href=javascript:addTab('${par.name }','${baseurl }/${par.url }')>${par.name }</a>
		</c:forEach> --%>
		<input class="btn btn-primary btn-large theme-login" type="button" value="修改" onclick="updatePermission(${status.index})"/>
		<input class="btn btn-primary btn-large theme-login" type="button" value="删除" onclick="deletePermission(${item.id})"/>
	</td>
	
</tr>
</c:forEach>


</table>
</form>
    <div class="pageDiv">
        <%@include file="../include/admin/adminPage.jsp" %>
    </div>

<div class="theme-popover">
     <div class="theme-poptit">
          <a href="javascript:;" title="关闭" class="close">×</a>
          <h3>添加角色</h3>
     </div>
     <div class="theme-popbod dform">
           <form class="theme-signin" name="loginform" action="" method="post">

                   		<h4>请输入角色信息</h4>
                    <strong>资源名称:</strong><input class="ipt" type="text" id="perName" name="perName"  size="20" /><br/>
                   <strong>资源类型:</strong><input class="ipt" type="text" id="perType" name="perType"  size="20" /><br/>
                    <strong>访问url地址:</strong><input class="ipt" type="text" id="perUrl" name="perUrl"  size="20" /><br/>
                     <strong>权限代码字符串:</strong><input class="ipt" type="text" id="perPercode" name="perPercode"  size="20" /><br/>
                     <strong>父节点id:</strong><input class="ipt" type="text" id="perParentid" name="perParentid"  size="20" /><br/>
                     <strong>父节点id列表串:</strong><input class="ipt" type="text" id="perParentids" name="perParentids"  size="20" /><br/>
                     <strong>排序号:</strong><input class="ipt" type="text" id="perSortstring" name="perSortstring"  size="20" /><br/>
                    <strong>是否可用：</strong>
                     	<input  type="radio" id="roleAvailable" name="roleAvailable" value="1" checked="checked"/>是
                     	<input  type="radio" id="roleAvailable" name="roleAvailable" value="0" />否
                  
                    <input class="btn btn-primary" type="button" onclick="insertPermission()" value=" 提交" />
           </form>
     </div>
</div>
</body>
<script type="text/javascript">
function insertPermission(){
	var perName = $("#perName").val();
	var perType = $("#perType").val();
	var perUrl = $("#perUrl").val();
	var perPercode = $("#perPercode").val();
	var perParentid = $("#perParentid").val();
	var perParentids = $("#perParentids").val();
	var perSortstring = $("#perSortstring").val();
	var perAvailable = $("#perAvailable").val();
	$.post("${pageContext.request.contextPath }/permission/insertPermission",
			{ 	name:perName,
				type:perType,
				url:perUrl,
				percode:perPercode,
				parentid:perParentid,
				parentids:perParentids,
				sortstring:perSortstring,
				available:roleAvailable},
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
function updatePermission(index){
	var id = $("#permissionid"+index).val();
	var name = $("#name"+index).val();
	var type = $("#type"+index).val();
	var url = $("#url"+index).val();
	var percode = $("#percode"+index).val();
	var parentid = $("#parentid"+index).val();
	var parentids = $("#parentids"+index).val();
	var sortstring = $("#sortstring"+index).val();
	$.post("${pageContext.request.contextPath }/permission/updatePermission",
			{ 	id:id,
				name:name,
				type:type,
				url:url,
				percode:percode,
				parentid:parentid,
				parentids:parentids,
				sortstring:sortstring
			},
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
function deletePermission(id){
	//var id = $("#id").val();
	$.post("${pageContext.request.contextPath }/permission/deletePermission",
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
function deletePermissions() {
	var checkBoxArray=[];
	 $("input[name='id']:checked").each(function () { 
         checkBoxArray.push(this.value) 
     }); 
  $.ajax({ 
         type : 'post', 
         url : '${pageContext.request.contextPath }/permission/deleteBatch', 
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