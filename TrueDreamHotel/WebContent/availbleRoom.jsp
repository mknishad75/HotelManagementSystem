<%@page import="util.AddRoomTo"%>
<%@page import="domain.AddRoom"%>
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
<body>
<table>
<%
            Object roomImage=request.getAttribute("ByteRoomImg");

              %>
	
	<center><img width="450px" height="450px"  alt="img" src="data:image/jpeg;base64,<%=roomImage %>"/></center><br/>
	


</table>
<div id="content">
    <%
          //  AddRoomTo roomValue=(AddRoomTo)request.getAttribute("AddRoomInstance");
            AddRoomTo roomValue=(AddRoomTo)request.getAttribute("RetrieveRoomInstance");
            %>
        

<center><img src="uploadFiles/<%=roomValue.getImageName() %>" width="450px" height="450px" /></center> 
    <table border="0" cellpadding="10" align="center">
        

        <thead>
            <tr>
                
                <th>Room Name</th>
                <th>Price</th>
                <th>Status</th>
                <th>About Room</th>
            </tr>
        </thead>
        <tbody>


            	
            <tr>
              
                <td><%=roomValue.getRoomName() %></td>
                <td><%=roomValue.getRoomPrice() %></td>
                <td><%=roomValue.getRoomStatus() %></td>
                <td><%=roomValue.getRoomDescription() %></td>
            </tr>               

            

        </tbody>
    </table>
</div>
 
<%
	
	/* AddRoomDao addRoomDao=DaoFactory.getRoomDao();
	AddRoomTo roomValue=addRoomDao.getAddRoomById(2);
	
	*/
	
	
	

		%>
</body>
</html>