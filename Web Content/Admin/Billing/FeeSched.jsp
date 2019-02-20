<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbbed_fee ,dbtb.dbtbcaregiver_fee,dbtb.dbtbdoctor_fee,dbtb.dbtbnurse_fee, dao.FeeDAO" %>
<!DOCTYPE html>
<html>
<head>
	<title>EVA: FEE SCHEDULE</title>
	<link rel="stylesheet" href="css/Billing.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/Chart.js"></script>
 	 <script src="css/notify.js"></script>
</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.jsp">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.jsp">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.jsp">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.jsp">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	<div id="all">
		<div id="Search">
			 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
				   		 <br/>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Caregiver">Create New Caregiver Bill</button>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Nurse">Create New Nurse Bill</button>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Doctor">Create New Doctor Bill</button>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Bed">Create New Bed Bill</button>
			<form action="feeC.jsp" method="POST">
			<div class="modal fade" id="Caregiver" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Caregiver Fee</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
     						</div>
			        		<div class="modal-body">
					
										<label>CoveredByPlan</label>
											<select name="CoveredByPlan">
												<option></option>
												<option>true</option>
												<option>false</option>
											</select><br/>
									<label>Patient</label>
									 <input type="text" id='PC_ID' name="CPatientID"/>
											        		
						        		 <%
									    	try{
									    		Connection con=DbCon.getCon();
									    		Statement stmt = con.createStatement();
									    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
									    %>
									    	<select id='PatientName' onClick="showSelectPC(this)">
												<option></option>
												<% while(rs.next()){ %>
												<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
												<% } %>
											</select><br/>
												 <%con.close();
											    	}catch(Exception e){out.println("Wrong Entry! " + e);}
						        		 			
											    %>
									<label>Caregiver</label>
										<input type="text" id="C_ID"name="BCaregiverID">
										<%
									    	try{
									    		Connection con=DbCon.getCon();
									    		Statement stmt = con.createStatement();
									    		ResultSet rs = stmt.executeQuery("SELECT Caregiver_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
									    %>
									    	<select id='PatientName' onClick="showSelectedC(this)">
												<option></option>
												<% while(rs.next()){ %>
												<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
												<% } %>
											</select><br/>
												 <%con.close();
											    	}catch(Exception e){out.println("Wrong Entry! " + e);}
						        		 			
											    %>
									<label>Rate Per Hour</label>
										<input type="text" name="ratePerHour"><br/>
									<label></label>
										<input type="text" name="HoursRendered"><br/>
									<label>Shift</label>
										<select name="Shift">
											<option></option>
											<option>Day</option>
											<option>Afternoon</option>
											<option>Night</option>
										</select><br/>
									<label>Date Started</label>
										<input type="text" name="DateStarted"><br/>
									<label>Date Ended </label>
										<input type="text" name="DateEnded"><br/>
									<label>Due Date</label>
										<input type="text" name="DueDate"><br/>
									<label>Status</label>
										<select name="status">
											<option></option>
											<option>paid</option>
											<option>unpaid</option>
										</select>	
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
		
			<form action="feeN.jsp" method="POST">
			<div class="modal fade" id="Nurse" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Nurse Fee</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							
     						</div>
							        <div class="modal-body">
									<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
							<label>Nurse ID</label>
								<input type="hidden" id="N_ID"name="BNurseID">
								<%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT Nurse_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM nurse_record ORDER BY LastName ASC;");					                        	
							    %>
							    	<select id='PatientName' onClick="showSelectedN(this)">
										<option></option>
										<% while(rs.next()){ %>
										<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
										<% } %>
									</select><br/>
										 <%con.close();
									    	}catch(Exception e){out.println("Wrong Entry! " + e);}
				        		 			
									    %>
							<label>Patient</label>
								 <input type="hidden" id='PN_ID' name="NPatientID"/>
									        		
				        		 <%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
							    %>
							    	<select id='PatientName' onClick="showSelectPN(this)">
										<option></option>
										<% while(rs.next()){ %>
										<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
										<% } %>
									</select><br/>
										 <%con.close();
									    	}catch(Exception e){out.println("Wrong Entry! " + e);}
				        		 			
									    %>
							<label>Rate PerHour</label>
								<input type="text" name="ratePerHour">
							<label>Hours Rendered</label>
								<input type="text" name="HoursRendered">
							<label>Shift</label>
								<select name="Shift">
									<option></option>
									<option>Day</option>
									<option>Afternoon</option>
									<option>Night</option>
								</select>
							<label>DateStarted</label>
								<input type="date" name="DateStarted">
							<label>DateEnded</label>
								<input type="date" name="DateEnded">
							<label>DueDate</label>
								<input type="date" name="DueDate">
							<label>Status</label>
									<select name="status">
										<option></option>
										<option>paid</option>
										<option>unpaid</option>
									</select>	
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
			
			<form action="feeD.jsp" method="POST">
			<div class="modal fade" id="Doctor" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Doctor Fee</h3>
     						</div>
			       			 <div class="modal-body">
					
								<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
							<label>Doctor</label>
								<input type="hidden" id="D_ID"name="BDoctorID">
								<%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT Doctor_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM doctor_record ORDER BY LastName ASC;");					                        	
							    %>
							    	<select id='PatientName' onClick="showSelectedD(this)">
										<option></option>
										<% while(rs.next()){ %>
										<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
										<% } %>
									</select><br/>
										 <%con.close();
									    	}catch(Exception e){out.println("Wrong Entry! " + e);}
				        		 			
									    %>
							<label>Patient</label>
								 <input type="text" id='PD_ID' name="DPatientID"/>
									        		
				        		 <%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
							    %>
							    	<select id='PatientName' onClick="showSelectPD(this)">
										<option></option>
										<% while(rs.next()){ %>
										<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
										<% } %>
									</select><br/>
										 <%con.close();
									    	}catch(Exception e){out.println("Wrong Entry! " + e);}
				        		 			
									    %>
							<label>Rate PerHour</label>
								<input type="text" name="ratePerHour">
							<label>Hours Rendered</label>
								<input type="text" name="HoursRendered">
							<label>Shift</label>
								<select name="Shift">
									<option></option>
									<option>Day</option>
									<option>Afternoon</option>
									<option>Night</option>
								</select>
							<label>DateStarted</label>
								<input type="date" name="DateStarted">
							<label>DateEnded</label>
								<input type="date" name="DateEnded">
							<label>DueDate</label>
								<input type="date" name="DueDate">
							<label>Status</label>
								<select name="status">
									<option></option>
									<option>paid</option>
									<option>unpaid</option>
								</select>	
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
			
			
			
			
			
			<form action="feeB.jsp" method="POST">
			<div class="modal fade" id="Bed" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Bed Fee</h3>
     						</div>
			        <div class="modal-body">
					
				
						<label>CoveredByPlan</label>
								<select name="CoveredByPlan">
									<option></option>
									<option>true</option>
									<option>false</option>
								</select>
						<label>Bed</label>
							<input type="hidden" id="B_ID"name="BBedID">
							<%
						    	try{
						    		Connection con=DbCon.getCon();
						    		Statement stmt = con.createStatement();
						    		ResultSet rs = stmt.executeQuery("SELECT bedID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM doctor_record ORDER BY roomNo ASC;");					                        	
						    %>
						    	<select id='PatientName' onClick="showSelectedB(this)">
									<option></option>
									<% while(rs.next()){ %>
									<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
									<% } %>
								</select><br/>
									 <%con.close();
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
			        		 			
								    %>
						<label>Patient</label>
							 <input type="text" id='PB_ID' name="BPatientID"/>
								        		
			        		 <%
						    	try{
						    		Connection con=DbCon.getCon();
						    		Statement stmt = con.createStatement();
						    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
						    %>
						    	<select id='PatientName' onClick="showSelectPB(this)">
									<option></option>
									<% while(rs.next()){ %>
									<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
									<% } %>
								</select><br/>
									 <%con.close();
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
			        		 			
								    %>
						<label>Rate PerHour</label>
							<input type="text" name="ratePerHour">
						<label>Hours Rendered</label>
							<input type="text" name="HoursRendered">
						<label>Shift</label>
							<select name="Shift">
								<option></option>
								<option>Day</option>
								<option>Afternoon</option>
								<option>Night</option>
							</select>
						<label>DateStarted</label>
							<input type="date" name="DateStarted">
						<label>DateEnded</label>
							<input type="date" name="DateEnded">
						<label>DueDate</label>
							<input type="date" name="DueDate">
						<label>Status</label>
							<select name="status">
								<option></option>
								<option>paid</option>
								<option>unpaid</option>
							</select>	
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
		</div>
		
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbdoctor_fee> ld=FeeDAO.getAllRecordsD();
		  		request.setAttribute("ld",ld);
		  		int counter =0;
			%>
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>			
					<th width="30%">Patient</th>
					<th width="30%">Doctor</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
					<th width="20%">status</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="FeeSchedDEDIT.jsp?DFeeID=${c.getDFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
					
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),doctor_fee.DPatientID FROM eva.client_record INNER JOIN  eva.doctor_fee ON client_record.Patient_ID=doctor_fee.DPatientID WHERE Patient_ID="+ ld.get(counter).getDPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}		
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT doctor_record.Doctor_ID,CONCAT(doctor_record.LastName,', ',doctor_record.FirstName,' ',doctor_record.MiddleName),doctor_fee.BDoctorID FROM eva.doctor_record INNER JOIN  eva.doctor_fee ON doctor_record.Doctor_ID=doctor_fee.BDoctorID WHERE BDoctorID=" +ld.get(counter).getBDoctorID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}counter++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		
		
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbcaregiver_fee> lc=FeeDAO.getAllRecordsC();
		  		request.setAttribute("lc",lc);
		  		int count =0;
			%>
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>
					<th width="30%">Patient</th>
					<th width="30%">Caregiver</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
					<th width="20%">status</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
			<c:forEach items="${lc}" var="c">
				<tr>
					<td><a href="FeeSchedCEDIT.jsp?CFeeID=${c.getCFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),caregiver_fee.CPatientID FROM eva.client_record INNER JOIN  eva.caregiver_fee ON client_record.Patient_ID=caregiver_fee.CPatientID WHERE Patient_ID="+ lc.get(count).getCPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT caregiver_record.Caregiver_ID,CONCAT(caregiver_record.LastName,', ',caregiver_record.FirstName,' ',caregiver_record.MiddleName),caregiver_fee.BCaregiverID FROM eva.caregiver_record INNER JOIN  eva.caregiver_fee ON caregiver_record.Caregiver_ID=caregiver_fee.BCaregiverID WHERE BCaregiverID="+ lc.get(count).getBCaregiverID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}count++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		<p></p>
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbnurse_fee> ln=FeeDAO.getAllRecordsN();
		  		request.setAttribute("ln",ln);
		  		int countN =0;
			%>
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>
					<th width="30%">Patient</th>
					<th width="30%">Nurse</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
					<th width="20%">status</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${ln}" var="c">
				<tr>
					<td><a href="FeeSchedNEDIT.jsp?NFeeID=${c.getNFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),nurse_fee.NPatientID FROM eva.client_record INNER JOIN  eva.nurse_fee ON client_record.Patient_ID=nurse_fee.NPatientID WHERE Patient_ID="+ ln.get(countN).getNPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT nurse_record.Nurse_ID,CONCAT(nurse_record.LastName,', ',nurse_record.FirstName,' ',nurse_record.MiddleName),nurse_fee.BNurseID FROM eva.nurse_record INNER JOIN  eva.nurse_fee ON nurse_record.Nurse_ID=nurse_fee.BNurseID WHERE BNurseID="+ ln.get(countN).getBNurseID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countN++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>	
			</tbody>
		</table>
		</div>
		<p></p>
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbbed_fee> lb=FeeDAO.getAllRecordsB();
		  		request.setAttribute("lb",lb);
		  		int countB =0;
			%>
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>
					<th width="30%">Patient</th>
					<th width="30%">Bed</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
					<th width="20%">status</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${lb}" var="c">
				<tr>
					<td><a href="FeeSchedBEDIT.jsp?BFeeID=${c.getBFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),bed_fee.BPatientID FROM eva.client_record INNER JOIN  eva.bed_fee ON client_record.Patient_ID=bed_fee.BPatientID WHERE Patient_ID="+ lb.get(countB).getBPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		
				    		ResultSet rs = stmt.executeQuery("SELECT bedroom_rec.bedID,CONCAT(bedroom_rec.wing,' room ',bedroom_rec.roomNo),bed_fee.BBedID FROM eva.bedroom_rec INNER JOIN  eva.bed_fee ON bedroom_rec.bedID=bed_fee.BBedID WHERE BBedID="+ lb.get(countB).getBBedID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countB++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>	
			</tbody>
		</table>
		</div>
		<p></p>
		
	</div>
	<div id="buttons">
		<button onclick="location.href='FeeSchedule.jsp' ">Fee Schedule</button>
		<button>Medicine Bill</button>
		<button>Food Bill</button>
		<button>Billing Report</button>
		<button>Patient bill</button>
		<button>Application of Insurance</button>
		<button>Application of Benefits</button>
		<button>Application of Membership</button>
	</div>	
	
</body>
<script>
	
	function showSelectedC(thisObj)
	{

	  document.getElementById('C_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedN(thisObj)
	{

	  document.getElementById('N_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedD(thisObj)
	{

	  document.getElementById('D_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedB(thisObj)
	{

	  document.getElementById('B_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	
	function showSelectPC(thisObj)
	{

	  document.getElementById('PC_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectPN(thisObj)
	{

	  document.getElementById('PN_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectPD(thisObj)
	{

	  document.getElementById('PD_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectPB(thisObj)
	{

	  document.getElementById('PB_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
		<script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	
	
	$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
	</script>
	
</html>