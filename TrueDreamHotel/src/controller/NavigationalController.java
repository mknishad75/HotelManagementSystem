package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;

import domain.Registration;

@SuppressWarnings("serial")
@WebServlet(urlPatterns={"/NavigationalController"})
public class NavigationalController extends HttpServlet {
	
	protected void service(HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{  
        HttpSession session=request.getSession();
		String serviceName = request.getParameter("service");		
		System.out.println("Controller ::: "+ serviceName);
		
		if("userLoginDetailsService".equalsIgnoreCase(serviceName)){
			
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			session.setAttribute("UserEmail", email);
			
			Registration registrationInstance = new Registration();
			registrationInstance.setEmail(email);
			registrationInstance.setPassword(password);			
			
			LoginController loginControllerInstance = new LoginController(); 
			Registration registrationDetails = loginControllerInstance.getLoginAuthentication(registrationInstance,request);			
				            
            PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            response.setHeader("Cache-control", "no-cache, no-store");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "-1");
     
            response.setHeader("Access-Control-Allow-Origin", "*");
            response.setHeader("Access-Control-Allow-Methods", "POST");
            response.setHeader("Access-Control-Allow-Headers", "Content-Type");
            response.setHeader("Access-Control-Max-Age", "86400");
     
            Gson gson = new Gson(); 
            JsonObject myLoginObj = new JsonObject();            
            JsonElement registrationDetailsObj = gson.toJsonTree(registrationDetails);
            
            if(registrationDetails == null || registrationDetails.getUserName() == null || registrationDetails.getUserName().isEmpty()){
            	myLoginObj.addProperty("success", false);
            }else {
            	myLoginObj.addProperty("success", true);
            }      
            
            myLoginObj.add("registrationDetails", registrationDetailsObj);
            out.println(myLoginObj.toString());
            
            out.close();            
		}
		else if("userSignupDetailService".equals(serviceName))
		{
			int i=0;
			String userName=request.getParameter("name");
			String email=request.getParameter("email");
			String phone=request.getParameter("phone");
			String password=request.getParameter("password");
			String userType=request.getParameter("userType");
			
			System.out.println("hello :::::::::" + userName);			
			Registration registaroInstance = new Registration();
			registaroInstance.setUserName(userName);
			registaroInstance.setEmail(email);
			registaroInstance.setPhone(Long.parseLong(phone));
			registaroInstance.setPassword(password);
			registaroInstance.setRoleType(userType);
			
			LoginController loginControllerInstance=new LoginController();
			Map<String,String> registrationSignUpDetails=loginControllerInstance.setSignUpDetails(registaroInstance);
			
			PrintWriter out = response.getWriter();
            response.setContentType("text/html");
            response.setHeader("Cache-control", "no-cache, no-store");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "-1");
     
            response.setHeader("Access-Control-Allow-Origin", "*");
            response.setHeader("Access-Control-Allow-Methods", "POST");
            response.setHeader("Access-Control-Allow-Headers", "Content-Type");
            response.setHeader("Access-Control-Max-Age", "86400");
     
            Gson gson = new Gson(); 
            JsonObject mySingUpObj = new JsonObject();
            //JsonElement registrationDetailsObj = gson.toJsonTree(i);
            JsonElement registrationDetailsObj = gson.toJsonTree(registrationSignUpDetails);
            // System.out.println("value :::::::: " + registrationSignUpDetails.get("usrName"));
            //|| registrationSignUpDetails.getUserName()==null ||Registration registrationSignUpDetails.getUserName().isEmpty()
            if(registrationSignUpDetails == null  ){
            	mySingUpObj.addProperty("success", false);
            }else {
            	mySingUpObj.addProperty("success", true);
            }      
            
            mySingUpObj.add("registrationSignUpDetails", registrationDetailsObj);
            out.println(mySingUpObj.toString());
            
            out.close();   			
           
            
	}
		
			
		}
		
		
		
		
		
		/*
		
		PrintWriter out=res.getWriter();
		HttpSession session=req.getSession();
		System.out.println("service started");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		
//		Registration regInstance=new Registration();
		//regInstance.setEmail(email);
		//regInstance.setPassword(password);
		
		System.out.println("service vefiyning");
		String type =UserService.verifyUser(email,password);
		String result=" ";
		HttpSession ses=req.getSession();
		if(type.equalsIgnoreCase("admin"))
		{
			session.setAttribute("Admin",email);
			res.sendRedirect("AdminPage.jsp");
			
		}
		else if(type.equalsIgnoreCase("guest"))
		{
			session.setAttribute("Guest",email);
			res.sendRedirect("index.html");
		}
		else
		{
			res.sendRedirect("login.html?msg=login fails");
		}		*/
	}

