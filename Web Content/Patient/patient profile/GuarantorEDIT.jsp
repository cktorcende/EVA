<%@page import="conn.DbCon,dao.GuarantorDAO,dbtb.dbtbGuarantor_record,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>EVA:Records</title>
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	 <form action="Guarantor.jsp">
	 	<%
			int id=Integer.parseInt(request.getParameter("guarantorID"));
	 		dbtbGuarantor_record cl=GuarantorDAO.getRecord(id);
		%> 
   			<div class="modal fade" id="GuarantorModal" role="dialog">
					<div class="modal-dialog">
					
					  <!-- Modal content-->
					  <div class="modal-content">
						<div class="modal-header">
						  <button type="button" class="close" data-dismiss="modal"></button>
						  <h3 class="modal-title">Guarantor Information</h3>
						</div>
						<div class="modal-body">
							<input type="hidden" name="guarantorID" value="<%=id %>">
									<label>Relationship</label>
									<select name="Relationship">
											<option></option>
											<option>Employee</option>
											<option>Self</option>
											<option>Spouse</option>
											<option>Other</option>
											<option>Child</option>
											<option>Relative</option>
											<option>Siblings</option>
										</select>
										<label>Guarantor</label><input type="text"  name="GuarantorName" value="<%=cl.getGuarantorName() %>"><br/>
										<label>Last</label><input type="text"  name="Last" value="<%=cl.getLast() %>"><br/>
										<label>First</label><input type="text"  name="First" value="<%=cl.getFirst() %>"><br/>
										<label>Middle</label><input type="text"  name="Middle" value="<%=cl.getMiddle() %>"><br/>
										<label>SSN</label><input type="text"  name="SSN" value="<%=cl.getSSN() %>"><br/>
										<label>Gender</label>
										<select name="Gender">
											<option><%=cl.getGender() %></option>
											<option></option>
											<option>Male</option>
											<option>Female</option>
										</select><br/>
										<label>DOB</label><input type="date"  name="DOB" value="<%=cl.getDOB() %>"><br/>
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
										</select><br/>
										<label>Emp. ID</label><input type="number"  name="EmpID" value="0" value="<%=cl.getEmpID() %>"><br/>
										<label>Address</label><input type="text" size=60 name="Address" value="<%=cl.getAddress() %>"><br/>
										<label>City</label><input type="text"  name="City" value="<%=cl.getCity() %>"><br/>
										<label id='d'>State</label><input type="text"  name="State" value="<%=cl.getState() %>"><br/>
										<label id='d'>Zip</label><input type="number"  name="Zip" value="0" value="<%=cl.getZip() %>"><br/>
										<label id='d'>Country</label><input type="text"  name="Country" value="<%=cl.getCountry() %>"><br/>
										<label>Phone</label><input type="tel"  name="Phone" value="<%=cl.getPhone() %>"><br/>
										<label>Ext</label><input type="text"  name="Ext" value="<%=cl.getExt() %>"><br/>
										<label>Cellphone No.</label><input type="text"  name="CellphoneNo" value="<%=cl.getCellphoneNo() %>"><br/>
										<label>Email</label><input type="email"  name="Email" value="<%=cl.getEmail() %>"><br/>
										<label>Fax</label><input type="text"  name="Fax" value="<%=cl.getFax() %>"><br/>
					</div>
					<div class="modal-footer">
					  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="submit" name="crud" value="Update Record">Update Record</button>
							<button type="submit" name="crud" value="Delete Record">Delete Record</button>
					</div>
				  </div>
				  
				</div>
			  </div>
   		</form>	  
	<jsp:include page="Records.jsp"></jsp:include>
</body>
<script>
$('#Modal').modal('show');
</script>
</html>