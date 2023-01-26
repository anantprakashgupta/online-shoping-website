package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import model.Admin;
import model.Billing;
import model.Product;
import service.DbConnection;

public class BillingDAO {
	public static boolean insert(Billing billing) {
		Connection con=null;
		boolean status =false;
		try {
			con=DbConnection.getConnetion();
			String sql="insert into billing(name,address,email,mobile,pin,country,state,district) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, billing.getName());
			ps.setString(2, billing.getAddress());
			ps.setString(3, billing.getEmail());
			ps.setString(4, billing.getMobile());
			ps.setString(5, billing.getPin());
			ps.setString(6, billing.getCountry());
			ps.setString(7, billing.getState());
			ps.setString(8, billing.getDistrict());
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
	 public static boolean update(Billing billing) {
			Connection con=null;
			boolean status=false;
			try {
				con=DbConnection.getConnetion();
				String sql="update billing set  address=?,email=?,mobile=?,pin=?,country=?,state=?,district=? where name=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, billing.getAddress());
			ps.setString(2, billing.getEmail());
			ps.setString(3, billing.getMobile());
			ps.setString(4, billing.getPin());
			ps.setString(5, billing.getCountry());
			ps.setString(6, billing.getState());
			ps.setString(7, billing.getDistrict());
			ps.setString(8, billing.getName());
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
	 public static boolean delete(Billing billing) {

			boolean status=false;
			Connection con=null;
			try {
				con=DbConnection.getConnetion();
				String sql="delete from billing where name=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, billing.getName());
//				ps.setString(2, billing.getAddress());
//				ps.setString(3, billing.getEmail());
//				ps.setString(4, billing.getMobile());
//				ps.setString(5, billing.getPin());
//				ps.setString(6, billing.getCountry());
//				ps.setString(7, billing.getState());
//				ps.setString(8, billing.getDistrict());
				
				int x=ps.executeUpdate();
				if(x!=0) {
					status=true;	
				}
				
			} catch (Exception e) {
		        e.printStackTrace();
		        
			}finally {
				try {
					con.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}

			return status;
}}