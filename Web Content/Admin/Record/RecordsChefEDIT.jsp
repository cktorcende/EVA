<%@page import="conn.DbCon,dao.ChefRecordDAO,dbtb.dbtbchef_record,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>Records:Chef</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
	<% 
		int id=Integer.parseInt(request.getParameter("chef_ID"));
		dbtbchef_record c= ChefRecordDAO.getRecord(id);
						    %>
			<form id="regForm" action="RecC.jsp">
				<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Allergy</h3>
       						</div>
					        <div class="modal-body"> 
								<br/>
								<input type="hidden" name="chef_ID" value=<%= id %>>
								<input type="hidden" name="employeeC_id" value=<%=c.getemployeeC_id() %>>
								
								<label id="name">Surname</label><input type="text" name="LastName" value="<%=c.getLastName() %>"size=30 required><br/>
								<label id="name">First Name</label><input type="text" name="FirstName" value="<%=c.getFirstName() %>" size=30 required><br/>
								<label id="name">Middle Name</label><input type="text" name="MiddleName" size=30 value="<%=c.getMiddleName() %>" required><br/>
								<label id="name">Date of Birth</label><input type="date" name="DateBirth" value="<%=c.getDateBirth() %>"required><br/>
								<label>Place of Birth</label><input type="text" name="PlaceOfBirth" size=40 value="<%=c.getPlaceOfBirth() %>" required><br/>
								<label>Age</label><input type="number" name="Age" value="<%=c.getAge() %>" required><br/>
								<label>Address</label><input type="text" name="Address" value="<%=c.getAddress() %>" size=40 required><br/>
								<label>City</label><input type="text" name="City" value="<%=c.getCity() %>" required><br/>
								<label>Pin Code</label><input type="text" name="PinCode" value="<%=c.getPinCode() %>" required><br/>
								<label>State</label><input type="text" name="State" value="<%=c.getState() %>" required><br/>
								<label>Country</label><input type="text" name="Country" value="<%=c.getCountry() %>"  required><br/>
								<label>Phone</label><input type="text" name="Phone" value="<%=c.getPhone() %>"><br/>
								<label>Mobile</label><input type="text" name="Mobile" value="<%=c.getMobile() %>" required><br/>
								<label>Email</label><input type="text" name="Email" value="<%=c.getEmail() %>" required><br/>
								<label>Designation</label><input type="text" name="Designation" value="<%=c.getDesignation() %>" required><br/>
								<label>Joining Date</label><input type="date" name="JoiningDate" value="<%=c.getJoiningDate() %>" required><br/>
								<label>Qualification</label><input type="file" name="Qualification"value="<%=c.getQualification() %>" required><br/>
								<label>Specialization</label><input type="text" name="Specialization"value="<%=c.getSpecialization() %>" required><br/>
								<h2><ins>Chef Details</ins></h2>
								<label>Registration No.</label><input name="RegistrationNo"type="text" name="RegistrationNo" value="<%=c.getRegistrationNo() %>" required><br/>
								<label>Registration Code</label><input type="text" name="RegistrationCode" value="<%=c.getRegistrationCode() %>" required><br/>
								<label>Registration Date</label><input type="text" name="RegistrationDate" value="<%=c.getRegistrationDate() %>" required><br/>
								<label>Hospital Affiliation</label><input type="text" name="HospitalAffiliation" value="<%=c.getHospitalAffiliation() %>"><br/>
								
								</div>
 							<div class="modal-footer">
    							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    							<input type='reset' class="btn btn-default">
								<button type="submit" name="crud" class="btn btn-default" value="Update Record">Update Record</button>
								<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
        					</div>
     					</div>
   					</div>
  				</div>		
			</form>
		<jsp:include page="RecordsChef.jsp"></jsp:include>
</body>
<script>

$('#EditModal').modal('show');

</script>
</html>