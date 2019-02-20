<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>EVA:Records</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
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
									<label>Date Admitted</label><input type="date" size=20 name="DateAdmitted" value="<%= cl.getDate_Admitted() %>"placeholder="yyyy-mm-dd" required>
									<label id="s">Gender</label>
										<select name="Sex">
											<option><%=cl.getSex()%></option>
											<option></option>
											<option>Male</option>
											<option>Female</option>
										</select><br/>
				
					
									<label>First Name</label><input type="text" size=40 name="FirstName" value="<%=cl.getFirstName() %>" required> 
								<br/>
									<label>Middle Name</label><input type="text" size=40 name="MiddleName" value="<%=cl.getMiddleName() %>" required>
								<br/>	
									<label>Surname</label><input type="text" size=40 name="Surname" value="<%=cl.getSurname() %>" required>
								<br/>	
									<label>BirthPlace</label><input type="text" size=40 name="BirthPlace" value="<%=cl.getBirthPlace() %>" required>
								<br/>	
									<label>Birth Date</label><input type="date" name="BirthDate" value="<%=cl.getBirthDate() %>" size=40 placeholder="yyyy-mm-dd" required>
								<br/>
									<label>Age</label><input type="number" size=40 name="LocationCode"  required>
								<br/>	
									<label>Address</label><input type="text" size=78 name="Address" value="<%=cl.getAddress() %>" required>
								<br/>	
									<label>City</label><input type="text" name="City" size=40 value="<%=cl.getCity() %>" required>
								<br/>	
									<label>Province</label><input type="text" size=40 name="Province"  value="<%=cl.getProvince() %>"required>
								<br/>	
									<label>Country</label><input type="text" size=40 name="Country" value="<%=cl.getCountry() %>" required>
								<br/>	
									<label>Location Code</label><input type="number" size=40 name="LocationCode" value="<%=cl.getLocationCode() %>" required>
								<br/>	
									<label>Residence Code</label><input type="number" size=40 name="ResidenceCode"value="<%=cl.getResidenceCode() %>" required>
								<br/>		
									<label>Reffered By</label><input type="number" size=40 name="RefferedBy" value="<%=cl.getReferredBy() %>" required>
								<br/>	
									<label>Patient Status</label><input type="text" size=40 name="PatientStatus" value="<%=cl.getPatientStatus() %>" required>
								<br/>
									<label>Remarks</label><input type="text" size=60 name="Remarks" value="<%=cl.getRemarks() %>">
								<br/>
							<h4>Additional Information</h4>
								<label>MaritalStatus</label><input type="text" size=40 name="Marital" value="<%=cl.getMarital() %>">
							<br/>	
								<label>Language</label><input type="text" size=40 name="Language" value="<%=cl.getLanguage() %>">
							<br/>	
								<label>Patient Type</label><input type="text" size=40 name="PatientType" value="<%=cl.getAcctType() %>">
							<br/>	
								<label>Email</label><input type="email" size=40 name="Email" value="<%=cl.getEmail() %>" required><br/>
							
					
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
  		
  		<jsp:include page="Records.jsp"></jsp:include>
</body>
<script>

$('#EditModal').modal('show');

</script>
</html>