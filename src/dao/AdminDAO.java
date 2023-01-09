package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.Admin;
import service.DbConnection;

public class AdminDAO {
	public static boolean registerAdmin(Admin admin) {
		Connection con=null;
		boolean status =false;
		try {
			con=DbConnection.getConnetion();
			String sql="insert into admin(username ,password) values(?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
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

	public static boolean athenticAdmin(Admin admin) {
		boolean status=false;
		Connection con=null;
		try {
			con=DbConnection.getConnetion();
			String sql="select * from admin where username=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());
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
