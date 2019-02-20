<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:RELATIVE ACCOUNT</title>
</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("Client_Id"));
		dbtbUser c=UserCRUDDAO.getRecordC(id);
	%>
	<form action="CasA.jsp">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
					  <div class="modal-content">
					    <div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal">&times;</button>
    							<h3 class="modal-title">Edit Relative Account</h3>
   						</div>
	        		<div class="modal-body">
	        		<input type="hidden" name="idemployee_account" value="<%=id %>">
	        		<input type="hidden" name="ClientID">
					<label>Name</label>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
				    %>
					<select id='PatientName' onClick="showSelected(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
					<label>Username</label><input type="text" name="Username"  value="<%=c.getUsername() %>" data-error="limit up to 30 characters only" size=60></br>
					<label>Password</label><input type="password" name="pswrd" value="<%=c.getpswrd() %>" data-error="limit up to 30 characters only" size=60></br>
					<label>Repeat Password</label><input type="password" name="rpswrd" value="<%=c.getpswrd() %>" data-error="not match for password" size=60></br>
					<label>NumOfAttempts</label><input type="text" name="NumOfAttempts" value="<%=c.getNumOfAttempts() %>" data-error="Digits(0-9) only"size=60></br>
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
		<jsp:include page="PatientRAcct.jsp"></jsp:include>
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
</html>