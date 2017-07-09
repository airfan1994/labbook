<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cn">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>网研院会议室预定系统</title>
		<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="https://api.map.baidu.com/api?v=2.0&ak=GQIfBgSoxpM2YEXp8twKBn7Iq2tnM8WP&s=1"></script> 
	</head>
	<body>
	
	<nav class="navbar navbar-default">
		  <div class="container-fluid">
			<div class="navbar-header">
			  <a class="navbar-brand" href="#">网研院会议室预定系统</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			  <ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/labbook/index.action">预定房间 <span class="sr-only">(current)</span></a></li>
				<li class="active"><a href="${pageContext.request.contextPath}/user/list.action">管理用户</a></li>
				<li><a href="#">操作日志</a></li>
			  </ul>
			  
			  <ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/user/chnpwd.action">修改密码</a></li>
				<li><a href="${pageContext.request.contextPath}/user/logout.action">登出</a></li>
			  </ul>
			</div>
		  </div>
		</nav>
	
	<div class="container">
		<div class="row" style="border-style: inset;margin:auto;padding:0.5cm">
			    <form action="insert.action" method="post">
			    	<table class="table table=bordered">
			    		<caption style="text-align:center;color:black;font-weight:bold;font-size:30px">添加用户</caption>
			    		<tbody><tr>
			    			<th>用户名</th>
				    		<th>密码</th>
				    		<th>学院</th>
				    		<th>姓名</th>
				    		<th>角色</th>
				    		<th></th>
			    		</tr>
				    	<tr>
			   				<td><input type="text" name="username"></td>
			   				<td><input type="password" name="pwd"></td>
			   				<td><input type="text" value="8888" name="school"></td>
			   				<td><input type="text" name="nickname"></td>
			   				<td><input type="radio" value="0" checked="checked" name="role">普通用户
			   				<input type="radio" value="1" name="role">管理员</td>
			   				<td><input type="submit" value="添加" class="btn btn-primary"></td>
			   			</tr>
		   			</tbody></table>
		   		</form>
		 </div> 
	

		<div class="row" style="border-style: inset;margin:auto;padding:0.5cm">
		 <table class="table table-bordered">
				    	<caption style="text-align:center;color:black;font-weight:bold;font-size:30px">用户列表</caption>
				    	<tbody><tr>
				    		<th>uid</th>
				    		<th>姓名</th>
				    		<th>单位</th>
				    		<th>角色</th>
				    		<th></th>
				    	</tr>
				    	<c:if test="${empty requestScope.users }">
			<font color="red">没有相应信息！</font>
		</c:if>
		<c:if test="${!(empty requestScope.users)}">
	
				<c:forEach items="${requestScope.users }" var="user" varStatus="s">
					<tr>
						<td>${user.id}</td>
						<td>${user.nickname }</td>
						<td>${user.school}</td>
						<td>
						
						<c:if test="${user.role gt 0}">
							管理员
						</c:if>
						<c:if test="${user.role le 0}">
							用户
						</c:if>
						</td>
						<td><a onclick="submit"
							href="${pageContext.request.contextPath}/user/${user.id}/delete.action"><font
								color="blue">delete</font></a></td>
					</tr>
				</c:forEach>
		</c:if>
			</tbody>
		</table>
	</div>
</div>
	
	
	
	
	
</body>
</html>