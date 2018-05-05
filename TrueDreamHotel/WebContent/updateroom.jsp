<%@page import="util.AddRoomTo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<%
			    AddRoomTo addRoomInstance=(AddRoomTo)request.getAttribute("RetrieveRoomInstance");
			
			%>
			
			
			<form method="post" action="updateValue" enctype="multipart/form-data">
			<table align="center">
			<tr><tr><td>Room id</td>
			<td><input type="text" name="roomId" value="<%=addRoomInstance.getAddRoomId() %>" /></td>
			
			</tr>
			
			<tr><tr><td>Room Name</td>
			<td><input type="text" name="roomName" value="<%=addRoomInstance.getRoomName() %>" /></td>
			
			</tr>
			<tr><td>Price</td>
			<td><input type="text" name="roomPrice" value="<%=addRoomInstance.getRoomPrice() %>"></td>
			</tr>  
			<tr><td>Image</td>
			<td><input type="file" name="roomImage"  src=<%=addRoomInstance.getImageName() %> /><%=addRoomInstance.getImageName() %></td>
			</tr>
			<tr><td>Status</td>
			<td><input type="text" name="roomStatus" value="<%=addRoomInstance.getRoomStatus() %>"/></td>
			</tr>
			<tr><td>Description</td>
			<td><textarea rows="4" cols="20" name="roomDescription" > 
			<%=addRoomInstance.getRoomDescription() %>
			</textarea></td>
			</tr>
			<center>
			<tr>
			<td><input type="submit" id="addRoom" name="AddRoom" value="Update"/></td>
			</tr>
			</center>
			</table>
			</form>
		</div>
	</div>
</div>
</body>


<script type="text/javascript">

</script>
</html> 