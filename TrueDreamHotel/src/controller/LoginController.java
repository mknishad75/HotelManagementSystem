package controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;

import service.LoginService;
import service.RegistrationService;
import domain.Registration;

public class LoginController {

	
	public Registration getLoginAuthentication(Registration regInstance,HttpServletRequest request){
		HttpSession session=request.getSession();
		String email=(String)session.getAttribute("UserEmail");
		System.out.println("login controller : "+email);
		Registration resultRegistrationInstance = null;
		String loginEmail = regInstance.getEmail();
		String loginPassword = regInstance.getPassword();	
		
		if(loginEmail != null && !loginEmail.isEmpty() && loginPassword != null && !loginPassword.isEmpty()){
			LoginService loginServiceInstance = new LoginService();
			session.setAttribute("UserEmail", email);
			resultRegistrationInstance = loginServiceInstance.validateLoginCredential(loginEmail, loginPassword,request);			 
		}		
		return resultRegistrationInstance;
	}
	
	public Map<String, String> setSignUpDetails(Registration regInstance)
	{
	
		int status=0;
		Map<String, String> registrationResponse = null;
	    String regName=regInstance.getUserName();
	    String regEmail=regInstance.getEmail();
	    Long regPhone=regInstance.getPhone();
	    String regPassword=regInstance.getPassword();
	    String regUserType=regInstance.getRoleType();
		
	    if(regName!=null && !regName.isEmpty() && regEmail!=null && !regEmail.isEmpty() && regPassword!=null && !regPassword.isEmpty()){
			RegistrationService registrationServiceInstance=new RegistrationService();
			System.out.println("login strat");
			registrationResponse=registrationServiceInstance.validateRegsitrationService(regName,regEmail,regPhone,regPassword,regUserType);
			System.out.println("login end");
		}
		return registrationResponse;
	    
	}
	
}
