<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>EVA:Records</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
		
		<form action="Rec.jsp" method="POST"> 
 					<div class="modal fade" id="EditModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Personal Info</h3>
       						</div>
					        <div class="modal-body"> 
					        <%
					        int id=Integer.parseInt(request.getParameter("Patient_ID"));
					        dbtbClient_record cl=client_recordDAO.getRecord(id);
							%>    
								<br/>
									<input type="hidden" size=15 name="Patient_ID" value="<%=id %>">

									<input type="hidden" size=15 name="Client_ID" value="<%= cl.getClient_ID() %>">
									<label>Date Admitted</label><input type="date" size=20 name="DateAdmitted" value="<%= cl.getDate_Admitted() %>"placeholder="yyyy-mm-dd" data-error= "Please a valid Date following the format" required>
									<label id="s">Sex</label>
										<select tabindex="2" name="Sex">
											<option></option>
											<option>Male</option>
											<option>Female</option>
										</select><br/>
				
					
									<label>First Name</label><input type="text" size=40 name="FirstName" value="<%=cl.getFirstName() %>" placeholder= "Enter FirstName" data-error= "Limit to only 30 characters" required> 
								<br/>
									<label>Middle Name</label><input type="text" size=40 name="MiddleName" value="<%=cl.getMiddleName() %>" placeholder= "Enter MiddleName" data-error= "Limit to only 30 characters"required>
								<br/>	
									<label>Surname</label><input type="text" size=40 name="Surname" value="<%=cl.getSurname() %>" placeholder= "Enter SurName" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>BirthPlace</label><input type="text" size=40 name="BirthPlace" value="<%=cl.getBirthPlace() %>" placeholder= "Enter BirthPlace" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>Birth Date</label><input type="date" name="BirthDate" value="<%=cl.getBirthDate() %>" size=40 placeholder="yyyy-mm-dd" data-error= "Please a valid Date following the format" required>
								<br/>
									<label>Age</label><input type="number" size=40 name="LocationCode" name="LocationCode" placeholder= "Enter (0-9) digits only " data-error= "Must be digits (0-9)" required>
								<br/>	
									<label>Address</label><input type="text" size=78 name="Address" value="<%=cl.getAddress() %>" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters" required>
								<br/>	
									<label>City</label><input type="text" name="City" size=40 value="<%=cl.getCity() %>" placeholder= "Enter City" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Province</label><input type="text" size=40 name="Province"  value="<%=cl.getProvince() %>" placeholder= "Enter Province" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Country</label><input type="text" size=40 name="Country" value="<%=cl.getCountry() %>" placeholder= "Enter Country" data-error= "Limit to only 20 characters" required>
								<br/>	
									<label>Location Code</label><input type="number" size=40 name="LocationCode" value="<%=cl.getLocationCode() %>" placeholder= "Enter (0-9) digits only " data-error= "Must be digits (0-9)" required>
								<br/>	
									<label>Residence Code</label><input type="number" size=40 name="ResidenceCode"value="<%=cl.getResidenceCode() %>" placeholder= "Enter (0-9) digits only " data-error= "Must be digits (0-9)" required>
								<br/>	
									<label>Deceased Date</label><input type="date"  size=40 name="DeceasedDate" value="<%=cl.getDeceasedDate() %>" placeholder="yyyy-mm-dd" data-error= "Please a valid Date following the format">
								<br/>	
									<label>Referred By</label><input type="number" size=40 name="RefferedBy" value="<%=cl.getReferredBy() %>" placeholder= "Enter (0-9) digits only" data-error= "Limit to only 30 characters" required>
								<br/>	
									<label>Patient Status</label><input type="text" size=40 name="PatientStatus" value="<%=cl.getPatientStatus() %>" placeholder= "Enter Patient Status" data-error= "This field is required" required>
								<br/>
									<label>Remarks</label><input type="text" size=60 name="Remarks" value="<%=cl.getRemarks() %>" placeholder= "Enter Remarks" data-error= "Limit to only 30 characters">
								<br/>
								<h4>Additional Information</h4>
								<label>MaritalStatus</label><input type="text" size=40 name="Marital" value="<%=cl.getMarital() %>" placeholder= "Enter MaritalStatus" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Language</label><input type="text" size=40 name="Language" value="<%=cl.getLanguage() %>" placeholder= "Enter Language" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Patient Type</label><input type="text" size=40 name="PatientType" value="<%=cl.getAcctType() %>" placeholder= "Enter PatientType" data-error= "Limit to only 30 characters">
							<br/>	
								<label>Email</label><input type="email" size=40 name="Email" value="<%=cl.getEmail() %>" placeholder= "Enter Email" data-error= "enter a proper email format"  required><br/><br/>
							
					
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
  		
  		<jsp:include page="Admission.jsp"></jsp:include>
</body>
<script>

$('#EditModal').modal('show');

</script>
</html>