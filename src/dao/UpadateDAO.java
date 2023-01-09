package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Admin;
import model.Category;
import model.User;
import service.DbConnection;

public class UpadateDAO {
	public static boolean upadate(Admin admin) {
		Connection con=null;
		boolean status=false;
		try {
			con=DbConnection.getConnetion();
			String sql="update admin set password=? where username=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, admin.getPassword());
		ps.setString(2, admin.getUsername());
		int x= ps.executeUpdate();
		if(x!=0) {
			status=true;
			System.out.println("if block");
		}	
		
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
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
	
	public static boolean upadateUser(User user) {
		Connection con=null;
		boolean status=false;
		try {
			con=DbConnection.getConnetion();
			String sql="update user1 set password=? where uname=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, user.getPassword());
		ps.setString(2, user.getUname());
		int x= ps.executeUpdate();
		if(x!=0) {
			status=true;
			
		}	
		
		} catch (Exception e) {
			// TODO: handle exception
		e.printStackTrace();
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
