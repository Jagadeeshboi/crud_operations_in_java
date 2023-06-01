package Database;

import java.util.*;
import java.sql.*;
public class Retrive {
	public static List retr()
	{
		List l=new ArrayList();
		String sql="Select * from employee";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","root");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				String temp=rs.getString(1)+":"+rs.getString(2)+":"+rs.getString(3)+":"+rs.getString(4)+":"+rs.getString(5)+":"+rs.getString(6)+":"+rs.getString(7)+":"+rs.getString(8)+":"+rs.getString(9);
				l.add(temp);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			return l;
		}
		
	}

}
