<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="tyle.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<div class="first">
		<form method="post" action="y">
			<h3>account creation</h3><br><br>
			<label>enter your user name</label>
			<br>
			<input type="text" name="user_name" placeholder="enter your user email" required/>
			<br>
			<br>
			<label>enter your address</label>
			<br>
			<input type="text" name="add" placeholder="enter your address" required/>
			<br>
			<br>
			<label>enter your phone number</label>
			<br>
			<input type="number" name="phn" placeholder="enter your phn number" required/>
			<br>
			<br>
			<label>enter your password</label>
			<br>
			<input type="password" name="pass" placeholder="enter your password" required/>
			<br>
			<br>
			<a href="login.jsp">already register</a>
			<br>
			<br>
			<input class="btn" type="submit" />
			<br>
		</form>
	</div>

</body>
</html>