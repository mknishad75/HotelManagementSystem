
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
		<head>
			<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
			<meta name="viewport" content="width=device-width, initial-scale=1">
		  	<link rel="stylesheet" href="css/bootstrap.min.css">
		  	<script src="js/jquery.min.js"></script>
		  	<script src="js/bootstrap.min.js"></script>
		
			<title>Home</title>			
		</head>
		<body>
			<jsp:include page="header.jsp"></jsp:include>
			<div id="loginResponse"></div>
			<center><font color=red size=5>${MSG}</font></center>
			<pre>
			
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="Register User" onclick="window.location.href='RegisterUser.jsp'" />
				
			
				<form>
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="Available Room" onclick="window.location.href='booking.jsp'" />
				</form>
			
				<form>
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="Book Room" onclick="window.location.href='roomdetails.jsp'" />
				</form>	
					
				<form>
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="Add Room" onclick="window.location.href='addroom.jsp'" />
				</form>		
				<form>
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="All Room" onclick="window.location.href='retriveRoom.jsp'" />
				</form>
				
				<form>
				<input style="width: 300px; padding: 20px; cursor: pointer; box-shadow: 6px 6px 5px; #999; -webkit-box-shadow: 6px 6px 5px #999; -moz-box-shadow: 6px 6px 5px #999; font-weight: bold; background: #ffff00; color: #000; border-radius: 10px; border: 1px solid #999; font-size: 150%;" 
				type="button" value="Booking Room" onclick="window.location.href='roomBooking.jsp'" />
				</form>	
				<a href="recordPaging.jsp">Display All Record</a>
						<a href="allValuePaging.jsp">Display All Room Value</a>
			</pre>
					
			<jsp:include page="footer.html"></jsp:include>
	
		</body>
	</html>