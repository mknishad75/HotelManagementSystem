package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.LoginService;
import service.RegistrationService;
import service.UserService;

import domain.*;

@WebServlet("/roomdetails")
public class RoomAdminDetails extends HttpServlet {
	
	protected void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		//session.setAttribute("UserEmail", "mknishad75@gmail.com");
		int value=0;
		String result="";
		String roomName=req.getParameter("roomName");
		String price=req.getParameter("price");
		String status=req.getParameter("status");
		
		RoomDetails roomdetail=new RoomDetails();
		roomdetail.setRoomName(roomName);
		roomdetail.setPrice(Double.parseDouble(price));
		roomdetail.setStatus(status);
		 
		String userLoginValue=RoomAdminDetails.loginValue(req);
        
	    //String email=(String) session.getAttribute("UserEmail");
		//int regId=(Integer) session.getAttribute("REGID");
		// i=UserService.roomDetails(roomdetail);
		//System.out.println("valuer of user id"+regId);
		if(userLoginValue==null)
		{
		
			//String msg="Please Login Your Account First!!";
			//session.setAttribute("MSG",msg);
			result="login5.jsp";
		}
		else{
		//value=RegistrationService.roomDetails(setValue, req);
		
		
		if(value>0)
		{  
			String msg="Your Room Is SucessFully Booked !!";
			session.setAttribute("MSG",msg);
			result="index.jsp";
			
		}else
		{
			String msg=" Your Entered Data Is Invalid";
			session.setAttribute("MSG",msg);
			result="roomdetails.jsp";
		}
		}
		RequestDispatcher rd=req.getRequestDispatcher(result);
		rd.forward(req,res);
		
	}
	
	

	public static String loginValue(HttpServletRequest request) {		
		HttpSession session=request.getSession();		
		// int regId=(Integer)session.getAttribute("REGID");
		//System.out.println("valuer of user id"+regId);		
		String email=(String) session.getAttribute("UserEmail");		      
		return email;
	}
	
	

}
