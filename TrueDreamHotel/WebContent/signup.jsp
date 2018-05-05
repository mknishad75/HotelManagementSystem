<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
		  	<script src="js/jquery.min.js"></script>
		  	<script src="js/bootstrap.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			
			$("#MySignUpModal").modal('show');
		});
				
		</script>
</head>
<body>
<jsp:include page="index.jsp"/>
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
			              <label for="name"><span class="glyphicon glyphicon-user"></span>Enter Your Name</label>
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
			              <input type="text" name="signUpUserType" class="form-control" id="signUpUserType" placeholder="Plaese Enter User Type">
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