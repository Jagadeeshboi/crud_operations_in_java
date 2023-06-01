package Database;
import java.sql.*;
public class Employee {

	public static String fill(String id,String name, String phn, String date, String email, String gender, String nation,
			String address, String skill) {
		String sql="insert into employee values(?,?,?,?,?,?,?,?,?)";
		String s="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","root");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, id);
			ps.setString(2,  name);
			ps.setString(3, phn);
			ps.setString(4, date);
			ps.setString(5, email);
			ps.setString(6, gender);
			ps.setString(7, nation);
			ps.setString(8, address);
			ps.setString(9, skill);
			s="success";
			ps.executeUpdate();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			return s;
		}
	}

		

}
