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
	    <form action="chnpwd.action" method="post">
	    	<table class="table table=bordered">
	    		<caption>修改密码</caption>
	    		<tbody><tr>
	    			<th>id</th>
				    <th>姓名</th>
				    <th>密码</th>
		    		<th></th>
	    		</tr>
	    		
	    			<tr>
	    				<td><input type="hidden" value="${user.id}" name="id">
	    					${user.id}</td>
	    				<td><input type="hidden" value="${user.name}" name="nickname">
	    					${user.name} </td>
	    				<td><input type="password" value="${user.pwd}" name="pwd" id="pwd">
	    				</td>
	    				<td><input type="submit" value="确认修改" class="btn btn-primary"></td>
	    			</tr>
	    		
	    	</tbody></table>
	    </form>
    </div>
	
	
	
	
</body>
</html>