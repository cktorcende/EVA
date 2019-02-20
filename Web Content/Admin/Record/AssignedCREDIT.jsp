<%@page import="conn.DbCon,dao.ch_assignedDAO,dbtb.dbtbch_assigned,dbtb.dbtbcr_assigned,dbtb.dbtbd_assigned,dbtb.dbtbn_assigned,java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
<head>

<title>EVA:Assigned Patients</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
		<%
			 int id=Integer.parseInt(request.getParameter("CR_AssignedID"));
			dbtbcr_assigned c=ch_assignedDAO.getCRRecord(id);
		%>
		<form id="regForm" action="Ass.jsp">
		<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Patient</h3>
       						</div>
       						
					        <div class="modal-body"> 
							<label>Date Started</label>
								<br/>
									<input type="date" name="DateStarted"  size=60 value="<%=c.getDateStarted()%>">
								<br/>
									<label>Assigned patient</label>
								<br/>
									<input type="hidden" name="CH_AssignedID" value="<%=id%>">
								<label>Caregiver</label>
									<input type="hidden" name="CRAS_CaregiverID" id="CR_ID"value="<%=c.getCRAS_CaregiverID()%>">
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Caregiver_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record WHERE Caregiver_ID=" + c.getCRAS_CaregiverID());					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedCR(this)">
								    		<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close();
								    	}catch(Exception e){out.println("Wrong Entry! " + e);} %>
											<option></option>
											
											
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Caregiver_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
								<label>Patient</label>
									<input type="hidden" id='P_ID' name="AssignedPatient" value="<%=c.getCR_AssignedPatientID()%>"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + c.getCR_AssignedPatientID());					                        	
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
									<label>Description</label>
								<br/>
									<textarea cols=50 id="C" name="Description"  form="Experience"placeholder="Add a short explanation about your achievement "><%=c.getDescription()%></textarea>
								<br/>
									<label>Status</label>
								<br/>
									<select name="Status">
										<option>value="<%=c.getStatus()%>"</option>
										<option></option>
										<option>Active</option>
										<option>Inactive</option>
									</select>
								<br/>
									<label>Assigned Time</label>
								<br/>
									<input type="text" name="AssignedTime" value="<%=c.getAssignedTime()%>" placeholder="What are the notable acts being highlighted here" size=60>
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
  		<jsp:include page="Assigned.jsp"></jsp:include>
</body>
<script>

function showSelected(thisObj)
{

  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

}
	
	
function showSelectedCR(thisObj)
{

  document.getElementById('CR_ID').value = thisObj.options[thisObj.selectedIndex].value;

}

$('#Modal').modal('show');

</script>
</html>