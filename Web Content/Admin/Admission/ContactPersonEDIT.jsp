<%@page import="conn.DbCon,dao.Contact_personDAO,dbtb.dbtbContact_person,java.util.*"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/jsp; charset=ISO-8859-1">
<title>EVA:CONTACT PERSON</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	
		<% 
			int id=Integer.parseInt(request.getParameter("ContactID"));
			dbtbContact_person c=Contact_personDAO.getRecord(id);
			
		%>

		<form id="regForm" action="ContactPer.jsp">
		<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Personal Info</h3>
       						</div>
					        <div class="modal-body"> 
							<h2>IN CASE OF EMERGENCY</h2>
					<br/>
						<input type="hidden" name="ContactID" value="<%=id %>">
						<label>Contact Person</label><input type="text" size=40 value="<%=c.getContactPerson()%>" name="ContactPerson" placeholder= "Enter Contact Person" data-error= "Limit to only 30 characters">
						<label>Relationship</label><input type="text" name="Relationship" value="<%=c.getRelationship()%>" placeholder= "Enter Relationship" data-error= "Limit to only 30 characters">
						<label>Age</label><input type="text" name="Age" value="<%=c.getAge()%>" placeholder= "Enter Age" data-error= "Limit to only 20 characters"><br/>
						<label>Primary Address</label><input type="text" size=75 name="PrimaryAddress" value="<%=c.getPrimaryAddress()%>" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters">
						<label>City/Province</label><input type="text"  name="PCity" value="<%=c.getPCity()%>" placeholder= "Enter City/Province" data-error= "Limit to only 30 characters">
					<br/>
						<label>Secondary Address</label><input type="text" size=75 name="SecondaryAddress" value="<%=c.getSecondaryAddress()%>" placeholder= "(HouseNo/Street/Barangay/Subdivision)" data-error= "Limit to only 60 characters">
						<label>City/Province</label><input type="text"  name="SCity" value="<%=c.getSCity()%>" placeholder= "Enter City/Province" data-error= "Limit to only 30 characters">
					<br/>
						<label>Mobile No.</label><input type="tel" name="Mobile" value="<%=c.getMobile()%>"  placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
						<label>Telephone No.</label><input type="tel" name="Phone" value="<%=c.getPhone()%>" placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
						<label>Other Contact No.</label><input type="text" name="ContactNo" value="<%=c.getContactNo()%>" placeholder= "Enter Other Contact No." data-error= "Limit to only 20 characters">
					<br/>
						<label>Work</label><input type="text" name="Work" value="<%=c.getWork()%>" placeholder= "Enter Work" data-error= "Limit to only 30 characters">
						<label>Work Phone</label><input type="tel" name="WorkPhone" value="<%=c.getWorkPhone()%>" placeholder= "Enter (0-9) digits only " data-error= "Enter (0-9) digits only ">
						<label>Work Address</label><input type="text" size=40 name="WorkAddress" value="<%=c.getWorkAddress()%>" placeholder= "Enter Work Address" data-error= "Limit to only 30 characters">
					<br/><br/>
						<input type="reset">
						<button type="submit" name="crud" class="btn btn-default" value="Update Record" >Update Record</button>
							<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
					<br/>

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
  		
  		<jsp:include page="Admission.jsp">
</body>
<script>

$('#EditModal').modal('show');

</script>
</html>