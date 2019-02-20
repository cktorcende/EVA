<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.sql.*,dao.Contact_personDAO,dbtb.dbtbContact_person"%>
<!DOCTYPE html>
<html>
<head>
	<title>EVA:Records</title>
	  <link rel='stylesheet' href='css/Admission.css'>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.jsp">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.jsp">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.jsp">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Record\Records.jsp">RECORDS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
		
		<div id="Search">
			<form>   
				<h2>SEARCH FOR ADMITTED PATIENT</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				   <input type="search" name="SearchUN" size=23 >
				   <button name="Edit" class="btn btn-info btn-lg">Search</button>
				   <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
			</form>
				
			 <form action="Rec.jsp" method="POST"> 
 					<div class="modal fade" id="PerInfo" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Personal Info</h3>
       						</div>
					        <div class="modal-body"> 
								<br/>
									<input type="hidden" size=15 name="Patient_ID" >
									<input type="hidden" size=15 name="Client_ID">
									<label>Date Admitted</label><input type="date" size=20 name="DateAdmitted" placeholder="yyyy-mm-dd" data-error= "Please a valid Date following the format" required>
									<label id="s">Sex</label>
										<select tabindex="2" name="Sex" >
											<option></option>
											<option>Male</option>
											<option>Female</option>
										</select>
										
								<br/>
									<label>First Name</label><input type="text" size=40 name="FirstName" placeholder= "Enter FirstName" data-error= "Limit to only 30 characters" required> 
								<br/>
									<label>Middle Name</label><input type="text" size=40 name="MiddleName" placeholder= "Enter Middle Name" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>Surname</label><input type="text" size=40 name="Surname" placeholder= "Enter Surname" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>BirthPlace</label><input type="text" size=40 name="BirthPlace" placeholder= "Enter BirthPlace" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>Birth Date</label><input type="date" name="BirthDate"  size=40 placeholder="yyyy-mm-dd"  data-error= "Please a valid Date following the format" required>
								<br/>	
									<label>Address</label><input type="text" size=78 name="Address" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters" required>
								<br/>	
									<label>City</label><input type="text" name="City" size=40 placeholder= "Enter City" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Province</label><input type="text" size=40 name="Province" placeholder= "Enter Province" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Country</label><input type="text" size=40 name="Country" placeholder= "Enter Country" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Location Code</label><input type="number" size=40 name="LocationCode" placeholder= "Enter (0-9) digits only " data-error= "Must be digits (0-9)"  required>
								<br/>	
									<label>Residence Code</label><input type="number" size=40 name="ResidenceCode" placeholder= "Enter (0-9) digits only " data-error= "Must be digits (0-9)" required>
								<br/>	
									<label>Referred By</label><input type="number" size=40 name="ReferredBy" placeholder= "Enter (0-9) digits only" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>Patient Status</label><input type="text" size=40 name="PatientStatus" placeholder= "Enter Patient Status" data-error= "This field is required" required>
								<br/>
									<label>Remarks</label><input type="text" size=60 name="Remarks" placeholder= "Enter Remarks" data-error= "Limit to only 30 characters">
								<br/>
							<h4>Additional Information</h4>
								<label>MaritalStatus</label><input type="text" size=40 name="Marital" placeholder= "Enter MaritalStatus" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Language</label><input type="text" size=40 name="Language" placeholder= "Enter Language" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Patient Type</label><input type="text" size=40 name="PatientType" placeholder= "Enter PatientType" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Email</label><input type="email" size=40 name="Email" placeholder= "Enter Email" data-error= "enter a proper email format" required><br/><br/>
							
					
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
				<tr>
					<th></th>
					<th>Date_Admitted</th>
					<th>Gender</th>
					<th>FirstName</th>
					<th>MiddleName</th>
					<th>Surname</th>
					<th>BirthPlace</th>
					<th>BirthDate</th>
					<th>Address</th>
					<th>City</th>
					<th>Province</th>
					<th>Country</th>
					<th>LocationCode</th>
					<th>ResidenceCode</th>
					<th>RefferedBy</th>
					<th>PatientStatus</th>
					<th>Remarks</th>
					<th>Language</th>
					<th>MARITAL</th>
					<th>PatientType</th>
					<th>Email</th>
				</tr>
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="RecordEDIT.jsp?Patient_ID=${c.getPatient_ID()}">Edit</a></td>
					<td>${c.getDate_Admitted()}</td>
					<td>${c.getSex()}</td>
					<td>${c.getFirstName()}</td>
					<td>${c.getMiddleName()}</td>
					<td>${c.getSurname()}</td>
					<td>${c.getBirthPlace()}</td>
					<td>${c.getBirthDate()}</td>
					<td>${c.getAddress()}</td>
					<td>${c.getCity()}</td>
					<td>${c.getProvince()}</td>
					<td>${c.getCountry()}</td>
					<td>${c.getLocationCode()}</td>
					<td>${c.getResidenceCode()}</td>
					<td>${c.getReferredBy()}</td>
					<td>${c.getPatientStatus()}</td>
					<td>${c.getRemarks()}</td>
					<td>${c.getLanguage()}</td>
					<td>${c.getMarital()}</td>
					<td>${c.getAcctType()}</td>
					<td>${c.getEmail()}</td>
					<td></td>
				</tr>
				</c:forEach>
				</table>
		</div>
		
		
	<div id="emer"class="cont">
		<form>   
			<h2>SEARCH FOR CONTACT PATIENT</h2>
			   <input type="search" name="SearchUN" size=23 disabled>
			   <button name="Edit" class="btn btn-info btn-lg">Search</button>
			   <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Contact">Create New Contact Person</button>
		</form>
		<form id="regForm" action="ContactPer.jsp">
			<div class="modal fade" id="Contact" role="dialog">
 				<div class="modal-dialog">
    				<div class="modal-content">
    					<div class="modal-header">
        					<button type="button" class="close" data-dismiss="modal">&times;</button>
        						<h3 class="modal-title">IN CASE OF EMERGNCY</h3>
       					</div>
					    <div class="modal-body"> 
							 <input type="text" id='P_ID' name="P_ID"/>
					        		
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
							<label>Contact Person</label><input type="text" size=40 name="ContactPerson" placeholder= "Enter Contact Person" data-error= "Limit to only 30 characters">
							<label>Relationship</label><input type="text" name="Relationship" placeholder= "Enter Relationship" data-error= "Limit to only 30 characters">
							<label>Age</label><input type="text" name="Age" placeholder= "Enter Age" data-error= "Limit to only 20 characters"><br/>
							<label>Primary Address</label><input type="text" size=75 name="PrimaryAddress" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters">
							<label>City/Province</label><input type="text"  name="PCity" placeholder= "Enter City/Province" data-error= "Limit to only 30 characters">
						<br/>
							<label>Secondary Address</label><input type="text" size=75 name="SecondaryAddress" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters">
							<label>City/Province</label><input type="text"  name="SCity" placeholder= "Enter City/Province" data-error= "Limit to only 30 characters">
						<br/>
							<label>Mobile No.</label><input type="tel" name="Phone" placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
							<label>Telephone No.</label><input type="tel" name="Phone" placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
							<label>Other Contact No.</label><input type="text" name="ContactNo" placeholder= "Enter Other Contact No." data-error= "Limit to only 13 characters">
						<br/>
							<label>Work</label><input type="text" name="Work" placeholder= "Enter Work" data-error= "Limit to only 30 characters">
							<label>Work Phone</label><input type="tel" name="WorkPhone" placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
							<label>Work Address</label><input type="text" size=40 name="WorkAddress" placeholder= "Enter Work Address" data-error= "Limit to only 30 characters">
						<br/><br/>
							<input type="reset">
								<button type="submit" name="crud" value="Create New Record">Create New Record</button>
										
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
			List<dbtbContact_person> l= Contact_personDAO.getAllRecords();
			request.setAttribute("l", l);
		%>			
		
			<table class="table table-bordered table-striped">
				<tr>
					<th></th>
					<th>ContactPerson</th>
					<th>Relationship</th>
					<th>Age</th>
					<th>PrimaryAddress</th>
					<th>PCity</th>
					<th>SecondaryAddress</th>
					<th>SCity</th>
					<th>Mobile</th>
					<th>Phone</th>
					<th>ContactNo</th>
					<th>Work</th>
					<th>WorkPhone</th>
					<th>WorkAddress</th>
					
				</tr>
				<c:forEach items="${l}" var="c">
				<tr>
					<td><a href="ContactPersonEDIT.jsp?ContactID=${c.getContactID()}">Edit</a></td>
					<td>${c.getContactPerson()}</td>
					<td>${c.getRelationship()}</td>
					<td>${c.getAge()}</td>
					<td>${c.getPrimaryAddress()}</td>
					<td>${c.getPCity()}</td>
					<td>${c.getSecondaryAddress()}</td>
					<td>${c.getSCity()}</td>
					<td>${c.getMobile()}</td>
					<td>${c.getPhone()}</td>
					<td>${c.getContactNo()}</td>
					<td>${c.getWork()}</td>
					<td>${c.getWorkPhone()}</td>
					<td>${c.getWorkAddress()}</td>
					
					<td></td>
				</tr>
				</c:forEach>
				</table>
		</div>
	
	<div id="insurance">
		<form>
			<h2>Bedroom assignment Details</h2>
				<label>Floor</label><input type="text">
				<label>Wing</label><input type="text">
				<label>Room No.</label><input type="text">
				<label>Bed No.</label><input type="text">
		</form>
			<button onclick="location.href='Bedass.jsp' ">Assign patient a bedroom</button>
				
		</div>
	</body>
	<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

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
	</script>
</html>