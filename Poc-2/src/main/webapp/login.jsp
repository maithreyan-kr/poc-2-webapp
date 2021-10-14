<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div class="container"><div class="title"><b>Login</b></div>
	<br/>
	<form action="logincon.jsp" method="post">
	<div class="user-cred">
	<div class="input-box"><span class="cred">User Name  : </span><input type="text" name="userName" placeholder="username" required></div><br/>
	<div class="input-box"><span class="cred">Password   : </span><input type="password" name="Password" placeholder="pass" required></div><br/>
	<br/><br/>
	</div>
	<div class="button"><input type="submit" value="Login">
	</div>
</form>
</body>
</html>