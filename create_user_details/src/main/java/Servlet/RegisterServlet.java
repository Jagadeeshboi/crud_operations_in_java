package Servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.Register;
@WebServlet("/y")
public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest req,HttpServletResponse res)
	{
		String name=req.getParameter("user_name");
		String add=req.getParameter("add");
		String phn=req.getParameter("phn");
		String pass=req.getParameter("pass");
		
		String status=Register.insert(name, add, phn, pass);
	}

}
