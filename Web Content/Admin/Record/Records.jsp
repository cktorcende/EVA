<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>EVA:RECORDS</title>
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
			<div id=all>
			<div id="Search">
			<h2>SEARCH FOR RESIDENT</h2>
			
				 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
				   		 
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
				<br/>
			
 						
 			 <form action="Rec.jsp" method="POST"> 
 					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
    					    	<h3 class="modal-title">Personal Info</h3>
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							
       						</div>
					        <div class="modal-body"> 
								<br/>
									<input type="hidden" size=15 name="Patient_ID" >
									<input type="hidden" size=15 name="Client_ID" >
									<label>Date Admitted</label><input type="date" size=20 name="DateAdmitted" placeholder="yyyy-mm-dd" required><br/>
									<label id="s">Sex</label>
										<select tabindex="2" name="Sex" >
											<option></option>
											<option>Male</option>
											<option>Female</option>
										</select><br/>
				
					
									<label>First Name</label><input type="text" size=40 name="FirstName" placeholder="Enter FirstName"data-error="Limit to only 30 characters" required> 
								<br/>
									<label>Middle Name</label><input type="text" size=40 name="MiddleName" placeholder="Enter MiddleName"data-error="Limit to only 30 characters" required>
								<br/>	
									<label>Surname</label><input type="text" size=40 name="Surname" placeholder="Enter Surname" data-error="Limit to only 30 characters" required>
								<br/>	
									<label>NickName</label><input type="text" size=40 name="NickName" placeholder="Enter NickName" data-error="Limit to only 15 characters" required>
								<br/>	
									<label>BirthPlace</label><input type="text" size=40 name="BirthPlace" placeholder="Enter Birth Place"data-error="Limit to only 30 characters" required>
								<br/>	
									<label>Birth Date</label><input type="date" name="BirthDate"  size=40 placeholder="yyyy-mm-dd"  data-error="Pease Enter a valid Date following the format" required>
								<br/>	
									<label>Address</label><input type="text" size=40 name="Address" placeholder="(HouseNo/Street/Barangay/Subdivision)"data-error="Limit to only 60 characters" required>
								<br/>	
									<label>City</label><input type="text" name="City" size=40 required placeholder="Enter City" data-error="Limit to only 20 characters">
								<br/>	
									<label>Province</label><input type="text" size=40 name="Province" placeholder="Enter Province" data-error="Limit to only 20 characters" required>
								<br/>	
									<label>Country</label><input type="text" size=40 name="Country" placeholder="Enter Country" data-error="Limit to only 20 characters" required>
								<br/>	
									<label>Location Code</label><input type="number" size=40 name="LocationCode" placeholder="Enter (0-9) digits only"data-error="Must be digits(0-9)" required>
								<br/>	
									<label>Residence Code</label><input type="number" size=40 name="ResidenceCode" placeholder="Enter (0-9) digits only"data-error="Must be digits(0-9)" required>
								<br/>	
									<label>Referred By</label><input type="number" size=40 name="RefferedBy" placeholder="Enter (0-9) digits only" required>
								<br/>	
									<label>Patient Status</label><input type="text" size=40 name="PatientStatus" placeholder="Enter Status" data-error="This field is required" required>
								<br/>
									<label>Remarks</label><input type="text" size=60 name="Remarks" placeholder="Additional request">
								<br/>
							<h4>Additional Information</h4>
								<label>MaritalStatus</label><input type="text" size=40 name="Marital" >
							<br/>	
								<label>Language</label><input type="text" size=40 name="Language">
							<br/>	
								<label>Patient Type</label><input type="text" size=40 name="PatientType">
							<br/>	
								<label>Email</label><input type="email" size=40 name="Email" placeholder="JohnDoe@example.com" required>
							<br/>
								<label>Photo</label><input type="file" size=40 name="Photo" placeholder="Enter Photo">
							
					
    					</div>
    				    <div class="modal-footer">
    				      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    				      <input type='reset' class="btn btn-secondary">
								<button type="submit" name="crud" class="btn btn-secondary" value="Create New Record">Create New Record</button>
        				</div>
     				 </div>
   				 </div>
  			</div>
  		</form>
  		</div>
				   
		<div id="resTable">
		<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		
		<% List<dbtbClient_record> list= client_recordDAO.getAllRecords();
				request.setAttribute("list", list);
				
		%>
			
			
				
				
		
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th width="10%">Date_Admitted</th>
					<th width="30%">Name</th>
					<th width="40%">Address</th>
					<th>PatientStatus</th>
					<th>PatientType</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="RecordEDIT.jsp?Patient_ID=${c.getPatient_ID()}" >Edit</a></td>
					<td>${c.getDate_Admitted()}</td>
					<td>${c.getSurname()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
					<td>${c.getAddress()} ${c.getCity()} ${c.getProvince()}, ${c.getCountry()}</td>
					<td>${c.getPatientStatus()}</td>
					<td>${c.getAcctType()}</td>
					<td>${c.getEmail()}</td>
					
				</tr>
				</c:forEach>
			</tbody>
				</table>
		</div>
	
		<div id="Search">
			<form>
			<h2>SEARCH FOR GUARANTOR </h2>
				  
				   		<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a> 
				   		<input id="GuaInput" type="text" placeholder="Search.." size=60>  
				   	  
							<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#GuarantorModal">Create New Resident</button>
				   </form>
				   <form action="Guarantor.jsp">
				   		<div class="modal fade" id="GuarantorModal" role="dialog">
							<div class="modal-dialog">
							
							  <!-- Modal content-->
							  <div class="modal-content">
								<div class="modal-header">
								<h3 class="modal-title">Guarantor Information</h3>
								  <button type="button" class="close" data-dismiss="modal">&times;</button>
								 
								</div>
								<div class="modal-body">
									<input type="hidden" name="guarantorID">
									<input type="hidden" name="Relationship">
											<label>Relationship</label>
											<input type="hidden" name="guarantorID">
											<select name="Relationship" data-error="This Field is required" required>
													<option></option>
													<option>Employee</option>
													<option>Self</option>
													<option>Spouse</option>
													<option>Other</option>
													<option>Child</option>
													<option>Relative</option>
													<option>Siblings</option>
												</select>
											<br/>	
												<label>Guarantor</label><input type="text"  name="GuarantorName" data-error="Limit to only 30 characters" required>
											<br/>	
												<label>Last</label><input type="text"  name="Last" data-error="Limit to only 30 characters" required>
											<br/>	
												<label>First</label><input type="text"  name="First" data-error="Limit to only 30 characters" required>
											<br/>	
												<label>Middle</label><input type="text"  name="Middle" data-error="Limit to only 30 characters" required>
											<br/>	
												<label>SSN</label><input type="text"  name="SSN" data-error="Limit to only 20 characters" required>
											<br/>
												<label>Gender</label>
												<select name="Gender" data-error="This Field is required">
													<option></option>
													<option>Male</option>
													<option>Female</option>
												</select>
											<br/>
												<label>DOB</label><input type="date"  name="DOB" data-error="Place a proper date format" placeholder="yyyy-mm-dd" required><br/></br>
												<label>Emp. Status</label>
												<select name="EmpStatus">
													<option></option>
													<option>FULL TIME EMPLOYED</option>
													<option>PART TIME EMPLOYED</option>
													<option>NOT EMPLOYED</option>
													<option>Other</option>
													<option>SELF EMPLOYED</option>
													<option>ACTIVE</option>
													<option>MILITARY</option>
													<option>DUTY</option>
													<option>UNKNOWN</option>
												</select>
												<label>Emp. ID</label><input type="number"  name="EmpID"  required value="0" data-error="This Field is required"><br/>
												<label>Address</label><input type="text" size=60 name="Address" data-error="This Field is required" required><br/>
												<label>City</label><input type="text"  name="City" required data-error="Limit to only 20 characters"><br/>
												<label id='d'>State</label><input type="text"  name="State" required data-error="Limit to only 20 characters"><br/>
												<label id='d'>Zip</label><input type="number"  name="Zip" value="0" required data-error="Limit to only 20 characters"><br/>
												<label id='d'>Country</label><input type="text"  name="Country" required data-error="Limit to only 20 characters"><br/>
												<label>Phone</label><input type="tel"  name="Phone" required data-error="Enter digits(0-9) only"><br/>
												<label>Ext</label><input type="text"  name="Ext" required data-error="Limit to only 15 characters"><br/>
												<label>Cellphone No.</label><input type="text"  name="CellphoneNo" required data-error="Limit to only 13 characters"><br/>
												<label>Email</label><input type="email"  name="Email" required data-error="Place a proper format"><br/>
												<label>Fax</label><input type="text"  name="Fax" required data-error="Limit to only 15 characters"><br/>
							</div>
							<div class="modal-footer">
							  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									<button type="submit" name="crud" class="btn btn-secondary" value="Create New Record">Create New Record</button>
									
							</div>
						  </div>
						  
						</div>
					  </div>
		   
		   </form>	
		   </div>  
		</div>
					
				
			<div id="resTable">
				
		<%@page import="conn.DbCon,dao.GuarantorDAO,dbtb.dbtbGuarantor_record,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
			<% 
				List<dbtbGuarantor_record> l= GuarantorDAO.getAllRecords();
				request.setAttribute("l", l);
				
			%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Relationship</th>
					<th>GuarantorName</th>
					<th>SSN</th>
					<th>EmpStatus</th>
					<th>Address</th>
					<th>Phone</th>
					<th>CellphoneNo</th>
					<th>Email</th>
					
				</tr>
			</thead>
			<tbody id="GuaTable">
				<c:forEach items="${l}" var="c">
				<tr>
					<td><a href="GuarantorEDIT.jsp?guarantorID=${c.getguarantorID()}">Edit</a></td>
					<td>${c.getRelationship()}</td>
					<td>${c.getLast()}, ${c.getFirst()} ${c.getMiddle()}</td>
					<td>${c.getSSN()}</td>
					<td>${c.getEmpStatus()}</td>
					<td>${c.getAddress()} ${c.getCity()} ${c.getState()},${c.getCountry()}</td>
					<td>${c.getPhone()}</td>
					<td>${c.getCellphoneNo()}</td>
					<td>${c.getEmail()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
				</table>
	
		</div>
			 
		</div><!-- /container -->
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
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});

$(document).ready(function(){
	  $("#GuaInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#GuaTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
</script>
</html>