package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.fabric.Response;

import model.Admin;
import model.User;
import service.DbConnection;

public class UserDAO {
	
	public static boolean registerUser(User user) {
		Connection con=null;
		boolean status =false;
		
		try {
			con=DbConnection.getConnetion();
			String sql="insert into user1(uname ,password) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user.getUname());
			ps.setString(2, user.getPassword());
			int x= ps.executeUpdate();
			if(x!=0) {
				status=true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
		// TODO: handle exception
				e2.printStackTrace();
			
			}
}
		return status;
		
	

}

	public static boolean UserSelect(User user) {
		boolean status=false;
		Connection con=null;
	
		try {
			con=DbConnection.getConnetion();
			String sql="select * from user1 where uname=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, user.getUname());
			ps.setString(2, user.getPassword());
			ResultSet rs= ps.executeQuery();
			if(rs.next()) {
				status =true;
				
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}finally {
			try {
				con.close();
			} catch (Exception e2) {
				// TODO: handle exception
			e2.printStackTrace();
			}
		}
		return status;
	}
}
