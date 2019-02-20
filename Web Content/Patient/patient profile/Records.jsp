<!DOCTYPE html>
<html>
<head><title>EVA:Records</title>
	 <link rel='stylesheet' href='css/Records.css'>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.jsp">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.jsp">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Inventory/Inventory.jsp">INVENTORY</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	
	
	
	<div id="all">
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
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Personal Info</h3>
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
									<label>Address</label><input type="text" size=78 name="Address" placeholder="(HouseNo/Street/Barangay/Subdivision)"data-error="Limit to only 60 characters" required>
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
								  <button type="button" class="close" data-dismiss="modal">&times;</button>
								  <h3 class="modal-title">Guarantor Information</h3>
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
									<button type="submit" name="crud" value="Create New Record">Create New Record</button>
									
							</div>
						  </div>
						  
						</div>
					  </div>
		   
		   </form>	  
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
	</div>
		
	
	<div id="buttons">
		<button id="his" onclick="location.href='View.html' ">View Record</button>
		<button id="dis" onclick="location.href='Disease.jsp' ">Disease</button>
		<button id="alle" onclick="location.href='Allergy.jsp' ">Allergy</button>
		<button id="gen" onclick="location.href='GenInfo.jsp' ">General Information</button>
		<button id="cli" onclick="location.href='CliEx.jsp' ">Clinical Examination</button>
		<button id="pes" onclick="location.href='Prescriptions.jsp' ">Prescriptions</button>
		<button id="fam" onclick="location.href='Insurance.jsp' ">Patient Insurance</button>
		<button id="biil" onclick="location.href='AppPay.jsp' ">Application Of Payer</button>
		<button id="opd" onclick="location.href='Bedass.html' ">Suggested Activities</button>
		<button id="inv" onclick="location.href='Bedass.html' ">Bed Assignment</button>
		<button id="com" onclick="location.href='Insurance Plans.jsp' ">Add Insurance Plans</button>
		<button id="ref" onclick="location.href='RecordsChef.jsp' ">Chef/Cook Record</button>
		<button id="pri" onclick="location.href='RecordsTel.jsp' ">Teller Record</button>
		<button id="pra" onclick="location.href='RecordsNur.jsp' " >Practioner's Record</button>
		
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