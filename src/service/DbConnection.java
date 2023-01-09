package service;

import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;
import com.mysql.*;

public class DbConnection {
private static Connection con=null;
public static Connection getConnetion() {
	try {
	 Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shoping", "root", "161035");
		
	} catch (Exception e) {
		// TODO: handle exception
	e.printStackTrace();
	}
	
	return con;
	
}
}
