<%@page import="conn.DbCon, java.sql.*,java.util.*, dbtb.dbtbBenefits, dao.BenefitsDAO" %>

<!DOCTYPE html>
<html>
<head>
	<title>EVA:BENFITS APPLICATION</title>
</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("BenefitsID"));
		dbtbBenefits b = BenefitsDAO.getRecord(id);
	
	%>
		<form action="Ben.jsp">
		<div class="modal fade" id="Caregiver" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Benefits</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
     						</div>
			        		<div class="modal-body">
								<label>Patient Name</label>
									<input type="hidden"name="BenefitsID">
									 <input type="text" id='P_ID' name="BPatientID"/>
										        		
										        		 <%
										        		 
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID"+ b.getBPatientID());					                        	
													    %>
													    	<select id='PatientName' onClick="showSelected(this)">
													    		<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% }con.close(); 
																	}catch(Exception e){out.println("Wrong Entry! " + e);}%>
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
								<label>Guarantor Name</label>
									<input type="text" id='G_ID' name="BGuarantorID"/>
										        		
										        		 <%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT guarantorID,CONCAT(Last,', ',First,' ',Middle) FROM guarantor WHERE guarantorID="+ b.getBGuarantorID());					                        	
													    %>
													    	<select id='PatientName' onClick="showSelectedG(this)">
													    		<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% }con.close(); 
																	}catch(Exception e){out.println("Wrong Entry! " + e);}%>
																<option></option>
														 <%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT guarantorID,CONCAT(Last,', ',First,' ',Middle) FROM guarantor WHERE guarantorID="+ b.getBGuarantorID());					                        	
													    %>		
																<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% }con.close(); %>
															</select><br/>
																 <%
															    	}catch(Exception e){out.println("Wrong Entry! " + e);}
										        		 			
															    %>
								<label>SSS Number:</label>
									<input type="text" name="SSSno" value="<%=b.getSSSno() %>">
								<label>Deductible</label>
									<input type="text" name="SSSDeductible" value="<%=b.getSSSDeductible() %>">
								<label>PhilHealth Number</label>
									<input type="text" name="PhilHealthNo" value="<%=b.getPhilHealthNo() %>">
								<label>Deductible</label>
									<input type="text" name="PhilHealthDeductible" value="<%=b.getPhilHealthDeductible() %>">
								<label>GSIS</label>
									<input type="text" name="GSIS" value="<%=b.getGSIS() %>">
									<label>Deductible</label>
									<input type="text" name="GSISDeductible" value="<%=b.getGSISDeductible() %>">
								<label>CityHall Senior citizen ID</label>
									<input type="text" name="SCSID" value="<%=b.getSCSID() %>">
							</div>
							<div class="modal-footer">
    							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    							<input type='reset' class="btn btn-default">
								<button type="submit" name="crud" class="btn btn-default" value="Create New Record">Create New Record</button>
        					</div>
     					</div>
   					</div>
  				</div>				
			</form>	
	<jsp:include page="BeneApp.jsp"></jsp:include>
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedG(thisObj)
	{

	  document.getElementById('G_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}	
		
	</script>
</html>