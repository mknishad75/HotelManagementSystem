<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Table</title>
<script type="text/javascript">
function validate() 
{
	if(document.form.mcity.value=="")
	{
		alert("please enter your city");
		return false;
	}
	else if(document.form.mstate.value=="")
		{
		alert("please enter your state");
		return false;
		}
	else if(document.form.mzcode.value=="")
	{
		alert("please enter your zcode");
		return false;
	}

	else if(document.form.bcity.value=="")
	{
		alert("please enter your city");
		return false;
	}
	else if(document.form.bstate.value=="")
	{
		alert("please enter your state");
		return false;
	}
	else if(document.form.bzcode.value=="")
	{
		alert("please enter your zcode");
		return false;
	}
	else if(document.form.vcity.value=="")
	{
		alert("please enter your city");
		return false;
	}
	else if(document.form.vstate.value=="")
	{
		alert("please enter your state");
		return false;
	}
	else if(document.form.vzcode.value=="")
	{
		alert("please enter your zcode");
		return false;
	}
	
	else {	
		return true;
	}

}	
	</script>
</head>
<body bgcolor="#F7DC6F  ">
<form action="BookingDetail" method="post" name="form" onsubmit="return validate() ">
<table border="0" align="center">

<tr height="30"><td width="300px"><b>No of Day To Stay:</b></td><td><input type="text" name="tday"  /></td></tr>
<h1>Room Type</h1>
<select name="dropdown">
<option value="oroom" ><a href="#">Only Room</option>
<option value="wbfast"><a href="#">Included Breakfast</option>
<option value="wbfast"><a href="#">With All Facility</option>
</select>

<tr height="30"><td ><b>Cost Per Night:</b></td><td><input type="text" name="ncost"  /></td></tr>


<tr height="30" align="center" ><td colspan="2"><h2><b>Malling Address:</b></h2></td></tr>
<tr><td><b>City:</b></td><td><input type="text" name="mcity" /></td></tr>
<tr><td><b>State:</b></td><td><input type="text" name="mstate" /></td></tr>
<tr><td><b>Zip Code:</b></td><td><input type="text" name="mzcode" /></td></tr>




<tr height="30" align="center"><td colspan="2"><h2><b>Billing Address:</b></h2></td></tr>
<tr><td><b>City:</b></td><td><input type="text" name="bcity" /></td></tr>
<tr><td><b>State:</b></td><td><input type="text" name="bstate" /></td></tr>
<tr><td><b>Zip Code:</b></td><td><input type="text" name="bzcode" /></td></tr>



<tr height="30" align="center"><td colspan="2"><h2><b>Visiting Address:</b></h2></td></tr>
<tr><td><b>City:</b></td><td><input type="text" name="vcity" /></td></tr>
<tr><td><b>State:</b></td><td><input type="text" name="vstate" /></td></tr>
<tr><td><b>Zip Code:</b></td><td><input type="text" name="vzcode" /></td></tr>

 <tr><td align="center" height="70px" colspan="2"><button type="submit" name="submit" value="Book Now" style="background-color: #6b8bbb">SUBMIT</button></td></tr>
</table>
</form>
</body>
</html>