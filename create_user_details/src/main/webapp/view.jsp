<%@ page import="java.util.*" %>
<%@page import="Database.Retrive" %>
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
	<%
		List l=Retrive.retr();
	%>
	<div class="tb-div">
		<table class="table">
			<thead>
				<tr >
					<th class="th">name of the employee</th>
					<th class="th">phone number</th>
					<th class="th">date of birth</th>
					<th class="th">email</th>
					<th class="th">gender</th>
					<th class="th">nationality</th>
					<th class="th">address</th>
					<th class="th">skills</th>
					<th class="th">edit</th>
					<th class="th">delete</th>
				</tr>
			</thead>
					<%
						for(int i=0;i<l.size();i++)
						{
							String s[]=((String)l.get(i)).split(":");
					%>
					<tr>
						<td class="td"><%=s[1] %></td>
						<td class="td"><%=s[2] %></td>
						<td class="td"><%=s[3] %></td>
						<td class="td"><%=s[4] %></td>
						<td class="td"><%=s[5] %></td>
						<td class="td"><%=s[6] %></td>
						<td class="td"><%=s[7] %></td>
						<td class="td"><%=s[8] %></td>
						<td class="td">
							<form method="post"  action="edit.jsp" >
								<input class="btn" type="submit" name="id" value="<%=s[0]%>" >
							</form>
						</td>
						<td class="td">
							<form method="post" action="delete.jsp">
								<input class="btn" type="submit" name="delete" value="delete"/>
							</form>
						</td>
					</tr>
					<%
					}
					%>
		</table>
	</div>
</body>
</html>