package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class Login {
	@SuppressWarnings("finally")
	public static String resp(String name) {
		String sql="Select pass from register where name=?";
		String result="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","root");
			PreparedStatement st=conn.prepareStatement(sql);
			st.setString(1, name);
			ResultSet rs=st.executeQuery();
			rs.next();
			result=rs.getString(1);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			return result;
		}
		
	}
}
