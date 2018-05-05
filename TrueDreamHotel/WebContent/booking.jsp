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
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/styl.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	
	<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      /* width: 70%;*/
      margin: auto;
  }
  </style>
	
</head>
<body>
 <div class="col-sm-4"id="myCarousel" class="carousel slide" data-ride="carousel">
		 <ol class="carousel-indicators">
	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	<li data-target="#myCarousel" data-slide-to="1"></li>
	<li data-target="#myCarousel" data-slide-to="2"></li>
	<li data-target="#myCarousel" data-slide-to="3"></li>
</ol>

	 <div class="carousel-inner" role="listbox">
	 <div class="item active">
	 	<img src="images/gallery-1.jpg" alt="Chania" width="300" height="345">
	 </div>

	 <div class="item">
	 	<img src="images/gallery-2.jpg" alt="Chania" width="300" height="345">
	 </div>

	<div class="item">
	<img src="images/gallery-3.jpg" alt="Flower" width="300" height="345">
	</div>

	<div class="item">
	<img src="images/gallery-4.jpg" alt="Flower" width="300" height="345">
	</div>
</div>	

<table width="300px" align="center">

<tr>
<td>Room Type</td>
<td>Price</td>
<td>status</td>
</tr>
<br/><tr><td colspan="3" align="center"><button type="submit" name="submit">book</button></td></tr><br/>
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