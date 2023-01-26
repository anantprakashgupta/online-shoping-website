package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Product;
import service.DbConnection;

public class BuyProductDAO {
	public static boolean insert(Product product){
			boolean status=false;
			Connection con=null;
			try {
			con=DbConnection.getConnetion();
			String sql="insert into buy_product(pname, prize, description) values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, product.getPname());
			ps.setString(2, product.getPrize());
			ps.setString(3, product.getDescription());
			
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
			
		}

		public static ArrayList<Product> getProduct() {
			Connection con=null;
			ArrayList<Product>all=new ArrayList();
			boolean status=false;
			try {
				con=DbConnection.getConnetion();
				String sql="select * from buy_product";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs= ps.executeQuery();
			while(rs.next()) {
				int id= rs.getInt(1);	
				String pname=rs.getString(2);
				String prize=rs.getString(3);
				String description=rs.getString(4);
				Product c=new Product(id,pname, prize, description);
				all.add(c);
				for (int i = 1; i <=rs.getInt(1); i++) {
			    
				}
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
			return all;
			
		
	}
	   public static boolean delete(Product product) {

		boolean status=false;
		Connection con=null;
		try {
			con=DbConnection.getConnetion();
			String sql="delete from buy_product where pid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, product.getPid());
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
		   
	   }
	   
	   public static boolean update(Product product) {
			Connection con=null;
			boolean status=false;
			try {
				con=DbConnection.getConnetion();
				String sql="update buy_product set pname=?, prize=?,description=? where pid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, product.getPname());
			ps.setString(2, product.getPrize());
			ps.setString(3, product.getDescription());
			ps.setInt(4, product.getPid());
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


