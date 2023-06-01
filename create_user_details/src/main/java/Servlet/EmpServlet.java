package Servlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Database.Employee;

@WebServlet("/z")
public class EmpServlet extends HttpServlet{
	public  void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String phn=req.getParameter("phn");
		String date=req.getParameter("date");
		String email=req.getParameter("mail");
		String gender=req.getParameter("gender");
		String nation=req.getParameter("nation");
		String address=req.getParameter("add");
		String skill=req.getParameter("skill");
		
		String status=Employee.fill(id,name,phn,date,email,gender,nation,address,skill);
		
		res.sendRedirect("view.jsp");
	}

}
