package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Product;
import service.DbConnection;

public class SearchDAO {
	
	public static ArrayList<Product> SearchProduct(Product product) {
		Connection con=null;
		ArrayList<Product>all=new ArrayList();
		try {
			con=DbConnection.getConnetion();
			String sql="select * from product where pname=? ";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, product.getPname());
		ResultSet rs= ps.executeQuery();
			
		while(rs.next()) {
			int id= rs.getInt(1);	
			System.out.println(id);
			String pname=rs.getString(2);
			String prize=rs.getString(3);
			String description=rs.getString(4);
			
			Product c=new Product(id,pname, prize, description);
			
			all.add(c);
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

}
