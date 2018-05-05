package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BookingService;

import domain.BillAddress;
import domain.MailAddress;
import domain.VisitAddress;

@WebServlet("/BookingDetail")
public class BookingDetails extends HttpServlet{

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String mailCity = request.getParameter("mcity");
		String mailState = request.getParameter("mstate");
		String mailZcode = request.getParameter("mzcode");
		   
		String billCity = request.getParameter("bcity");
		String billState = request.getParameter("bstate");
		String billZcode = request.getParameter("bzcode");		
		
		String visitCity = request.getParameter("vcity");
		String visitState = request.getParameter("vstate");
		String visitZcode = request.getParameter("vzcode");
		
		MailAddress mailAddInstance = new MailAddress();
		mailAddInstance.setCity(mailCity);
		mailAddInstance.setState(mailState);
		mailAddInstance.setZcode(Integer.parseInt(mailZcode));
		
		BillAddress billAddressInstance =new BillAddress();
		billAddressInstance.setCity(billCity);
		billAddressInstance.setState(billState);
		billAddressInstance.setZcode(Integer.parseInt(billZcode));
		
		
		VisitAddress visitAddressInstance=new VisitAddress();
		visitAddressInstance.setCity(visitCity);
		visitAddressInstance.setState(visitState);
		visitAddressInstance.setZcode(Integer.parseInt(visitZcode));
		
		BookingService.saveMailAddress(mailAddInstance);
		BookingService.saveBillAddress(billAddressInstance);
		BookingService.saveVisitAddress(visitAddressInstance);
	}	
}
