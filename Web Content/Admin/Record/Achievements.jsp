<%@page import="conn.DbCon,dao.ch_AchievementDAO,dbtb.dbtbch_achievements,dbtb.dbtbcr_achievements,dbtb.dbtbcs_achievements,dbtb.dbtbd_achievements,dbtb.dbtbn_achievements, java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head><title>EVA:Nurse Record</title>
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
		<div id="Search">
			<form>
				<h2>Search For Chef Achievement</h2>
					 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>  
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Achievement</button>
			</form>	
			<form action="Ach.jsp" method="POST">
		
			<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      							<h3 class="modal-title">Add Achievement</h3>
      							<button type="button" class="close" data-dismiss="modal">&times;</button>
     						</div>
			        <div class="modal-body"> 
			        <label>Stafftype</label>
       						<select name="StaffType">
       							<option></option>
       							<option>Chef</option>
       							<option>Cashier</option>
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
					    	
					        <label>Cashier</label>
			        		 <input type="hidden" id='CS_ID' name="CSA_CashierID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Cashier_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM cashier_record ORDER BY LastName ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedCS(this)">
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
			        		 <input type="text" id='N_ID' name="NA_NurseID"/>
					        		
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
									<label>Achievement Name</label>
								<br/>
									<input type="text" name="AchievementName" placeholder="what is the achievement?" size=60>
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
									<label>Commendable Acts</label>
								<br/>
									<input type="text" name="CommendableActs" placeholder="What are the notable acts being highlighted here" size=60>
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
			
			<% List<dbtbch_achievements> lch=ch_AchievementDAO.getAllRecordsCH();
			  		request.setAttribute("lch",lch);
			  		int countH =0;
				%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Chef Name</th>
					<th>Date Started</th>
					<th>Achievement Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Commendable Acts</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${lch}" var="c">
				<tr>
					<td><a href="AchievementsCHEDIT.jsp?CH_AchievementID=${c.getCH_AchievementID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT chef_record.Chef_ID,CONCAT(chef_record.LastName,', ',chef_record.FirstName,' ',chef_record.MiddleName),ch_achievements.A_ChefID FROM eva.chef_record INNER JOIN  eva.ch_achievements ON chef_record.Chef_ID=ch_achievements.A_ChefID WHERE A_ChefID=" +lch.get(countH).getA_ChefID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countH++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDateStarted()}</td>
					<td>${c.getAchievementName()}</td>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCommendableActs()}</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<p></p>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			
			<% List<dbtbcs_achievements> lcs=ch_AchievementDAO.getAllRecordsCS();
			  		request.setAttribute("lcs",lcs);
			  		int counter =0;
				%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Cashier Name</th>
					<th>Date Started</th>
					<th>Achievement Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Commendable Acts</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${lcs}" var="c">
				<tr>
					<td><a href="AchievementsCSEDIT.jsp?CS_AchievementID=${c.getCS_AchievementID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT cashier_record.Cashier_ID,CONCAT(cashier_record.LastName,', ',cashier_record.FirstName,' ',cashier_record.MiddleName),cs_achievements.CSA_CashierID FROM eva.cashier_record INNER JOIN  eva.cs_achievements ON cashier_record.Cashier_ID=cs_achievements.CSA_CashierID WHERE CSA_CashierID=" +lcs.get(counter).getCSA_CashierID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}counter++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDateStarted()}</td>
					<td>${c.getAchievementName()}</td>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCommendableActs()}</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<p></p>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			
			<% List<dbtbcr_achievements> lcr=ch_AchievementDAO.getAllRecordsCR();
			  		request.setAttribute("lcr",lcr);
			  		int countCR= 0;
				%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Caregiver Name</th>
					<th>Date Started</th>
					<th>Achievement Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Commendable Acts</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${lcr}" var="c">
				<tr>
					<td><a href="AchievementsCREDIT.jsp?CR_AchievementID=${c.getCR_AchievementID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT caregiver_record.Caregiver_ID,CONCAT(caregiver_record.LastName,', ',caregiver_record.FirstName,' ',caregiver_record.MiddleName),cr_achievements.CRA_CaregiverID FROM eva.caregiver_record INNER JOIN  eva.cr_achievements ON caregiver_record.Caregiver_ID=cr_achievements.CRA_CaregiverID WHERE CRA_CaregiverID=" +lcr.get(countCR).getCRA_CaregiverID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countCR++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDateStarted()}</td>
					<td>${c.getAchievementName()}</td>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCommendableActs()}</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<p></p>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			
			<% List<dbtbd_achievements> ld=ch_AchievementDAO.getAllRecordsD();
			  		request.setAttribute("ld",ld);
			  		int countD =0;
				%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Doctor Name</th>
					<th>Date Started</th>
					<th>Achievement Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Commendable Acts</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="AchievementsDEDIT.jsp?D_AchievementID=${c.getD_AchievementID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT doctor_record.Doctor_ID,CONCAT(doctor_record.LastName,', ',doctor_record.FirstName,' ',doctor_record.MiddleName),d_achievements.DA_DoctorID FROM eva.doctor_record INNER JOIN  eva.d_achievements ON doctor_record.Doctor_ID=d_achievements.DA_DoctorID WHERE DA_DoctorID=" +ld.get(countD).getDA_DoctorID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countD++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDateStarted()}</td>
					<td>${c.getAchievementName()}</td>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCommendableActs()}</td>
				</tr>
			</c:forEach>
			</tbody>
			</table>
		</div>
		<p></p>		
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			
			<% List<dbtbn_achievements> ln=ch_AchievementDAO.getAllRecordsN();
			  		request.setAttribute("ln",ln);
			  		int countN =0;
				%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Nurse Name</th>
					<th>Date Started</th>
					<th>Achievement Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Commendable Acts</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${ln}" var="c">
				<tr>
					<td><a href="AchievementsNEDIT.jsp?N_AchievementID=${c.getN_AchievementID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT nurse_record.Nurse_ID,CONCAT(nurse_record.LastName,', ',nurse_record.FirstName,' ',nurse_record.MiddleName),n_achievements.NA_NurseID FROM eva.nurse_record INNER JOIN  eva.n_achievements ON nurse_record.Nurse_ID=n_achievements.NA_NurseID WHERE NA_NurseID=" +ln.get(countN).getNA_NurseID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countN++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getDateStarted()}</td>
					<td>${c.getAchievementName()}</td>
					<td>${c.getDescription()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCommendableActs()}</td>
				</tr>
			</c:forEach>
			</tbody>
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
	
function showSelectedCS(thisObj)
{

  document.getElementById('CS_ID').value = thisObj.options[thisObj.selectedIndex].value;
						
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
	