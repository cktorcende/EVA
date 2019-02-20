<%@page import="conn.DbCon,dao.CashierRecordsDAO,dbtb.dbtbcashier_record, java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<title>EVA:Cashier Record</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Resident</button>
			
			<%
       		 	int id=Integer.parseInt(request.getParameter("Cashier_ID"));
	        	dbtbcashier_record t=CashierRecordsDAO.getRecord(id);
			%>
			
				<form id="regForm" action="RecT.jsp">
					<div class="modal fade" id="Insmodal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Cashier</h3>
       						</div>
					        <div class="modal-body"> 
				<br/>
				<input type="hidden" name="Cashier_ID" value="<%=id %>">
				<input type="hidden" name="employeeCS_ID" value="<%=t.getemployeeCS_ID()%>">
				<label id="name">Last Name</label><input type="text" name="LastName" value="<%=t.getLastName() %>" size=30 required><br/>
				<label id="name">First Name</label><input type="text" name="FirstName" value="<%=t.getFirstName() %>" size=30 required><br/>
				<label id="name">Middle Name</label><input type="text" name="MiddleName" value="<%=t.getMiddleName() %>" size=30 required><br/>
				<label id="name">Date of Birth</label><input type="date" name="DateBirth" value="<%=t.getDateBirth() %>" required><br/>
				<label>Place of Birth</label><input type="text" name="PlaceOfBirth" value="<%=t.getPlaceOfBirth() %>" size=40 required><br/>
				<label>Age</label><input type="number" name="Age" value="<%=t.getAge() %>" required><br/>
				<label>Address</label><input type="text" name="Address" size=40 value="<%=t.getAddress() %>" required><br/>
				<label>City</label><input type="text" name="City" value="<%=t.getCity() %>" required><br/>
				<label>Pin Code</label><input type="text" name="PinCode" value="<%=t.getPinCode() %>" required><br/>
				<label>State</label><input type="text" name="State" value="<%=t.getState() %>"required><br/>
				<label>Country</label><input type="text" name="Country" value="<%=t.getCountry() %>" required><br/>
				<label>Phone</label><input type="text" name="Phone" value="<%=t.getPhone() %>"><br/>
				<label>Mobile</label><input type="text" name="Mobile" value="<%=t.getMobile() %>" required><br/>
				<label>Email</label><input type="text" name="Email" value="<%=t.getEmail() %>" required><br/>
				<label>Designation</label><input type="text" name="Designation" value="<%=t.getDesignation()%>" required><br/>
				<label>Joining Date</label><input type="date" name="JoiningDate" value="<%=t.getJoiningDate()%>" required><br/>
				<label>Qualification</label><input type="file" name="Qualification" value="<%=t.getQualification()%>" required><br/>
				<label>Specialization</label><input type="text"name="Specialization" value="<%=t.getSpecialization()%>" required><br/>
				<h2><ins>Cashier Details</ins></h2>
				<label>Registration No.</label><input type="text" value="<%=t.getRegistrationNo()%>" name="RegistrationNo"required><br/>
				<label>Registration Code</label><input type="text" value="<%=t.getRegistrationCode()%>" name="RegistrationCode" required><br/>
				<label>registration Date</label><input type="text" value="<%=t.getRegistrationDate()%>" name="RegistrationDate" required><br/>
				<label>Hospital Affiliation</label><input type="text" value="<%=t.getHospitalAffiliation()%>" name="HospitalAffiliation"placeholder="which hospitals did he/she worked with"><br/>
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
			
			<jsp:include page="RecordsTel.jsp"></jsp:include>
</body>
</html>