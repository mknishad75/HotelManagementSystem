<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function(){			
				$("#myLoginModal").modal('show');			
			});
		</script>
	</head>
	<body>
		<jsp:include page="index.jsp" />
		<div class="menu">
			<input type="hidden" id="loggedUserName" value=""/>			
		</div>
		<div class="container">
			<!-- Modal -->
			<div class="modal fade" id="myLoginModal" role="dialog">
				<div class="modal-dialog">
					<!-- Modal content-->
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 style="color: red;">
								<span class="glyphicon glyphicon-lock"></span> Login
							</h4>
						</div>
						<div class="modal-body">
							<form id="loginForm" role="form" method="post">
								<div class="form-group">
									<label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label> 
									<input type="email" name="username" class="form-control" id="username" placeholder="Enter email">
									<span id="usrNameErrMsg" style="color: red;"></span>										
								</div>
								<div class="form-group">
									<label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label> 
									<input type="password" name="passwrd" class="form-control" id="passwrd" placeholder="Enter password">
									<span id="passwordErrMsg" style="color: red;"></span>
								</div>
								<div class="checkbox">
									<label><input type="checkbox" value="" checked>Remember	me</label>
								</div>
								<div align="center">
									<button type="submit" class="btn btn-default btn-success btn-block" style="width:100px;">
										<span class="glyphicon glyphicon-off"></span> Login
									</button>
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="submit" class="btn btn-default btn-default pull-left"	data-dismiss="modal">
								<span class="glyphicon glyphicon-remove"></span> Cancel
							</button>
							<p>Not a member? <a href="signup.jsp">Sign Up</a></p>
							<p>Forgot <a href="#">Password?</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Login - End. -->	
		<script type="text/javascript">
			$(document).ready(function(){			
				var userMenu = $('.header-user-dropdown .header-user-menu');			
				userMenu.on('touchend', function(e){			
					userMenu.addClass('show');			
					e.preventDefault();
					e.stopPropagation();			
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
					
					$("#usrNameErrMsg").html("");
					$("#passwordErrMsg").html("");
					
					var _emailVal = $("#username").val();
					var _passwordVal = $("#passwrd").val();
					
					if(_emailVal != undefined && _emailVal != "" && _passwordVal != undefined && _passwordVal != "" ){
						
						$("#usrNameErrMsg").html("");
						$("#passwordErrMsg").html("");
						
						var formData = {								
					            'email' 	 : _emailVal,
					            'password'   : _passwordVal					            
					       	};
						console.log("formData ::: "+formData);						 
					  	$.ajax({
				            type: 'POST', 
				            url: "/TrueDreamHotel/NavigationalController?service=userLoginDetailsService",
				            data: formData,	
				            dataType: "json",
				            success: function(data, textStatus, jqXHR) {
				                 if(data.success){
				                	 $("#loggedUserName").val(data.registrationDetails.userName);
				                     $("#loginResponse").html("<b><center> Welcome to MyDreamHotel Mr/Mrs : </b> "+data.registrationDetails.userName+"</center>");				        
				                     $("#loginLink").hide();
				                     $("#logoutLink").show();
				                 } 
				                 //display error message
				                 else {
				                     $("#loginResponse").html("<b><center>Invalid Login Credential!!!</b></center>");
				                     $("#loginLink").show();
				                     $("#logoutLink").hide();
				                 }
				                 $("#myLoginModal").modal("hide");
				            },
				            
				            error: function(jqXHR, textStatus, errorThrown) { // What to do if we fail				                
				                console.log("AJAX error: " + textStatus + ' : ' + errorThrown);
				            }
				        });	
						
					}else{
						if(_emailVal == undefined || _emailVal == ""){									
							 $("#usrNameErrMsg").html("<i>Please insert the UserName.</i>");
						}
						
						if(_passwordVal == undefined || _passwordVal == "" ){							
							$("#passwordErrMsg").html("<i>Please insert the Password.</i>");
						}
					}	
										
				});	
			});
			</script>
		</body>
	</html>