package Servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.Validate;

@WebServlet("/x")
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String name=req.getParameter("user_name");
		String pass=req.getParameter("pass"); 
		boolean res1=Validate.val(name,pass);
		if(res1==true)
		{
			res.sendRedirect("index.jsp");
		}
		else
		{
			res.sendRedirect("login.jsp");
		}
		
		
	}

}
