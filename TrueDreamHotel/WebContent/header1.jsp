<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
			<link rel="stylesheet" href="assets/demo.css">
			<link rel="stylesheet" href="assets/header-user-dropdown.css">
			<link href='http://fonts.googleapis.com/css?family=Cookie' rel='stylesheet' type='text/css'>
			<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
		  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		</head>
		
		<body>
			<header class="header-user-dropdown">
				<div class="header-limiter">
					<h1><a href="#">TrueDream<span>Hotel</span></a></h1>
					<nav>
						<a href="index.html">HOME</a>
						<a href="#">ABOUT</a>
						<a href="#">GALLERY</a>
						<a href="#">BOOKING</a>
						<a href="login5.jsp">LOGIN</a>
						<a href="#">OFFER <span class="header-new-feature">new</span></a>
					</nav>			
					<div class="header-user-menu">
						<img src="images/pic.jpg" alt="User Image"/>			
						<ul>
						   <li><a href="#">Settings</a></li>
						   <li id="#"><a href="signup.jsp">Signup</a></li>
						   <% %>
							<li id="loginModel"><a href="#">Login</a></li>
							<li><a href="logout.jsp" class="highlight">Logout</a></li>
						</ul>
					</div>			
				</div>
			</header>
			
			<!-- Login - Start. -->
			<div class="menu">
			
			<div id="loginResponse"> </div>
			</div>
			<div class="container">  
			  <!-- Modal -->
			  <div class="modal fade" id="myLoginModal" role="dialog">
			    <div class="modal-dialog">			
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 style="color:red;"><span class="glyphicon glyphicon-lock"></span> Login</h4>
			        </div>
			        <div class="modal-body">
			          <form id="loginForm" role="form" method="post">
			            <div class="form-group">
			              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
			              <input type="email" name="email" class="form-control" id="usrname" placeholder="Enter email">
			            </div>
			            <div class="form-group">
			              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
			              <input type="password" name="password" class="form-control" id="psw" placeholder="Enter password">
			            </div>
			            <div class="checkbox">
			              <label><input type="checkbox" value="" checked>Remember me</label>
			            </div>
			            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
			          </form>
			        </div>
			        <div class="modal-footer">
			          <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
			          <p>Not a member? <a id="#" >Sign Up</a></p>
			          <p>Forgot <a href="#">Password?</a></p>
			        </div>
			      </div>
			    </div>
			  </div> 
			</div>
			<!-- Login - End. -->		
					
			<!-- SignUp - Start. -->
			<div class="menu">
			
			<div id="signUpResponse"> </div>
			</div>
			<div class="container">  
			  <!-- Modal -->
			  <div class="modal fade" id="MySignUpModal" role="dialog">
			    <div class="modal-dialog">			
			      <!-- Modal content-->
			      <div class="modal-content">
			        <div class="modal-header">
			          <button type="button" class="close" data-dismiss="modal">&times;</button>
			          <h4 style="color:red;"><span class="glyphicon glyphicon-lock"></span>SIGNUP</h4>
			        </div>
			        
			        <div class="modal-body">
			          <form id="signUpForm" role="form" method="post">
			          <div class="form-group">
			              <label for="name"><span class="glyphicon glyphicon-user"></span>Name</label>
			              <input type="text" name="signUpUsrName" class="form-control" id="signUpUsrName" placeholder="Enter Your Name">
			            </div>
			          
			            <div class="form-group">
			              <label for="email"><span class="glyphicon glyphicon-user"></span>Email</label>
			              <input type="email" name="signUpEmail" class="form-control" id="signUpEmail" placeholder="Enter email">
			            </div>
			            <div class="form-group">
			              <label for="phone"><span class="glyphicon glyphicon-user"></span>Phone</label>
			              <input type="text" name="signUpPhone" class="form-control" id="signUpPhone" placeholder="Enter Phone">
			            </div>
			            
			            <div class="form-group">
			              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
			              <input type="password" name="signUpPassword" class="form-control" id="signUpPassword" placeholder="Enter password">
			            </div>
			            <div class="form-group">
			              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span>UserType</label>
			              <input type="text" name="signUpUserType" class="form-control" id="signUpUserType" placeholder="Enter password">
			            </div>
			            <div class="checkbox">
			              <label><input type="checkbox" value="" checked>Remember me</label>
			            </div>
			            <button type="submit" class="btn btn-default btn-success btn-block"><span class="glyphicon glyphicon-off"></span>Submit Now</button>
			          </form>
			        </div>
			        <div class="modal-footer">
			        <button type="submit" class="btn btn-default btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
			       </div>
			      </div>
			    </div>
			  </div> 
			</div>
			<!-- SignUp - End -->						
			<script>			
				$(document).ready(function(){			
					var userMenu = $('.header-user-dropdown .header-user-menu');			
					userMenu.on('touchend', function(e){			
						userMenu.addClass('show');			
						e.preventDefault();
						e.stopPropagation();			
					});
					
					$("#signUpModel").click(function(){
				        $("#MySignUpModal").modal();
				    });
			
					// This code makes the user dropdown work on mobile devices			
					$(document).on('touchend', function(e){			
						// If the page is touched anywhere outside the user menu, close it
						userMenu.removeClass('show');			
					});
					
					$("#loginModel").click(function(){
				        $("#myLoginModal").modal();
				    });
					
					$("#loginForm").submit(function(event){
						event.preventDefault();
						var formData = {								
					            'email' 	 : $('input[name=email]').val(),
					            'password'   : $('input[name=password]').val()					            
					       	};
						console.log("formData ::: "+formData);						 
					  	$.ajax({
				            type: 'POST', 
				            url: "/TrueDreamHotel/NavigationalController?service=userLoginDetailsService",
				            data: formData,	
				            dataType: "json",
				            success: function(data, textStatus, jqXHR) {
			                     if(data.success){
			                         $("#loginResponse").html("");
			                         $("#loginResponse").append("<b> <center> Welcome to MyDreamHotel Mr/Mrs : </b> " + data.registrationDetails.userName) + "</center>";				                       
			                     } 
			                     //display error message
			                     else {
			                         $("#loginResponse").html("<div><b>Invalid Login Credential!!!</b></div>");
			                     }
			                     $("#myLoginModal").modal("hide");
			                },
				            
				            error: function(jqXHR, textStatus, errorThrown) { // What to do if we fail				                
				                console.log("AJAX error: " + textStatus + ' : ' + errorThrown);
				            }
				        });						
					});	
					
					$("#signUpForm").submit(function(event){
						event.preventDefault();
						alert("signUp");
						var signUpData={
							'name' : $('input[name=signUpUsrName]').val(),
							'email':$('#signUpEmail').val(),							
							'phone' :$('input[name=signUpPhone]').val(),
							'password' :$('input[name=signUpPassword]').val(),
							'userType' :$('input[name=signUpUserType]').val()
						};			
						
						$.ajax({
								type:'post',
								url:"/TrueDreamHotel/NavigationalController?service=userSignupDetailService",
								data: signUpData,
							    dataType: "json",
							    success:function(data,textStatus){	
							    	if(data.success){		
							    		$("#signUpResponse").html("");
				                        $("#signUpResponse").append("<b><center>Your Registration is SucessFully Mr/Ms </b> " +data.registrationSignUpDetails.usrName) + "</center>";
				                     }
							    	else{
							    		$("#signUpResponse").html("<div><b>Invalid Login Credential!!!</b></div>");
							    	}
							    	$("#MySignUpModal").modal("hide");
							    },					    
							    error: function(jqXHR, textStatus, errorThrown) { // What to do if we fail		                
					                console.log("AJAX error: " + textStatus + ' : ' + errorThrown);
					            }
							});					
						})
					});					
			</script>
		</body>
	</html>
