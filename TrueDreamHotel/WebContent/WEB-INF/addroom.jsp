<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addroom" method="post">
<table align="center">

<tr><td>Room Name</td>
<td><input type="text" name="roomName"/></td>
</tr>
<tr><td>Room Price</td>
<td><input type="text" name="roomPrice"/></td>
</tr>
<tr><td>Room Image</td>
<td><input type="text" name="roomImage"/></td>
</tr>
<tr><td>Room Status</td>
<td><input type="text" name="roomStatus"/></td>
</tr>
<tr><td>Room Description</td>
<td><input type="text" name="roomDescription"/></td>
</tr>
<tr>
<td><input type="submit" name="AddRoom" value="Add"/></td>
</tr>
</table>
</form>
</body>
</html>