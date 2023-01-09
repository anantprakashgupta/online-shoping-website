package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Category;
import service.DbConnection;

public class CategoryDao {
public static boolean add(Category category) {
	Connection con=null;
	boolean status=false;
	try {
    con=DbConnection.getConnetion();
	String sql="insert into catagory(cname) values(?)";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, category.getCname());
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
public static boolean update(Category category) {
	Connection con=null;
	boolean status=false;
	try {
		con=DbConnection.getConnetion();
		String sql="update catagory set cname=? where uid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, category.getCname());
	ps.setInt(2, category.getCid());
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
public static boolean delete(Category category) {
	Connection con=null;
	boolean status=false;
	try {
		con=DbConnection.getConnetion();
		String sql="delete from catagory where uid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setInt(1, category.getCid());
	//ps.setString(2, category.getCname());
	
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
public static ArrayList<Category> getCategorylist() {
	Connection con=null;
	ArrayList<Category>al=new ArrayList();
	boolean status=false;
	try {
		con=DbConnection.getConnetion();
		String sql="select * from catagory";
	PreparedStatement ps=con.prepareStatement(sql);
	ResultSet rs= ps.executeQuery();
	while(rs.next()) {
		int id= rs.getInt(1);	
		String cname=rs.getString(2);
		Category c=new Category(id,cname);
		al.add(c);
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
	return al;
	
}	
public static boolean edit(Category category) {
	Connection con=null;
	boolean status=false;
	try {
		con=DbConnection.getConnetion();
		String sql="update catagory set cname=? where uid=?";
	PreparedStatement ps=con.prepareStatement(sql);
	ps.setString(1, category.getCname());
	ps.setInt(2, category.getCid());
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
