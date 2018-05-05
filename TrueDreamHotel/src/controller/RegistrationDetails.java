package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.UserService;

import domain.Registration;

@WebServlet("/register")
public class RegistrationDetails extends HttpServlet {
	protected void service(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException
	{
		int x=0;
		String msg=" ";
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String phone=req.getParameter("phone");
		String password=req.getParameter("password");
		String userType=req.getParameter("userType");
		
		Registration registrationInstance=new Registration();
		registrationInstance.setUserName(name);
		registrationInstance.setEmail(email);
		registrationInstance.setPhone(Long.parseLong(phone));
		registrationInstance.setPassword(password);
		registrationInstance.setRoleType(userType);
		
		
		x=UserService.saveDetails(registrationInstance);
		
		if(x>0)
		{
			msg="index.html";
		}else
		{
			msg="error.html";
		}
		
		
	}

}
