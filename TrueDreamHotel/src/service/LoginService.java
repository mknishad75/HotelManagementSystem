package service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import controller.RoomAdminDetails;
import domain.Registration;
import util.JdbcConnectionUtil;

public class LoginService {

	public Registration validateLoginCredential(String loginEmail, String loginPassword,HttpServletRequest request){
		HttpSession session=request.getSession();
		String userEmail=(String)session.getAttribute("UserEmail");
		System.out.println("login service : "+userEmail);
		
		Registration registrationInstance = null;
		Connection con=JdbcConnectionUtil.getConnection();		  
		String sql="select * from mycustomers where email=? and password=? ";
		
		try {			
			PreparedStatement preStatement = con.prepareStatement(sql);			
			preStatement.setString(1,loginEmail);
			preStatement.setString(2,loginPassword);
		    ResultSet resultSet = preStatement.executeQuery();	    
		   
	    	while(resultSet.next()){
		    	int regId=resultSet.getInt("regId");
		    	String userName = resultSet.getString("userName");
		        String email = resultSet.getString("email");
		    	Long phone = resultSet.getLong("phone");
		    	String roleType = resultSet.getString("userType");
		    	
		    	if(userName != null && !userName.isEmpty()){
		    		registrationInstance = new Registration();
		    		registrationInstance.setUserName(userName);
		    		registrationInstance.setEmail(email);
		    		registrationInstance.setPhone(phone);
		    		registrationInstance.setRoleType(roleType);	
		    		session.setAttribute("REGID",regId);
		    		
		    		System.out.println("RegistrationInstance value ::: " + registrationInstance);
				    int regIdVal=(Integer)session.getAttribute("REGID");
				    System.out.println("login service Id"+regIdVal);
				    RoomAdminDetails.loginValue(request);
		    	}		    
		    }		   	    
		}
		catch(Exception e){
				e.printStackTrace();
			}
		return registrationInstance;
	}
	
	public Map<String, String> validateRegsitrationService(String regName,String regEmail,Long regPhone,String regPassword,String regUserType) {		
		int insertStatus = 0;
		Map<String, String> registrationResponse = null;
		Connection con = null;
		PreparedStatement preState = null;
		JdbcConnectionUtil.clearConnection(null, preState, con);
		String sql="insert into user(name,email,phone,password,userType)values(?,?,?,?,?)";
		try {
			con = JdbcConnectionUtil.getConnection();
			preState = con.prepareStatement(sql);
			preState.setString(1,regName);
			preState.setString(2,regEmail);
			preState.setLong(3,regPhone);
			preState.setString(4,regPassword);
			preState.setString(5,regUserType);
			
			insertStatus = preState.executeUpdate();				
			if(insertStatus > 0){
				registrationResponse = new HashMap<String, String>();
				registrationResponse.put("usrName", regName);				
			}		
			 System.out.println("registrationResponse value ::: " + registrationResponse);
		} catch (Exception e) {		
			e.printStackTrace();
		}finally{
			JdbcConnectionUtil.clearConnection(null, preState, con);
		}
		return registrationResponse;
	}

}
