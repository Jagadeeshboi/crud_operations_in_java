<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Database.Retrive" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="tyle.css"/>
<title>Insert title here</title>
</head>
<body>
<%	List k=Retrive.retr(); %>
	<div class="nav-div">
		<nav>
			<ul>
				<li><a href="create.jsp">create details</a></li>
				<li><a href="view.jsp">view details</a></li>
			</ul>
		</nav>
	</div>
	<div>
		<form method="post" action="z">
			<table>
				
			<% 
			for(int i=k.size()-1;i>=0;i++)
			{
			String s[]=((String)k.get(i)).split(":"); 
			
			%>
					<tr>
						<td>
							<p>previous request:<%=s[0]%></p>
							<%
			break;				
			} %>
							<label>request no:</label>
							<input type="number" name="id"/>
						</td>
						<td >
							<h3>employeement form</h3>
						</td>
					</tr>
	
				<tr>
				<td>
					<label>enter name:</label>
					<input type="text" name="name" placeholder="enter full name"/>
				</td>
				<td>
					<label>enter phone number:</label>
					<input type="number" name="phn" placeholder="enter phone number"/> 
				</td>
				</tr>
				<tr>
				<td>
					<label>date of birth:</label>
					<input type="date" name="date" placeholder="enter full name"/>
				</td>
				<td >
					<label>enter your gender:</label>
					<input class="gen" type="radio" name="gender" value="male"/> 
					<label>male</label>
					<input class="gen" type="radio" name="gender" value="female"/>
					<label>female</label>
					<input class="gen" type="radio" name="gender" value="others"/>
					<label>others</label>
				</td>
				</tr>
				<tr>
				<td>
					<label>enter email:</label>
					<input type="text" name="mail" placeholder="enter email address"/>
				</td>
				<td>
					<label>enter nationality:</label>
					<input type="text" name="nation" placeholder="enter nationality"/> 
				</td>
				</tr>
				<tr>
					<td colspan="2">
					<label>enter your address</label>
					<br>
					<textarea rows="2" cols="80" name="add">Enter here</textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<label>skills set</label><br>
						<div class="skill">
							<input class="gen" type="checkbox" name="skill" value="pyhon">
							<label>python</label>
							<input  class="gen" type="checkbox" name="skill" value="java"/>
							<label>java</label>
							<input  class="gen" type="checkbox" name="skill" value="aws"/>
							<label>aws</label>
							<input  class="gen" type="checkbox" name="skill" value="cloud"/>
							<label>google cloud</label>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" class="btn">
					</td>
				</tr>
			</table>
			
		</form>
	</div>

</body>
</html>