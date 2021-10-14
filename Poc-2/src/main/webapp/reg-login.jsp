<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>re</title>
<link rel="stylesheet" href="reg-login.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

	<div class="container"><div class="title"><b>Registration</b></div>
	<br/>
	<form action="connect.jsp" method="post">
	<div class="user-details">
	<div class="input-box"><span class="details">First Name : </span><input type="text" name="firstName" placeholder="firstname" required></div><br/>
	<div class="input-box"><span class="details">Last Name  : </span><input type="text" name="lastName" placeholder="lastname" required></div><br/>
	<div class="input-box"><span class="details">Ph.Number  : </span><input type="text" name="phoneNumber" placeholder="number" required></div><br/>
	<div class="input-box"><span class="details">D.O.Birth  : </span><input type="date" name="dateOfBirth" placeholder="yyyy-mm-dd" required></div><br/>
	<div class="input-box"><span class="details">User Name  : </span><input type="text" name="userName" placeholder="username" required></div><br/>
	<div class="input-box"><span class="details">Password   : </span><input type="password" name="Password" placeholder="pass" required></div><br/>
	<br/><br/>
	</div>
	<div class="button"><input type="submit" value="Register">
	</div>
</form>
</body>
</html>