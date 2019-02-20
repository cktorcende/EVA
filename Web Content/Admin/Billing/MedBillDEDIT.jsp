<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO" %>
<!DOCTYPE html>
<html>
<head>
	<title>EVA: MEDICINE BILL</title>
	<link rel="stylesheet" href="css/Billing.css">
	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/Chart.js"></script>
</head>
<body>
	<%
			int id=Integer.parseInt(request.getParameter("DRFeeID"));
			dbtbdrug_fee c=FeeMDAO.getRecordM(id);
		%>
	<form action="MedM.jsp" method="POST">
			<div class="modal fade" id="Medicine" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Medicine Fee</h3>
     						</div>
			        		<div class="modal-body">
			        			<input type="hidden" name="DRFeeID" value="<%=id %>"> 
								<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
								<br/>
									<label>Patient</label>
										 <input type="text" id='PM_ID' name="DRPatientID" value="<%=c.getDRPatientID() %>"/>
												        		
							        		 <%
										    	try{
										    		Connection con=DbCon.getCon();
										    		Statement stmt = con.createStatement();
										    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
										    %>
										    	<select id='PatientName' onClick="showSelectedM(this)">
													<option></option>
													<% while(rs.next()){ %>
													<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
													<% } %>
												</select><br/>
													 <%con.close();
												    	}catch(Exception e){out.println("Wrong Entry! " + e);}
							        		 			
												    %>
								<br/>
									<label>Medicine</label>
														<input type="hidden" id="M_ID"name="BDrugID" value="<%=c.getBDrugID() %>">
														<%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT DrugID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
													    %>
													    	<select id='PatientName' onClick="showSelectM(this)">
																<option></option>
																<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% } %>
															</select><br/>
																 <%con.close();
															    	}catch(Exception e){out.println("Wrong Entry! " + e);}
										        		 			
															    %>
									
							<label>Rate PerHour</label>
								<input type="text" name="ratePerHour"value="<%=c.getratePerHour() %>">
							<label>Hours Rendered</label>
								<input type="text" name="HoursRendered" value="<%=c.getHoursRendered() %>">
							<label>DateStarted</label>
								<input type="date" name="DateStarted" value="<%=c.getDateStarted() %>">
							<label>DateEnded</label>
								<input type="date" name="DateEnded" value="<%=c.getDateEnded() %>">
							<label>DueDate</label>
								<input type="date" name="DueDate" value="<%=c.getDueDate() %>">
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
		<jsp:include page="MedBill.jsp"></jsp:include> 
</body>
</html>