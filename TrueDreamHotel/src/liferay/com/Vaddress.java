package liferay.com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/vaddress")
	public class Vaddress extends HttpServlet {
		private static final long serialVersionUID = 1L;

	    /**
	     * Default constructor. 
	     */
	    public Vaddress() {
	        	    }
	    Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

	    

		protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter pw=response.getWriter();
			HttpSession hs=request.getSession();
			String dbUrl = "jdbc:mysql://localhost:3306/hotel";
			   
			   int x=0;
			   String str1,str2=null,str3;
			  String a=request.getParameter("vcity");
			   String b=request.getParameter("vstate");
			   String c=request.getParameter("vzcode");
			   
			   
			   int id=0;
			   try{
			   Class.forName("com.mysql.jdbc.Driver");
			    con = DriverManager.getConnection(dbUrl,"root","rahul");

			   String sql="insert into vaddress (city,state,zcode) values (?,?,?)";
			   ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);  
					     
					   ps.setString(1,a);  
					   ps.setString(2,b);  
					   ps.setString(3,c);  
					     
					             
					   ps.executeUpdate();  
					   //pstmt.executeUpdate();
			             rs = ps.getGeneratedKeys();
			            if(rs != null && rs.next()){
			            	//rs.getInt(1);
			                System.out.println("Generated Emp Id: "+rs.getInt(1));
			            }
			
					   
			   
			   
			   }
			   catch(Exception ex){
				   
				   ex.printStackTrace();
				   //System.out.println(ex);
			   }
			   finally{
		            try{
		                if(rs != null) rs.close();
		                if(ps != null) ps.close();
		                if(con != null) con.close();
		            } catch(Exception ex){}
		        }
		
			   
			   
		}

}
