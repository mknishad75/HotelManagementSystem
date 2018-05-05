<%@page import="java.util.Iterator"%>
<%@page import="domain.Registration"%>
<%@page import="service.UserService"%>
<%@page import="java.util.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <link href="css/bootstrap.min.css" rel="stylesheet" />
<title>All Register Guest</title>
</head>
<body>
<h1>All Register Guest Are Shown Below:-</h1>
<%

ArrayList<Registration> al=UserService.userDetail();
Iterator<Registration> it=al.iterator();
%>
<table class="table">
           <thead>
               <tr>
                   <th>GuestId</th>
                   <th>Name</th>
                   <th>Email</th>
                   <th>phone</th>
                   <th>UserType</th>
                   <th>GuestAddress</th>
                   <th>Id Proof</th>
                   <th>Delete</th>
               </tr>
           </thead>
           <tbody>



		<%
		while(it.hasNext())
		{
			Registration reg=it.next();
			out.print("<tr class='success'>");
			out.print("<td>"+reg.getRegId()+"</td><td>"+reg.getUserName()+"</td><td>"+reg.getEmail()+
			"</td><td>"+reg.getPhone()+"</td><td>"+reg.getRoleType());
			
		}%>
         </tbody>
       </table>

</body>
</html>