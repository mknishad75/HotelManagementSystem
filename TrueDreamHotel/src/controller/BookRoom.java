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

import Dao.AddRoomDao;
import Dao.DaoFactory;
import domain.AddRoom;
import service.RegistrationService;
import util.AddRoomTo;



@WebServlet("/bookroom")
public class BookRoom extends HttpServlet {
	
	protected void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{

		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		int value=0;
		String result="";
		
		String str=req.getParameter("roomId");
		int regId=Integer.parseInt(req.getParameter("roomId"));
		System.out.println("id is"+regId);
		
		//int regID=Integer.valueOf(str);	
		//int regId=Integer.parseInt(str);
		//System.out.println("new id is"+regID);
		
	
		AddRoomDao roomValue=DaoFactory.getRoomDao();
		AddRoomTo roomInstance=roomValue.getAddRoomById(regId);
		
String userLoginValue=RoomAdminDetails.loginValue(req);
        
		if(userLoginValue==null)
		{
		
			//String msg="Please Login Your Account First!!";
			//session.setAttribute("MSG",msg);
			result="login5.jsp";
		}
		else{
		value=RegistrationService.bookingDetail(roomInstance, req);
		
		
		if(value>0)
		{  
			String msg="Your Room Is SucessFully Booked !!";
			session.setAttribute("MSG",msg);
			result="index.jsp";
			
		}else
		{
			String msg=" Your Entered Data Is Invalid";
			session.setAttribute("MSG",msg);
			result="roomBooking.jsp";
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


