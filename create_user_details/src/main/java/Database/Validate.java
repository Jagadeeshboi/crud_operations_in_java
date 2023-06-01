package Database;
import Database.Login;
public class Validate {

	public static boolean val(String name, String pass) {
		String result=Login.resp(name);
		if(pass.equals(result))
		{
			return true;
		}
		return false;
	}
}
