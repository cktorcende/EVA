<!DOCTYPE html>
<html>
<head><title>EVA:Practitioner Record</title>
	<link rel="stylesheet" href="css/Records.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
	<div id="container" class="cont"><pre>EVA:Employee Record</pre></div>
	
	<div id="all">
		<div id="Search">
			<h2>Search for Nurse</h2>
			<form id="SearchForm">
				<input id="NInput" type="text" placeholder="Search.." size=60>  
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#RegModal">Create New Practitioner</button>
				
			</form>
			<form id="regForm" action="RecN.jsp">
					<div class="modal fade" id="RegModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Practitioner</h3>
       						</div>
					        <div class="modal-body"> 
				
							<label>Staff Type</label>
							<select name="StaffType">
								<option></option>
								<option>Doctor</option>
								<option>Nurse</option>
								<option>Caregiver</option>
							</select><br/>
							<label id="name">Last Name</label><input type="text" name="LastName" size=30 required><br/>
							<label id="name">First Name</label><input type="text" name="FirstName" size=30 required><br/>
							<label id="name">Middle Name</label><input type="text" name="MiddleName" size=30 required><br/>
							<label id="name">Date of Birth</label><input type="date" name="DateBirth"required><br/>
							<label>Place of Birth</label><input type="text" name="PlaceOfBirth" size=40 required><br/>
							<label>Age</label><input type="number" name="Age" required><br/>
							<label>Address</label><input type="text" name="Address" size=40 required><br/>
							<label>City</label><input type="text" name="City" required><br/>
							<label>Pin Code</label><input type="text" name="PinCode" required><br/>
							<label>State</label><input type="text" name="State"><br/>
							<label>Country</label><input type="text" name="Country" required><br/>
							<label>Phone</label><input type="text" name="Phone"><br/>
							<label>Mobile</label><input type="text" name="Mobile" required><br/>
							<label>Email</label><input type="text" name="Email" required><br/>
							<label>Designation</label><input type="text" name="Designation"required><br/>
							<label>Joining Date</label><input type="date" name="JoiningDate"required><br/>
							<label>Qualification</label><input type="file" name="Qualification"required><br/>
							<label>Specialization</label><input type="text" name="Specialization"required><br/>
						<h2><ins>Doctor Details</ins></h2>
							<label>Registration No.</label><input type="text" name="RegistrationNo" required><br/>
							<label>Registration Code</label><input type="text" name="RegistrationCode" required><br/>
							<label>Registration Date</label><input type="text" name="RegistrationDate" required><br/>
							<label>Hospital Affiliation</label><input type="text"name="HospitalAffiliation" ><br/>
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
				
		<%@page import="conn.DbCon,dao.NurseDAO,dbtb.dbtbNurse_record, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
			List<dbtbNurse_record> list= NurseDAO.getAllRecords();
			request.setAttribute("list", list);
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
			<tbody id="Nurse">
				<c:forEach items="${list}" var="c">
					<tr>
					<td><a href="RecordsNurEDIT.jsp?Nurse_ID=${c.getNurse_ID()}">edit</a></td>
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
		<div id="Search">
			<h2>Search for Doctor</h2>
			<form id="SearchForm">
				<input id="DInput" type="text" placeholder="Search.." size=60>  
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#RegModal">Create New Practitioner</button>
				
			</form>
		</div>
			
		<div id="resTable">
				
		<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbDoctor_record, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
			List<dbtbDoctor_record> li= EmployeeRecordDAO.getAllRecordsD();
			request.setAttribute("li", li);
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
			<tbody id="Doctor">
				<c:forEach items="${li}" var="c">
					<tr>
						<td><a href="RecordsDocEDIT.jsp?Doctor_ID=${c.getDoctor_ID()}">edit</a></td>
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
		<div id="Search">
			<h2>Search for Caregiver</h2>
			<form id="SearchForm">
				<input id="CInput" type="text" placeholder="Search.." size=60>  
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#RegModal">Create New Practitioner</button>
				
			</form>
		</div>
			
		<div id="resTable">
				
		<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbcaregiver_record, java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
			List<dbtbcaregiver_record> l= EmployeeRecordDAO.getAllRecordsC();
			request.setAttribute("l", l);
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
			<tbody id="Caregiver">
				<c:forEach items="${l}" var="c">
					<tr>
						<td><a href="RecordsCarEDIT.jsp?Caregiver_ID=${c.getCaregiver_ID()}">edit</a></td>
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
		<button id="ref" onclick="location.href='Prescribe.jsp' ">As a Prescriber</button>
		<button id="pri" onclick="location.href='RecordsChef.jsp' ">Chef/Cook Record</button>
		<button id="com" onclick="location.href='RecordsTel.jsp' ">Cashier's Record</button>
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
		  $("#DInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#Doctor tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});

	$(document).ready(function(){
		  $("#NInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#Nurse tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});

	$(document).ready(function(){
		  $("#CInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#Caregiver tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	</script>
</html>