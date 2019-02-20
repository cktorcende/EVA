<%@page import="dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head><title>EVA:Insurance Plan</title>
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
	
	<div id="all">
		<div id="Search">
			<h2>SEARCH FOR INSURANCE</h2>
			<form>
				 <input type="radio" name="Search" value="Username" >
				    <a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60> 
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Modal">Create New Insurance</button>
				<br/>
			</form>
 						
 			 <form action="InsP.jsp" method="POST"> 
 					<div class="modal fade" id="Modal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Available Insurance</h3>
       						</div>
					        <div class="modal-body"> 
								<label>Insurance Plan Code</label>
								<input type="text" name="InsurancePlanCode"/><br/>
								<label>Record NO.</label>
								<input type="number" name="RecordNO"/><br/>
								<label>Name</label>
								<input type="text" name="Name"size=50><br/>
								<label>HelpDesk NO.</label>
								<input type="tel" name="HelpDeskNO"><br/>
								<label>Address line 1</label>
								<input type="text" name="AddressLine1" size=50><br/>
								<label>Address line 2</label>
								<input type="text" name="AddressLine2" size=50><br/>
								<label>Plan Bin NO.</label>
								<input type="text" name="PlanBinNO"><br/>
								<label>City</label>
								<input type="text" name="City"><br/>
								<label>Processor Control NO.</label>
								<input type="number" name="ProcessorControlNO"><br/>
								<label>State</label>
								<input type="text" name="State"><br/>
								<label>Zip No.</label>
								<input type="number" name="ZipNo"><br/>
								<label>Software Vendor ID</label>
								<input type="text" name="SoftwareVendorID"><br/>
								<label>Alternate Phone</label>
								<input type="tel" name="AlternatePhone"><br/>
								<label>Fax</label>
								<input type="text" name="Fax"><br/>
								<label>Remarks</label>
								<input type="text" name="Remarks"><br/>
								<label>Email</label>
								<input type="email" name="Email"><br/>
								<label>Pharmacy ID Qualifier</label>
								<input type="text" name="PharmacyIdQualifier"><br/>
								<label>Pharmacy ID</label>
								<input type="text" name="PharmacyID"><br/>
								<label>Cash Plan</label>
								<select name="CashPlan">
										<option></option>
										<option>100K</option>
										<option>300K</option>
										<option>500K</option>
										<option>1M</option>
										<option>OTHER</option>
									</select><br/>
								<label>NCPDP Version</label>
								<input type="text" name="NCPDPVersion"><br/>
								<input type="hidden" name="insurance_id">
							
					
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
		<%@page import="conn.DbCon,dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		
		<% List<dbtbInsurance> list= InsuranceDAO.getAllRecords();
			request.setAttribute("list", list);
				
		%>
			
		
			<table class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>Insurance Plan Code</th>
					<th width="30%">Name</th>
					<th>HelpDesk NO.</th>
					<th width="40%">Address 1</th>
					<th width="40%">Address 2</th>
					<th>Software Vendor ID</th>
					<th>Email</th>
					<th>CashPlan</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="i">
				<tr>
					<td><a href="InsurancePlansEDIT.jsp?insurance_id=${i.getinsurance_id()}">edit</a></td>
					<td>${i.getInsurancePlanCode()}</td>
					<td>${i.getName()}</td>
					<td>${i.getHelpDeskNO()}</td>
					<td>${i.getAddressLine1()}, ${i.getCity()}, ${i.getState()}</td>
					<td>${i.getAddressLine2()}, ${i.getCity()}, ${i.getState()}</td>
					<td>${i.getSoftwareVendorID()}</td>
					<td>${i.getEmail()}</td>
					<td>${i.getCashPlan()}</td>
				</tr>
				</c:forEach></tbody>
			<tbody>
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