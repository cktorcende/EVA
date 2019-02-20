<%@page import="conn.DbCon,dao.ChefRecordDAO,dbtb.dbtbchef_record,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head><title>EVA:Chef Record</title>
	<link rel="stylesheet" href="css/Records.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.html">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.html">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.html">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	
	<div id="all">
		<h1>STAFF'S PROFILE</h1>
		<div id="Search">
			<h2>Search for Chef</h2>
			<form id="SearchForm">
				<br/>
			<input id="myInput" type="text" placeholder="Search.." size=60>  
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
			</form>
			<form id="regForm" action="RecC.jsp">
				<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Chef</h3>
       						</div>
					        <div class="modal-body"> 
								<br/>
								<label id="name">Surname</label><input type="text" name="LastName" size=30 required><br/>
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
								<input type="checkbox" name="ISNutritionist"><label>Is a nutritionist?</label><br/>
								<label>Designation</label><input type="text" name="Designation"required><br/>
								<label>Joining Date</label><input type="date" name="JoiningDate"required><br/>
								<label>Photo</label><input type="file" name="Qualification"required><br/>
								<label>Specialization</label><input name="Specialization"type="text" required><br/>
								<h2><ins>Chef Details</ins></h2>
								<label>Practice</label><input type="text" required><br/>
								<label>Registration No.</label><input name="RegistrationNo"type="text" required><br/>
								<label>Registration Code</label><input name="RegistrationCode" type="text" required><br/>
								<label>registration Date</label><input name="RegistrationDate" type="date" required><br/>
								<label>Hospital Affiliation</label><input name="HospitalAffiliation" type="text"><br/>
								
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
				List<dbtbchef_record> list= ChefRecordDAO.getAllRecords();
			  	request.setAttribute("list",list);
			
			%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Name</th>
					<th>Age</th>
					<th>Address</th>
					<th>Phone</th>
					<th>Mobile</th>
					<th>Email</th>
					<th>Specialization</th>
					<th>Registration No.</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="RecordsChefEDIT.jsp?chef_ID=${c.getchef_ID()}">edit</a></td>
					<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
					<td>${c.getAge()}</td>
					<td>${c.getAddress()}, ${c.getCity()} ${c.getState()}, ${c.getCountry()}</td>
					<td>${c.getPhone()}</td>
					<td>${c.getMobile()}</td>
					<td>${c.getEmail()}</td>
					<td>${c.getSpecialization()}</td>
					<td>${c.getRegistrationNo()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
	</div>

	<div id="buttons">
		<button id="his" onclick="location.href='Experience.jsp' ">Experience</button>
		<button id="dis" onclick="location.href='Achievements.jsp' ">Achievements</button>
		<button id="alle" onclick="location.href='View.jsp' ">Profile View</button>
		<button id="gen" onclick="location.href='Assigned.jsp' ">Patients Assigned</button>
		<button id="cli" onclick="location.href='Reviews.jsp' ">Reviews/Comments</button>
		<button id="inv" onclick="location.href='HistoryP.jsp' ">History</button>
		<button id="ref" onclick="location.href='History.jsp' ">Food Specialties</button>
		<button id="pri" onclick="location.href='RecordsNur.jsp' ">Practitioner Record</button>
		<button id="com" onclick="location.href='RecordTel.jsp' ">Cashier's Record</button>
		<button id="pra" onclick="location.href='Records.jsp' " >Patient's Record</button>
		
	</div>
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