<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<font color=red size=5>${MSG}</font>
<form action="roomdetails" method="post">
<table align="center">
<tr>

<td>Available Room</td> 
<td> <select name="roomName">
<option>Select Room</option>
<option value="delux ac with food"> delux ac with food</option>
<option value="deleux ac without food">deleux ac without food</option>
<option value="deleux premimum">deleux premimum</option>
<option value="delux All Facility">delux All Facility</option>
</select>
</td>
<tr>
<td>Price</td>
<td><input type="text" name="price">
</tr>

<tr>
<td>Status</td>
<td><input type="text" name="status">
</tr>

<tr>
<td><input type="submit" Value="Add Room">
</tr>


</table>

</form>

<jsp:include page="footer.html"></jsp:include>
</body>
</html>