<%@page import="dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=ISO-8859-1">
<title>EVA:Insurance Plans</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	
				<br/>
			 <%
			 int id=Integer.parseInt(request.getParameter("insurance_id"));
			 dbtbInsurance i=InsuranceDAO.getRecord(id);
		    %>
 						
 			 <form action="InsP.jsp" method="POST"> 
 					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Available Insurance</h3>
       						</div>
					        <div class="modal-body"> 
								<label>Insurance Plan Code</label>
								<input type="text" name="InsurancePlanCode" value="<%=i.getInsurancePlanCode() %>"/><br/>
								<label>Record NO.</label>
								<input type="number" name="RecordNO" value="<%=i.getRecordNO() %>"/><br/>
								<label>Name</label>
								<input type="text" name="Name"size=50 value="<%=i.getName() %>"><br/>
								<label>HelpDesk NO.</label> 
								<input type="tel" name="HelpDeskNO"value="<%=i.getHelpDeskNO() %>"><br/>
								<label>Address line 1</label>
								<input type="text" name="AddressLine1" size=50 value="<%=i.getAddressLine1() %>"><br/>
								<label>Address line 2</label>
								<input type="text" name="AddressLine2" size=50 value="<%=i.getAddressLine2() %>"><br/>
								<label>Plan Bin NO.</label>
								<input type="text" name="PlanBinNO" value="<%=i.getPlanBinNO() %>"><br/>
								<label>City</label>
								<input type="text" name="City" value="<%=i.getCity() %>"><br/>
								<label>Processor Control NO.</label>
								<input type="number" name="ProcessorControlNO" value="<%=i.getProcessorControlNO() %>"><br/>
								<label>State</label>
								<input type="text" name="State" value="<%=i.getState() %>"><br/>
								<label>Zip No.</label>
								<input type="number" name="ZipNo" value="<%=i.getZipNo() %>"><br/>
								<label>Software Vendor ID</label>
								<input type="text" name="SoftwareVendorID" value="<%=i.getSoftwareVendorID() %>"><br/>
								<label>Alternate Phone</label>
								<input type="tel" name="AlternatePhone" value="<%=i.getAlternatePhone() %>"><br/>
								<label>Fax</label>
								<input type="text" name="Fax" value="<%=i.getFax() %>"><br/>
								<label>Remarks</label>
								<input type="text" name="Remarks" value="<%=i.getRemarks() %>"><br/>
								<label>Email</label>
								<input type="email" name="Email" value="<%=i.getEmail() %>"><br/>
								<label>Pharmacy ID Qualifier</label>
								<input type="text" name="PharmacyIdQualifier" value="<%=i.getPharmacyIdQualifier() %>"><br/>
								<label>Pharmacy ID</label>
								<input type="text" name="PharmacyID" value="<%=i.getPharmacyID() %>"><br/>
								<label>Cash Plan</label>
								<input type="text" name="CashPlan" value="<%=i.getCashPlan() %>"><br/>
								<label>Groups</label>
								<input type="text" name="Groups" value="<%=i.getGroups() %>"><br/>
								<label>NCPDP Version</label>
								<input type="text" name="NCPDPVersion" value="<%=i.getNCPDPVersion() %>"><br/>
								<input type="hidden" name="insurance_id" value="<%=id %>">
							
					
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
  		<jsp:include page="Insurance Plans.jsp"></jsp:include>
  		
</body>
<script>

$('#myModal').modal('show');

</script>
</html>