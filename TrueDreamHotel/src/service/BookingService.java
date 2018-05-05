package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;

import util.JdbcConnectionUtil;
import domain.BillAddress;
import domain.MailAddress;
import domain.VisitAddress;

public class BookingService {
	
	public static void saveMailAddress(MailAddress mailAdd)
	{
		Connection conn = JdbcConnectionUtil.getConnection();
		
		String sql = "insert into maddress(city,state,zcode) values(?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mailAdd.getCity());
			pstmt.setString(2, mailAdd.getState());
			pstmt.setInt(3, mailAdd.getZcode());
			
			int i=pstmt.executeUpdate();
			String result=" ";
			if(i>0)
			{
				System.out.println("Value suceefully Inserted");
				result="index.html";
			}
			else
			{
				result="Registration.html";			}
		 
		} catch (SQLException e) {
			System.out.println("Sql Exception");
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("Connection Closed Sql Exception");
			}
		}
		
		
	}
	
	public static void saveBillAddress(BillAddress billAdd)
	{
Connection conn = JdbcConnectionUtil.getConnection();
		
		String sql = "insert into baddress(city,state,zcode) values(?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, billAdd.getCity());
			pstmt.setString(2, billAdd.getState());
			pstmt.setInt(3, billAdd.getZcode());
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				System.out.println("Value suceefully Inserted");
			}
		 
		} catch (SQLException e) {
			System.out.println("Sql Exception");
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("Connection Closed Sql Exception");
			}
		}
		
		
		
	}
	
	
	public static void saveVisitAddress(VisitAddress visitAdd)
	{
		Connection conn = JdbcConnectionUtil.getConnection();
		
		String sql = "insert into vaddress(city,state,zcode) values(?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, visitAdd.getCity());
			pstmt.setString(2, visitAdd.getState());
			pstmt.setInt(3, visitAdd.getZcode());
			
			int i=pstmt.executeUpdate();
			if(i>0)
			{
				System.out.println("Value suceefully Inserted");
			}
		 
		} catch (SQLException e) {
			System.out.println("Sql Exception");
		}finally{
			try {
				conn.close();
			} catch (SQLException e) {
				System.out.println("Connection Closed Sql Exception");
			}
		}
		
	}
	

}
