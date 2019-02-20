<%@page import="conn.DbCon,dao.CashierRecordsDAO,dbtb.dbtbcashier_record, java.sql.*"%>

<!DOCTYPE html>
<html>
<head><title>EVA:Cashier Record</title>
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
									<a class="gn-icon gn-icon-article" >Records</a>
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
			<h2>Search for Cashier</h2>
				<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbcashier_record,java.util.*"%>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
					<% 
						
					%>
			<form id="SearchForm">
				<br/>
				 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
				
				 <button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Resident</button>
			</form>
				<form id="regForm" action="RecT.jsp">
					<div class="modal fade" id="Insmodal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
    					    	<h3 class="modal-title">Add Cashier</h3>
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							
       						</div>
					        <div class="modal-body"> 
				<br/>
				<label id="name">Last Name</label><input type="text" name="LastName" size=30 required><br/>
				<label id="name">First Name</label><input type="text" name="FirstName" size=30 required><br/>
				<label id="name">Middle Name</label><input type="text" name="MiddleName" size=30 required><br/>
				<label id="name">Date of Birth</label><input type="date" name="DateBirth"required><br/>
				<label>Place of Birth</label><input type="text" name="PlaceOfBirth" size=40 required><br/>
				<label>Age</label><input type="number" name="Age" required><br/>
				<label>Address</label><input type="text" name="Address" size=40 required><br/>
				<label>City</label><input type="text" name="City" required><br/>
				<label>Pin Code</label><input type="text" name="PinCode" required><br/>
				<label>State</label><input type="text" name="State"required><br/>
				<label>Country</label><input type="text" name="Country" required><br/>
				<label>Phone</label><input type="text" name="Phone"><br/>
				<label>Mobile</label><input type="text" name="Mobile" required><br/>
				<label>Email</label><input type="text" name="Email" required><br/>
				<label>Designation</label><input type="text" name="Designation"required><br/>
				<label>Joining Date</label><input type="date" name="JoiningDate"required><br/>
				<label>Qualification</label><input type="file" name="Qualification"required><br/>
				<label>Specialization</label><input type="text" required><br/>
				<h2><ins>Cashier Details</ins></h2>
				<label>Registration No.</label><input type="text" name="RegistrationNo"required><br/>
				<label>Registration Code</label><input type="text"  name="RegistrationCode" required><br/>
				<label>registration Date</label><input type="text" name="RegistrationDate" required><br/>
				<label>Hospital Affiliation</label><input type="text" name="HospitalAffiliation"placeholder="which hospitals did he/she worked with"><br/>
				</div>
 							<div class="modal-footer">
    							<button type="button"class="btn btn-secondary" data-dismiss="modal">Close</button>
    							<input type='reset' class="btn btn-secondary">
								<button type="submit" name="crud" class="btn btn-secondary" value="Create New Record">Create New Record</button>
        					</div>
     					</div>
   					</div>
  				</div>		
			</form>
		</div>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th width="50%">Name</th>
					<th>Age</th>
					<th width="50%">Address</th>
					<th>Phone</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>Specialization</th>
					
					
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="RecordsTelEDIT.jsp?Chef_ID=${c.getChef_ID()}">edit</a></td>
					<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
					<td>${c.getAge()}</td>
					<td>${c.getAddress()}, ${c.getCity()} ${c.getState()}, ${c.getCountry()}</td>
					<td>${c.getPhone()}</td>
					<td>${c.getMobile()}</td>
					<td>${c.getEmail()}</td>
					<td>${c.getSpecialization()}</td>
					
					
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
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