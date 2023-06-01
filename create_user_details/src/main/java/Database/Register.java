package Database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Register {

	public static String insert(String name, String add, String phn, String pass) {
		String sql="insert into register values(?,?,?,?)";
		String status="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/users","root","root");
			PreparedStatement st=con.prepareStatement(sql);
			st.setString(1, name);
			st.setString(2, add);
			st.setString(3, phn);
			st.setString(4, pass);
			st.executeUpdate();
			status="success";
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}

}
