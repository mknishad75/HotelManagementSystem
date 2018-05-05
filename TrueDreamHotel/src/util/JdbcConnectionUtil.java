package util;

import java.sql.*;

public class JdbcConnectionUtil {
	static Connection conn = null;
	public static Connection getConnection(){
		try {
			Class.forName(ConnectionDetails.driver);
			conn = DriverManager.getConnection(ConnectionDetails.url,ConnectionDetails.userName, ConnectionDetails.password);
		} catch (ClassNotFoundException e) {
			System.out.println("Driver class is not found.");			
		} catch (SQLException e) {
			System.out.println("Sql Exception");
		}		
		return conn;
	}	
	
	public static void clearConnection(ResultSet resultSet, PreparedStatement preState, Connection con ){
		try {
			if(resultSet != null){
				resultSet.close();
			}
			if(preState != null){
				preState.close();
			}
			if(con != null){
				con.close();
			}			
		} catch (Exception e) {
			System.out.println("Exception in Closing THE Connection");
		}
	}
}


