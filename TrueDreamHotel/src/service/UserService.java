package service;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import util.JdbcConnectionUtil;
import domain.Login;
import domain.Registration;
import domain.RoomDetails;

public class UserService {
 
	public static int saveDetails(Registration reg)
	{  int i=0;
		Connection con=JdbcConnectionUtil.getConnection();
		String sql="insert into user(name,email,phone,password,userType) values(?,?,?,?,?)";
		try {
			PreparedStatement ps=con.prepareStatement(sql);
			//ps.setString(1,reg.getEmail());
			ps.setString(2, reg.getEmail());
			ps.setLong(3,reg.getPhone());
			ps.setString(4,reg.getPassword());
			//ps.setString(5,reg.getUserType());
			
			
			 i=ps.executeUpdate();
			 
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	
		return i;
	}
	
	
	public static String verifyUser(String email,String password)
	{
		int x=0;
		String str1,str2;
		Connection con=JdbcConnectionUtil.getConnection();
		//String sql="select email,password from user where email=? and password=? ";
         String type=" ";	
		String sql="select * from user where email=? and password=? ";
			try {
		
			PreparedStatement ps=con.prepareStatement(sql);
			
			ps.setString(1,email);
			ps.setString(2,password);
		    ResultSet rs=ps.executeQuery();

		   
			
		   if(rs.next())
			{
				x=1;
				type=rs.getString(6);
			}
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return type;
	}

        public static ArrayList<Registration> userDetail()
        	{
        		ArrayList<Registration> list=new ArrayList<Registration>();
        		Connection con=JdbcConnectionUtil.getConnection();
				String sql="select * from user";
				try {
					PreparedStatement ps=con.prepareStatement(sql);
					ResultSet rs=ps.executeQuery();
					
					while(rs.next())
					{
					Registration reg=new Registration();
					reg.setRegId(rs.getInt(1));
					reg.setUserName(rs.getString(2));
					reg.setEmail(rs.getString(3));
					reg.setPhone(rs.getLong(4));
					reg.setPassword(rs.getString(5));
					reg.setRoleType(rs.getString(6));
					list.add(reg);
						
						
					}
							} catch (SQLException e) {
								
								e.printStackTrace();
							}
							
						return list;	
						}
	
						public static int roomDetails(RoomDetails detail)
						{
							int i=0;
							String msg=" ";
							Connection con=JdbcConnectionUtil.getConnection();
							String sql="insert into roomdetails(roomName,price,status) values(?,?,?)";
							try {
								PreparedStatement ps=con.prepareStatement(sql);
								ps.setString(1,detail.getRoomName());
								ps.setDouble(2,detail.getPrice());
								ps.setString(3,detail.getStatus());
								 i=ps.executeUpdate();
								 
								
							} catch (SQLException e) {
								
								e.printStackTrace();
							}
							
							
							return i;
							
							
						}

						public static ArrayList<RoomDetails> availableRoom()
						{
							ArrayList<RoomDetails> al=new ArrayList<RoomDetails>();
						
								try
								{
							
							Connection con=JdbcConnectionUtil.getConnection();
							String query="select * from roomdetails";
							PreparedStatement ps=con.prepareStatement(query);
							ResultSet rs=ps.executeQuery();
							while(rs.next())
							{
								RoomDetails roomDetails=new RoomDetails();
								roomDetails.setRoomName(rs.getString(2));
								roomDetails.setPrice(rs.getInt(3));
								roomDetails.setStatus(rs.getString(4));
								al.add(roomDetails);
								
							}
							
							
						}catch(Exception e)
						{
							e.printStackTrace();
						}
						
						return al;
						}



}
