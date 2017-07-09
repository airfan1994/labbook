<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
	<form action="insert.action" method="post">
		<table align="left">
			<tr>
				<td>用户名:</td>
				<td><input id="userName" type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input id="pwd" type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>真实姓名：</td>
				<td><input id="nickname" type="text" name="nickname"></td>
			</tr>
			<tr>
				<td>学院：</td>
				<td><input id="school" type="text" name="school"></td>
			</tr>
			<tr>
				<td>角色：</td>
				<td><input id="role" type="text" name="role"></td>
			</tr>
			<tr>
				<td><button type="submit" name="Submit">登录</button></td>
			</tr>
		</table>
	</form>
</body>
</html>