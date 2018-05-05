
package liferay.com;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/reg")
public class reg extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public reg() {
        // TODO Auto-generated constructor stub
    }

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

	 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		HttpSession hs=request.getSession();
		String dbUrl = "jdbc:mysql://localhost:3306/hotel";
		   String dbClass = "com.mysql.jdbc.Driver";
		   int i=0;
		   String str1,str2=null,str3;
		  String a=request.getParameter("cname");
		   String b=request.getParameter("email");
		   String c=request.getParameter("pass1");
		   String d=request.getParameter("pass2");
		   
		   
		   int id=0;
		   try{
		   Class.forName("com.mysql.jdbc.Driver");
		   Connection con = DriverManager.getConnection(dbUrl,"root","rahul");

		   String sql="insert into register (cname,email,pass1,pass2) values (?,?,?,?)";
		   ps=con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);  
				     
				   ps.setString(1,a);  
				   ps.setString(2,b);  
				   ps.setString(3,c);  
                   ps.setString(4,d);				     
				             
				   ps.executeUpdate();  
				   //pstmt.executeUpdate();
		             rs = ps.getGeneratedKeys();
		            if(rs != null && rs.next()){
		            	//rs.getInt(1);
		                System.out.println("Generated Emp Id: "+rs.getInt(1));
		                pw.print("Your Registration is Sucessfully !!");
		                pw.print("Now You Can Login Your Account");
		                RequestDispatcher rs=request.getRequestDispatcher("index.html");
		                rs.include(request,response);
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
