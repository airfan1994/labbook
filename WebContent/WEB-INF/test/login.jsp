<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>login</title>
</head>
<body>
	<form action="/labbook/user/login.action" method="post">
		<table align="left">
			<tr>
				<td>用户名:</td>
				<td><input id="userName" type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码：</td>
				<td><input id="password" type="password" name="password"></td>
			</tr>
			<tr>
				<td><button type="submit" name="Submit">登录</button></td>
			</tr>
		</table>
	</form>
</body>
</html>