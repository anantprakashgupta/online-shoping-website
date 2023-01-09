package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Image;
import service.DbConnection;

public class ImageDAO {
	public static boolean save(Image image ) {
		boolean status= false;
		Connection con=null;
		try {
			con=DbConnection.getConnetion();
			String sql="insert into image2(photo) values(?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, image.getPhoto());
			int x=ps.executeUpdate();
			if(x!=0) {
				status=true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
				
			} catch (Exception e2) {
			e2.printStackTrace();
			}
		}
		
		
		return status;
		
	}
	
//	public static ArrayList<Image> show(Image image ) {
//		Connection con=null;
//		ArrayList<Image> al=new ArrayList();
//		try {
//			con=DbConnection.getConnetion();
//			String sql="select  photo from image2";
//			PreparedStatement ps=con.prepareStatement(sql);
//			ResultSet rs=ps.executeQuery();
//			while(rs.next()) {
//				String name=rs.getString("photo");
//				Image i=new Image(photo);
//				al.add(i);
//			}
//			
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		finally {
//			try {
//				con.close();
//				
//			} catch (Exception e2) {
//			e2.printStackTrace();
//			}
//		}
//		
//	}
}
