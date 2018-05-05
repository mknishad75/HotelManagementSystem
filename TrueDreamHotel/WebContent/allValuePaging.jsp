<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/dataTables.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/datatables.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
    
    $("#example").dataTable( {
        "bProcessing": false,
        "bServerSide": false,
        "sort": "position",
          	
	    
        "sAjaxSource": "./PaginationValue",
        "aoColumns": [
                      
            { "mData": "addRoomId" },
			{ "mData": "roomName" },
			{ "mData": "roomPrice" },			
			{
                "render": function (data, type, JsonResultRow, meta) {
                    return '<img height=50 width=50 src="uploadFiles/'+JsonResultRow.imageName+'">';
                }
            },
			{ "mData": "roomStatus" },
			{ "mData": "roomDescription" },			
			{	
				"render": function (data, type, JsonResultRow, meta) {
                	return '<form action="${pageContext.request.contextPath}/myservlet" method="post"><input type="hidden" name="roomId" value="'+JsonResultRow.addRoomId+'"/><input type="submit" name="View" value="View"/><input type="submit" name="Update" value="Update"/><input type="submit" name="Delete" value="Delete"/></form>'
				}
            },
			
        ]
    
    
        
    } );

} );

</script>
</head>
<body style="background-image: url('images/background.jpg');">
<div class="container">
	<div class="row">
		<div class="col-sm-10 col-sm-offset-2"  style="text-align: center;"> 
			<!-- <form action=""> -->
				<h2 style="color: whitesmoke">Room Details<br><br></h2>
				<table width="80%" style="border: 6px;background: rgb(243, 244, 248);background-color: #8f94a4; ">
					<tr>
						<td>
						    <table id="example" class="display" cellspacing="0" width="100%" >
						        <thead>
						            <tr>
						            	<th>Room ID</th>
						                <th>Room Name</th>
						                <th>Price</th>
						                <th>Image</th>
						                <th>Status</th>
						                <th>Description</th> 
						                <th>Action</th>              
						            </tr>
						        </thead>       
						    </table>
				    	</td>
				    </tr>
				</table>
			<!-- </form> -->
		</div>
	</div>
</div>
<jsp:include page="footer.html"></jsp:include>
</body>
</head>



</html>