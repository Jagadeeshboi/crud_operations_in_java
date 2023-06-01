<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="tyle.css"/>
<title>Insert title here</title>

</head>
<body>
	<h3>Login</h3>
	<div class="first">
		<form method="post" action="x">
			<label>Enter User Name</label>
			<br>
			<input type="text" name="user_name" placeholder="enter your name" required/>
			<br>
			<br>
			<label>Enter your passWord</label>
			<br>
			<input type="password" name="pass" placeholder="enter your password" required/>
			<br>
			<br>
			<a href="registration.jsp">if dont have account</a>
			<br>
			<br>
			<input class="btn" type="submit"/>
			
		</form>
	</div>
</body>
</html>