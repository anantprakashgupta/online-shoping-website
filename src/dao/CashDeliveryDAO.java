package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import model.Billing;
import model.Product;
import service.DbConnection;

public class CashDeliveryDAO {
	public static ArrayList<Billing> getAddress() {
		Connection con=null;
		ArrayList<Billing>all=new ArrayList();
		boolean status=false;
		try {

			con=DbConnection.getConnetion();
			String sql="select * from billing";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs= ps.executeQuery();
		while(rs.next()) {
			String name=rs.getString(1);
			String address=rs.getString(2);
			String email=rs.getString(3);
			String mobile=rs.getString(4);
			String pin=rs.getString(5);
			String country=rs.getString(6);
			String state=rs.getString(7);
			String district=rs.getString(8);
			Billing b=new Billing(name,address, email, mobile, pin, country, state,district);
			all.add(b);
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
		
	

}}
