<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbNurse_record,dbtb.dbtbDoctor_record,dbtb.dbtbcaregiver_record, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

	<title>EVA:Practitioner Record</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#RegModal">Create New Practitioner</button>
			
<form id="regForm" action="RecN.jsp">

		<% 
			int id=Integer.parseInt(request.getParameter("Caregiver_ID"));
			dbtbcaregiver_record n =EmployeeRecordDAO.getRecordC(id);
		
		%>
		<div class="modal fade" id="RegModal" role="dialog">
				<div class="modal-dialog">
 					  <div class="modal-content">
 					    <div class="modal-header">
     						<button type="button" class="close" data-dismiss="modal">&times;</button>
     							<h3 class="modal-title">Personal Info</h3>
    						</div>
		        <div class="modal-body"> 
	
				<label>Staff Type</label>
				<select name="StaffType">
					<option></option>
					<option value="Doctor">Doctor</option>
					<option value="Nurse">Nurse</option>
					<option value="Caregiver">Caregiver</option>
				</select><br/>
			
		
				<input type="hidden" name="Caregiver_ID" value="<%=id %>">
		
				<label id="name">Last Name</label><input type="text" name="LastName" value="<%= n.getLastName()%>" size=30 required><br/>
				<label id="name">First Name</label><input type="text" name="FirstName" value="<%= n.getFirstName()%>" size=30 required><br/>
				<label id="name">Middle Name</label><input type="text" name="MiddleName" value="<%= n.getMiddleName()%>" size=30 required><br/>
				<label id="name">Date of Birth</label><input type="date" name="DateBirth" value="<%=n.getDateBirth() %>"required><br/>
				<label>Place of Birth</label><input type="text" name="PlaceOfBirth" value="<%=n.getPlaceOfBirth()%>" size=40 required><br/>
				<label>Age</label><input type="number" name="Age" value="<%=n.getAge()%>" required><br/>
				<label>Address</label><input type="text" name="Address" value="<%=n.getAddress()%>" size=40 required><br/>
				<label>City</label><input type="text" name="City" value="<%=n.getCity()%>" required><br/>
				<label>Pin Code</label><input type="text" name="PinCode" value="<%=n.getPinCode()%>" required><br/>
				<label>State</label><input type="text" name="State" value="<%=n.getState()%>"><br/>
				<label>Country</label><input type="text" name="Country" value="<%=n.getCountry()%>" required><br/>
				<label>Phone</label><input type="text" name="Phone" value="<%=n.getPhone()%>"><br/>
				<label>Mobile</label><input type="text" name="Mobile" value="<%=n.getMobile()%>" required><br/>
				<label>Email</label><input type="text" name="Email" value="<%=n.getEmail()%>" required><br/>
				<label>Designation</label><input type="text" name="Designation" value="<%=n.getDesignation()%>" required><br/>
				<label>Joining Date</label><input type="date" name="JoiningDate" value="<%=n.getJoiningDate()%>" required><br/>
				<label>Qualification</label><input type="file" name="Qualification" value="<%=n.getQualification()%>"required><br/>
				<label>Specialization</label><input type="text" name="Specialization" value="<%=n.getSpecialization()%>"required><br/>
			<h2><ins>Doctor Details</ins></h2>
				<label>Registration No.</label><input type="text" name="RegistrationNo" value="<%=n.getRegistrationNo()%>" required><br/>
				<label>Registration Code</label><input type="text" name="RegistrationCode" value="<%=n.getRegistrationCode()%>" required><br/>
				<label>Registration Date</label><input type="date" name="RegistrationDate" value="<%=n.getRegistrationDate()%>" required><br/>
				<label>Hospital Affiliation</label><input type="text"name="HospitalAffiliation" value="<%=n.getHospitalAffiliation()%>"><br/>
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
  		<jsp:include page="RecordsNur.jsp"></jsp:include>
</body>
</html>