<%@page import="conn.DbCon,dao.Contact_personDAO,dbtb.dbtbContact_person,java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:CONTACT PERSON</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
				<br/>
			
		<% 
			int id=Integer.parseInt(request.getParameter("ContactID"));
			dbtbContact_person c=Contact_personDAO.getRecord(id);
			
		%>

		<form id="regForm" action="ContactPer.jsp">
		<div class="modal fade" id="Modal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Contact Info</h3>
       						</div>
					        <div class="modal-body"> 
							<h2>IN CASE OF EMERGENCY</h2>
							<label>Patient</label>
	    			    	<input type="hidden" id='P_ID' name="PTContactID" />
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + c.getPTContactID());					                        	
								    %>
								    	<select  onClick="showSelected(this)">
								    		<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close();
										
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
			        		 			
								    %>
								    	<option></option>
										<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close(); %>
										</select><br/>
											<%
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>	
					<br/>
						<input type="hidden" name="ContactID" value="<%=id %>">
						<label>Contact Person</label><input type="text" size=40 value="<%=c.getContactPerson()%>" name="ContactPerson">
						<label>Relationship</label><input type="text" name="Relationship" value="<%=c.getRelationship()%>">
						<label>Age</label><input type="text" name="Age" value="<%=c.getAge()%>"><br/>
						<label>Primary Address</label><input type="text" size=75 name="PrimaryAddress" value="<%=c.getPrimaryAddress()%>">
						<label>City/Province</label><input type="text"  name="PCity" value="<%=c.getPCity()%>">
					<br/>
						<label>Secondary Address</label><input type="text" size=75 name="SecondaryAddress" value="<%=c.getSecondaryAddress()%>">
						<label>City/Province</label><input type="text"  name="SCity" value="<%=c.getSCity()%>">
					<br/>
						<label>Mobile No.</label><input type="tel" name="Mobile" value="<%=c.getMobile()%>">
						<label>Telephone No.</label><input type="tel" name="Phone" value="<%=c.getPhone()%>">
						<label>Other Contact No.</label><input type="text" name="ContactNo" value="<%=c.getContactNo()%>">
					<br/>
						<label>Work</label><input type="text" name="Work" value="<%=c.getWork()%>">
						<label>Work Phone</label><input type="tel" name="WorkPhone" value="<%=c.getWorkPhone()%>">
						<label>Work Address</label><input type="text" size=40 name="WorkAddress" value="<%=c.getWorkAddress()%>">
					<br/>
						


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
  		
  		<jsp:include page="ContactPerson.jsp">
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
	<script>

$('#Modal').modal('show');

</script>
</html>