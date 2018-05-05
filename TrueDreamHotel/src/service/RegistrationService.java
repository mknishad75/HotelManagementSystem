package service;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.property.Getter;
import org.hibernate.sql.SelectValues;

import domain.AddRoom;
import domain.Registration;
import domain.RoomDetails;
import util.AddRoomTo;
import util.HibernateUtil;


public class RegistrationService {

	public Map<String, String> validateRegsitrationService(String regName, String regEmail, long regPhone, String regPassword,String regUserType) {
		Map<String,String> registrationResponse=null;
		
		Transaction tx=null;
		int insertStatus=0;
		try
		{
			SessionFactory sf=HibernateUtil.getSessionFactory();
			Session session=sf.openSession();
			tx=session.beginTransaction();
			Registration rs=new Registration();
			rs.setUserName(regName);
			rs.setEmail(regEmail);
			rs.setPhone(regPhone);
			rs.setPassword(regPassword);
			rs.setRoleType(regUserType);
			
			
			insertStatus=(Integer) session.save(rs);
			if(insertStatus>0)
			{
				registrationResponse=new HashMap<String, String>();
				registrationResponse.put("usrName",regName);
				
			}
			System.out.println("registrationResponse value ::: " + registrationResponse);
				tx.commit();
			session.close();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			if(tx!=null)
				tx.rollback();
		}
		
		
		
		
		return registrationResponse;
	}
	
	public static int roomDetails(RoomDetails detail, HttpServletRequest request){
		
		
		int status=0;
		Transaction transaction=null;	
		
		HttpSession session1 = request.getSession();
		String email = (String) session1.getAttribute("UserEmail");
	    int regId=(Integer) session1.getAttribute("REGID");
	
		RoomDetails roomValue=new RoomDetails();
		roomValue.setRoomName(detail.getRoomName());
		roomValue.setPrice(detail.getPrice());
		roomValue.setStatus(detail.getStatus());
		 				  
		try{				 
			SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
			Session session = sessionfactory.openSession();
			transaction=session.beginTransaction();
			
				
			
			Registration registration = (Registration) session.load(Registration.class,new Integer(regId));
			
			Set<Registration> rsSet = new HashSet<Registration>();
			rsSet.add(registration);
			roomValue.setRegistration(rsSet);
			status=(Integer)session.save(roomValue);
		 
			transaction.commit();  
			session.close();    
		 }
		 catch(Exception e){
			e.printStackTrace();
			if(transaction!=null){
				transaction.rollback();
			}
		}		
		return status;
	}
	
	
public static int bookingDetail(AddRoomTo roomValue,HttpServletRequest request)
{   int status=0;
	Transaction transaction=null;
	HttpSession session1 = request.getSession();
	String email = (String) session1.getAttribute("UserEmail");
    int regId=(Integer) session1.getAttribute("REGID");

	AddRoom roomIntance=new AddRoom();
	roomIntance.setAddRoomId(roomValue.getAddRoomId());
	int roomId=roomIntance.getAddRoomId();
	
	try{				 
		SessionFactory sessionfactory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
		Session session = sessionfactory.openSession();
		transaction=session.beginTransaction();
		
			
		
		Registration registration = (Registration) session.load(Registration.class,new Integer(regId));
		AddRoom roomInstanceLoad=(AddRoom)session.load(AddRoom.class,roomId);
		
		
		Set<Registration> rsSet = new HashSet<Registration>();
		Set<AddRoom> adSet=new HashSet<AddRoom>();
		rsSet.add(registration);
		adSet.add(roomInstanceLoad);
		roomInstanceLoad.setRegistration(rsSet);
		status=(int) session.save(roomInstanceLoad);
		
		transaction.commit();  
		session.close();    
	 }
	 catch(Exception e){
		e.printStackTrace();
		if(transaction!=null){
			transaction.rollback();
		}
	}		
	

	return status;
}
	
	
}
