<%@page import="java.util.Iterator"%>
<%@page import="service.UserService"%>
<%@page import="domain.RoomDetails"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link href="css/bootstrap.min.css" rel="stylesheet" />
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<RoomDetails> al=UserService.availableRoom();
Iterator<RoomDetails> it=al.iterator();
%>
<table class="table">
           <thead>
               <tr>
                   
                   <th>Room Name</th>
                   <th>Price</th>
                    <th>Status</th>
                    
                  
                  
               </tr>
           </thead>
           <tbody>
<%
while(it.hasNext())
{
	RoomDetails room=it.next();
	out.print("<tr class='success'>");
	out.print("<td>"+room.getRoomName()+"</td><td>"+room.getPrice()+"</td><td>"+room.getStatus());
}
%>
  </tbody>
       </table>


</body>
</html>