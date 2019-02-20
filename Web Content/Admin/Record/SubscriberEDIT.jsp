<%@page import="conn.DbCon,dao.Subcriber_recordDAO,dbtb.dbtbsubscriber_record, java.sql.*" %>

<!DOCTYPE html>
<html>
<head>

<title>EVA:Subscriber</title>
</head>
<body>
	  <button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Resident</button>
	<% 
		int id=Integer.parseInt(request.getParameter("Subscriber_Id"));
	dbtbsubscriber_record s=Subcriber_recordDAO.getRecord(id);

	
	%>		
			
	<form action="Subscriber.jsp">
			<div class="modal fade" id="SubsModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Subscriber</h3>
     						</div>
					        <div class="modal-body">
							<%@page import="conn.DbCon,dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*, java.sql.*"%>
							<label>Resident Name:</label>
							        <input type="hidden" name="Patient_ID" id="P_ID" value="<%=s.getPatient_ID() %>">
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
									<% } con.close();%>
								</select><br/>
									 <%
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
				       		 			
								    %>
								<h2>Subscriber:</h2>
								<label>Last Name:</label><input type="text" name="LastName" value="<%=s.getLastName()%>" size=30><br/>
								<label>First Name:</label><input type="text" name="FirstName" value="<%=s.getFirstName()%>" size=30><br/>
								<label>Middle Name:</label><input type="text" name="MiddleName" value="<%=s.getMiddleName() %>" size=30><br/>
								<label>DOB:</label><input name="DOB"type="date" value="<%=s.getDOB()%>"><br/>
								<label>SSN#:</label><input name="SSNno"type="text" value="<%=s.getSSNno() %>" ><br/>
								<label>Gender:</label><input name="Gender"type="text" value="<%=s.getGender() %>" ><br/>
							<h4>Claim Send To Address</h4>
								<label>Address:</label><input name="Address" type="text" value="<%=s.getAddress() %>" size=60><br/>
								<label>City:</label><input name="City" type="text" value="<%=s.getCity() %>"><br/>
								<label>State:</label><input name="State" type="text" value="<%=s.getState() %>" ><br/>
								<label>Zip:</label><input name="Zip" type="text" value="<%=s.getZip() %>" ><br/>
								<label>Country:</label>
								<select name="Country">
									<option>value="<%=s.getCountry() %>"</option>
									<option>Spain</option>
								</select><br/>
								<label>Phone</label><input name="Phone" type="text"><br/>
						<div class="modal-footer">
  							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  							<input type='reset' class="btn btn-default">
						<button type="submit" name="crud" class="btn btn-default" value="Update Record">Update Record</button>
								<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
      					</div>
   					</div>
 				</div>
			</div>	
		</div>			
	</form>
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
</html>