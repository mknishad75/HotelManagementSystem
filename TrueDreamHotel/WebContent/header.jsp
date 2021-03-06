<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
		<head>
			<style type="text/css">
			.header-user-dropdown {
				background-color:#292c2f;
				box-shadow:0 1px 1px #ccc;
				padding: 20px 40px;
				height: 80px;
				color: #ffffff;
				box-sizing: border-box;
			}
			.header-user-dropdown .header-limiter {
				max-width: 1200px;
				text-align: center;
				margin: 0 auto;
			}
			/* Logo */
			
			.header-user-dropdown .header-limiter h1{
				float: left;
				font: normal 28px Cookie, Arial, Helvetica, sans-serif;
				line-height: 40px;
				margin:0;
			}
			.header-user-dropdown .header-limiter h1 span {
				color: #bc40df;
			}
			/* The header links */
			
			.header-user-dropdown .header-limiter a {
				color: #ffffff;
				text-decoration: none;
			}
			.header-user-dropdown .header-limiter nav{
				font:16px Arial, Helvetica, sans-serif;
				line-height: 40px;
				float: left;
				margin: 0 0 0 60px;
				padding: 0;
			}
			.header-user-dropdown .header-limiter nav a{
				font-size: 14px;
				display: inline-block;
				padding: 0 12px;
				opacity: 0.9;
				position: relative;
				text-decoration:none;
				line-height: 1;
			}
			
			.header-user-dropdown .header-limiter nav a:hover {
				opacity: 1;
			}
			/* The "new" badge */
			.header-user-dropdown .header-limiter nav a span {
				position: absolute;
				top: -12px;
				border-radius: 2px;
				background-color: #2A6A92;
				box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
				height: 13px;
				font-size: 11px;
				right: -15px;
				padding: 1px 4px 0;
			}			
			/* The user menu */			
			.header-user-dropdown .header-limiter .header-user-menu{
				position: relative;
				float:right;
				background-color:#3a3c3e;
				width:75px;
				height:40px;
				border-radius:2px;
			}			
			.header-user-dropdown .header-limiter .header-user-menu:before{
				content:'';
				width:0;
				height:0;
				top: 18px;
				left: 15px;
				position:absolute;
				border:5px solid transparent;
				border-top-color:#fff;
			}			
			.header-user-dropdown .header-limiter .header-user-menu ul{
				display: none;
				font:bold 13px Arial, Helvetica, sans-serif;
				background-color: inherit;
				list-style: none;
				position: absolute;
				text-align: center;
				width: 125px;
				top: 25px;
				right: 0;
				padding: 10px;
				border-radius: 2px;
				box-shadow: 0 2px 2px rgba(0, 0, 0, 0.1);
				box-sizing: border-box;
			}			
			.header-user-dropdown .header-user-menu:active ul,
			.header-user-dropdown .header-user-menu:hover ul,
			.header-user-dropdown .header-user-menu.show ul{
				display:block;
			}			
			.header-user-dropdown .header-user-menu ul li{
				padding:5px;
			}			
			.header-user-dropdown .header-user-menu ul li a:hover{
				opacity:0.9;
			}			
			.header-user-dropdown .header-user-menu ul li a.highlight{
				color:#e9ac09;
			}			
			.header-user-dropdown .header-user-menu img{
				border-radius:50%;
				position:absolute;
				top:6px;
				max-width: 28px;
				right:10px;
			}			
			@media all and (max-width: 800px) {			
				.header-user-dropdown .header-limiter h1 {
					font-size: 24px;
				}			
				.header-user-dropdown .header-limiter nav a {
					padding: 0 5px;
				}			
				.header-user-dropdown .header-limiter nav {
					margin-left: 20px;
				}			
			}			
			@media all and (max-width: 600px) {			
				.header-user-dropdown .header-limiter nav {
					display: none;
				}			
			}	
			.modal-header, h4, .close {
			      background-color: #5cb85c;
			      color:white !important;
			      text-align: center;
			      font-size: 30px;
			  }
			  .modal-footer {
			      background-color: #f9f9f9;
			  }		
			</style>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">		
			<title>User Dropdown Header</title>		
			
			<link rel="stylesheet" href="css/bootstrap.min.css">
		  	<script src="js/jquery.min.js"></script>
		  	<script src="js/bootstrap.min.js"></script>
		</head>
		
		<body>
			<header class="header-user-dropdown">
				<div class="header-limiter">
					<h1><a href="#">TrueDream<span>Hotel</span></a></h1>
					<nav>
						<a href="index.jsp">HOME</a>
						<a href="#">ABOUT</a>
						<a href="#">GALLERY</a>
						<a href="#">BOOKING</a>
						<a href="login5.jsp">LOGIN</a>
						<a href="#">OFFER <span class="header-new-feature">new</span></a>
					</nav>			
					<div class="header-user-menu">
						<img src="images/pic.jpg" alt="User Image"/>			
						<ul class="dropdown-menu">
						   <li><a href="settingLink">Settings</a></li>
						   <li id="signUpLink"><a href="signup.jsp">Signup</a></li>
						   <li id="loginLink"><a href="login5.jsp">Login</a></li>
						   <li id="logoutLink" style="display: none"><a href="logout.jsp">Logout</a></li>
						   <%-- <%if(session.getAttribute("UserEmail")!=null ){ %>
						   <%=session.getAttribute("UserEmail") %>
							<li id="#"><a href="logout.jsp">Logout</a></li>
							<%}else{ %>
							<li id="#"><a href="login5.jsp">Login</a></li>
							<%} %> --%>
							<!--  <li><a href="logout.jsp" class="highlight">Logout</a></li>-->
						</ul>
					</div>			
				</div>
			</header>								
			<script>			
				$(document).ready(function(){			
					var userMenu = $('.header-user-dropdown .header-user-menu');			
					userMenu.on('touchend', function(e){			
						userMenu.addClass('show');			
						e.preventDefault();
						e.stopPropagation();			
					});
					
					$("#loginLink").click(function(){
						if($("#loggedUserName").val() != "" && $("#loggedUserName").val() != undefined){
							$("#loginLink").hide();
		                    $("#logoutLink").show();
						}						
					});
					
					$("#logoutLink").click(function(){
						if($("#loggedUserName").val() == "" && $("#loggedUserName").val() == undefined){
							$("#loginLink").show();
	                    	$("#logoutLink").hide();
						}
					});
				});					
			</script>
			
		</body>
	</html>
