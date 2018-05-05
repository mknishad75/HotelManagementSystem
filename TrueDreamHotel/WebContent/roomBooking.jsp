<%@page import="util.AddRoomTo"%>
<%@page import="java.util.*"%>
<%@page import="Dao.DaoFactory"%>
<%@page import="Dao.AddRoomDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-image: url('images/background.jpg');">
<div>
<jsp:include page="header.jsp"></jsp:include>
</div>

<div class="container">
	<div class="row content">
		<div class="col-sm-12">
<%
	Object roomImage=request.getAttribute("ByteRoomImg");
	
int count=0;
AddRoomDao addRoomDao=DaoFactory.getRoomDao();
 ArrayList<AddRoomTo> roomData=addRoomDao.getRoomByPagination();
 Iterator<AddRoomTo> it=roomData.iterator();
 while(it.hasNext())
 {
 	count++;
 	
 		
 		AddRoomTo roomValue=it.next();
 		
%>
			 <div align="center" class="col-sm-5" style="font-weight:bolder; border: 1px groove black;text-align: center; padding: 15px 15px 15px 15px;margin: 20px 20px 20px 60px;background-color:#b3dac9;">
            	<img src="uploadFiles/<%=roomValue.getImageName() %>" width="450px" height="450px" /><br>
            	<form  action="bookroom"  enctype="multipart/form-data">
            	<input type="hidden" name="roomId" value=<%=roomValue.getAddRoomId() %>>
            
            	<table  width="450px">
            	
            	<tr><td colspan="2"><%=roomValue.getRoomDescription() %></td></tr>
            	<tr><td>Room Name :</td><td> <%=roomValue.getRoomName() %></td></tr>
            	<tr><td>Price :</td><td> <%=roomValue.getRoomPrice() %></td></tr>
            	<tr><td>Status :</td><td><%=roomValue.getRoomStatus() %></td></tr>
              	<tr><td>Status :</td><td><%=roomValue.getAddRoomId() %></td></tr>
            	<tr><td colspan="2"><button type="submit" name="Book Now">Book Now</button></td></tr>
            
            	
            	</table>
            	</form>
            </div>
            	
<%

 }	
%>			
			 <div class="col-sm-12">
            	<ul class="pager">
					<li class="previous disabled"><a href="#">&larr;Previous</a></li>
					<li class="next"><a href="#">Next &rarr;</a></li>
				</ul>
            </div>
		</div>
	</div>
</div>
<div><jsp:include page="footer.html"></jsp:include></div>
</body>
</html>