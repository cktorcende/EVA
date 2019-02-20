<%@page import="conn.DbCon,dao.ch_assignedDAO,dbtb.dbtbch_assigned,dbtb.dbtbcr_assigned,dbtb.dbtbd_assigned,dbtb.dbtbn_assigned,java.util.*,java.sql.*"%>

<!DOCTYPE html>
<html>
<head><title>EVA:Assigned Patients</title>
	<link rel="stylesheet" href="css/Records.css">
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
		 <link rel='stylesheet' href='css/Records.css'>
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body>
	<div id="container" class="cont"></div>
	
		<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
								<li>
									<a class="gn-icon gn-icon-article" href="Records.jsp">Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='Allergy.jsp'>Allergy</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Disease.jsp'>Disease</a></li>
										<li><a class="gn-icon gn-icon-archive" href='GenInfo.jsp'>General Information</a></li>
										<li><a class="gn-icon gn-icon-archive" href='CliEx.jsp'>Clinical Examination</a></li>
										<li><a class="gn-icon gn-icon-archive" href='History.jsp'>View Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='AppPay.jsp'>Bed Assignment</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Insurance.jsp'>Patient Insurance</a></li>
									</ul>
								</li>
								<li>
									<a class="gn-icon gn-icon-article" href='RecordsNur.jsp'>Practitioner Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='RecordTel.jsp'>Cashier's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='RecordsChef.jsp'>Chef's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Experience.jsp'>Experience</a></li>
										<li><a class="gn-icon gn-icon-archive" href='HistoryP.jsp'>Profile View</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Assigned.jsp'>Patients Assigned</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Reviews.jsp'>Reviews/Comments</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Achievements.jsp'>Achievements</a></li>
										
									</ul>
								</li>
								<li>
									<a class="gn-icon gn-icon-archive">Archives</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-article">Articles</a></li>
										<li><a class="gn-icon gn-icon-pictures">Images</a></li>
										<li><a class="gn-icon gn-icon-videos">Videos</a></li>
									</ul>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="#">OPTIONS</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/User/User.jsp">USER MANAGEMENT</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Admission/Admission.jsp">ADMISSION</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Billing/Bill.jsp">BILLING</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Inventory/Inventory.jsp">INVENTORY</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
			</ul>
			<div id="all">	
			<div id="search"> 
				<form>
					 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>
					
					<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
				</form>
				<form id="regForm" action="Ass.jsp">
					<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">
	  					  <div class="modal-content">
	  					    <div class="modal-header">
	  					    	<h3 class="modal-title">Add Assigned Patient</h3>
	      						<button type="button" class="close" data-dismiss="modal">&times;</button>
	      							
	     						</div>
						        <div class="modal-body"> 
						        <label>Stafftype</label>
       						<select name="StaffType">
       							<option></option>
       							<option>Chef</option>
       							<option>Caregiver</option>
       							<option>Doctor</option>
       							<option>Nurse</option>
					    	</select>   <br/> 
					    	<label>Chef</label>
			        		 <input type="text" id='CH_ID' name="A_ChefID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT chef_ID,CONCAT(Lastname,', ',FirstName,' ',MiddleName) FROM chef_record ORDER BY Lastname ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedCH(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
					    	
					        
								
							<label>Doctor</label>
			        		 <input type="text" id='D_ID' name="DA_DoctorID"/>
					        		
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
							<label>Nurse</label>
			        		 <input type="text" id='N_ID' name="NAS_NurseID"/>
					        		
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
							<label>Caregiver</label>
			        		 <input type="text" id='CR_ID' name="NA_NurseID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Caregiver_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedCR(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
						        
						        
								<label>Date Started</label>
									<br/>
										<input type="date" name="DateStarted"  size=60>
									<br/>
										<label>Assigned patient</label>
									<br/>
										<input type="text" id='P_ID' name="AssignedPatient" />
					        		
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
									<br/>
										<label>Description</label>
									<br/>
										<textarea cols=50 id="C" name="Description" form="Experience"placeholder="Add a short explanation about your achievement "></textarea>
									<br/>
										<label>Status</label>
									<br/>
										<select name="Status">
											<option></option>
											<option>Active</option>
											<option>Inactive</option>
										</select>
									<br/>
										<label>Assigned Time</label>
									<br/>
										<input type="text" name="AssignedTime" placeholder="What are the notable acts being highlighted here" size=60>
									<br/>
										
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
		
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbch_assigned> listCH=ch_assignedDAO.getAllRecordsCH();
			  			request.setAttribute("listCH",listCH);
			  			int countH =0;
					%>
			<table>
				<tr>
					<th></th>
					<th>DateStarted</th>
					<th>Chef</th>
					<th>AssignedPatient</th>
					<th>Description</th>
					<th>Status</th>
					<th>Assigned Time</th>
				</tr>
			<c:forEach items="${listCH}" var="c">
				<tr>
					<td><a href="AssignedCHEDIT.jsp?CH_AssignedID=${c.getCH_AssignedID()}">edit</a></td>
					<td>${c.getDateStarted()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT chef_record.Chef_ID,CONCAT(chef_record.LastName,', ',chef_record.FirstName,' ',chef_record.MiddleName),ch_assigned.CHAS_ChefID FROM eva.chef_record INNER JOIN  eva.ch_assigned ON cashier_record.Chef_ID=ch_assigned.CHAS_ChefID WHERE CHAS_ChefID=" +listCH.get(countH).getCHAS_ChefID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),ch_assigned.AssignedPatientID FROM eva.client_record INNER JOIN  eva.ch_assigned ON client_record.Patient_ID=ch_assigned.AssignedPatientID WHERE AssignedPatientID="+ listCH.get(countH).getAssignedPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countH++;	
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getAssignedTime()}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbcr_assigned> listCR=ch_assignedDAO.getAllRecordsCR();
			  			request.setAttribute("listCR",listCR);
			  			int countCR =0;
					%>
			<table>
				<tr>
					<th></th>
					<th>DateStarted</th>
					<th>Caregiver</th>
					<th>AssignedPatient</th>
					<th>Description</th>
					<th>Status</th>
					<th>Assigned Time</th>
				</tr>
			<c:forEach items="${listCR}" var="c">
				<tr>
					<td><a href="AssignedCREDIT.jsp?CR_AssignedID=${c.getCR_AssignedID()}">edit</a></td>
					<td>${c.getDateStarted()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT caregiver_record.Caregiver_ID,CONCAT(caregiver_record.LastName,', ',caregiver_record.FirstName,' ',caregiver_record.MiddleName),cr_assigned.CRAS_CaregiverID FROM eva.caregiver_record INNER JOIN  eva.cr_assigned ON caregiver_record.Caregiver_ID=cr_assigned.CRAS_CaregiverID WHERE CRAS_CaregiverID=" +listCR.get(countCR).getCRAS_CaregiverID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),cr_assigned.CR_AssignedPatientID FROM eva.client_record INNER JOIN  eva.cr_assigned ON client_record.Patient_ID=cr_assigned.CR_AssignedPatientID WHERE CR_AssignedPatientID="+ listCR.get(countCR).getCR_AssignedPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}	countCR++;	
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getAssignedTime()}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbd_assigned> listD=ch_assignedDAO.getAllRecordsD();
			  			request.setAttribute("listD",listD);
			  			int countD =0;
					%>
			<table>
				<tr>
					<th></th>
					<th>DateStarted</th>
					<th>Doctor</th>
					<th>AssignedPatient</th>
					<th>Description</th>
					<th>Status</th>
					<th>Assigned Time</th>
				</tr>
			<c:forEach items="${listD}" var="c">
				<tr>
					<td><a href="AssignedDEDIT.jsp?D_AssignedID=${c.getD_AssignedID()}">edit</a></td>
					<td>${c.getDateStarted()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT doctor_record.Doctor_ID,CONCAT(doctor_record.LastName,', ',doctor_record.FirstName,' ',doctor_record.MiddleName),d_assigned.DAS_DoctorID FROM eva.doctor_record INNER JOIN  eva.d_assigned ON doctor_record.Doctor_ID=d_assigned.DAS_DoctorID WHERE DAS_DoctorID=" +listD.get(countD).getDAS_DoctorID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),d_assigned.D_AssignedPatientID FROM eva.client_record INNER JOIN  eva.d_assigned ON client_record.Patient_ID=d_assigned.D_AssignedPatientID WHERE D_AssignedPatientID="+ listD.get(countD).getD_AssignedPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}	countD++;	
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getAssignedTime()}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbn_assigned> listN=ch_assignedDAO.getAllRecordsN();
			  			request.setAttribute("listN",listN);
			  			int countN =0;
					%>
			<table>
				<tr>
					<th></th>
					<th>DateStarted</th>
					<th>Nurse</th>
					<th>AssignedPatient</th>
					<th>Description</th>
					<th>Status</th>
					<th>Assigned Time</th>
				</tr>
			<c:forEach items="${listN}" var="c">
				<tr>
					<td><a href="AssignedNEDIT.jsp?N_AssignedID=${c.getN_AssignedID()}">edit</a></td>
					<td>${c.getDateStarted()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT nurse_record.Nurse_ID,CONCAT(nurse_record.LastName,', ',nurse_record.FirstName,' ',nurse_record.MiddleName),n_assigned.NAS_NurseID FROM eva.nurse_record INNER JOIN  eva.n_assigned ON nurse_record.Nurse_ID=n_assigned.NAS_NurseID WHERE NAS_NurseID=" +listN.get(countN).getNAS_NurseID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),n_assigned.N_AssignedPatientID FROM eva.client_record INNER JOIN  eva.n_assigned ON client_record.Patient_ID=n_assigned.n_AssignedPatientID WHERE N_AssignedPatientID="+ listN.get(countN).getN_AssignedPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}	countN++;	
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getAssignedTime()}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
	</div>
	</div>
	<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
</body>
<script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	</script>
	<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedCH(thisObj)
	{

	  document.getElementById('CH_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedCR(thisObj)
	{

	  document.getElementById('CR_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedD(thisObj)
	{

	  document.getElementById('D_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedN(thisObj)
	{

	  document.getElementById('N_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}	
		
	</script>
</html>
	