<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head> 
<body>
<%@page import= "java.sql.*"%>
<%
String email=request.getParameter("email");
String pass=request.getParameter("password");
session.setAttribute("a",email);
session.setAttribute("b",pass);
String aa=(String)session.getAttribute("a");
String bb=(String)session.getAttribute("b");
String dbUrl = "jdbc:mysql://localhost:3306/hotel";
String dbClass = "com.mysql.jdbc.Driver";
String str1,str2,str3;
String qry="select * from register";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(dbUrl,"root","rahul");

Statement stmt = con.createStatement();
ResultSet rs=stmt.executeQuery(qry);
while(rs.next()){
str1=rs.getString("email");
str2=rs.getString("pass1");

if(str1.equals(aa)&& str2.equals(bb))
{
	id=1;
	break;
}
}





}
catch(Exception ex){
	   
response.getWriter().print(ex);
	   
}

%>
<%
if(id==1)
{
	

%>
<h1>Welcome To Hotel Room</h1>
<jsp:forward page="Book.jsp"></jsp:forward>
<%} else{
	
	%>
<p id="p1">Wrong E-mail ID or Password</p>


<%

} %>
</body>
<style>
#p1
{
top:650px;
left:30px;
}
</style>
</html>