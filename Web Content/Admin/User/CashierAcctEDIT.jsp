<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>EVA:CASHIER USER</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("idemployee_account"));
		dbtbUser c=UserCRUDDAO.getRecordE(id);
	%>
	<form action="CasA.jsp">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
					  <div class="modal-content">
					    <div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal">&times;</button>
    							<h3 class="modal-title">Add Cashier Account</h3>
   						</div>
	        		<div class="modal-body">
	        		<input type="hidden" name="idemployee_account" value="<%=id %>">
	        		<input type="hidden" name="id" id="P_ID">
					<label>Name</label>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM cashier_record  WHERE ECashierID=" + id);
				    		
				    		
				    %>
											<% while(rs.next()){ %>
											<input type="text" name="" value="<%=rs.getInt(1) %>">
											con.close();
										
											 <%
											 }}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
					<label>Username</label><input type="text" name="Username"  value="<%=c.getUsername() %>" data-error="limit up to 30 characters only" size=60 required><br/>
					<label>Password</label><input type="text" name="pswrd" value="<%=c.getpswrd() %>" data-error="limit up to 30 characters only" size=60 required><br/>
					<label>Repeat Password</label><input type="text" name="rpswrd" value="<%=c.getpswrd() %>" data-error="not match for password" size=60 required> <br/>
					<label>NumOfAttempts</label><input type="text" name="NumOfAttempts" value="<%=c.getNumOfAttempts() %>" data-error="Digits(0-9) only"size=60 required><br/>
					<label>Status</label><input type="text" name="status" data-error="limit up to 30 characters only" size=60 value="<%=c.getstatus() %>"><br/>
			</div>
						<div class="modal-footer">
  							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  							<input type='reset' class="btn btn-default">
						<button type="submit" name="crud" class="btn btn-default" value="Update Record">Update Record</button>
						<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
      					</div>
   					</div>
 				</div>
			</div>		
		</form>
		<jsp:include page="CashierAcct.jsp"></jsp:include>
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
</html>