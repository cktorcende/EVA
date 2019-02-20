<%@page import="conn.DbCon,dao.P_InsuranceDAO,dbtb.dbtbp_insurance,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Resident</button>
	
	<% 
		int id=Integer.parseInt(request.getParameter("insurance_id"));
		dbtbp_insurance i=P_InsuranceDAO.getRecord(id);
	
	%>
	
	<form action="AppP.jsp">
			<div class="modal fade" id="Insmodal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Application of Insurance</h3>
     						</div>
			        <div class="modal-body">
						<label>Insurance:</label><input type="text" name="Insurance" value="<%=i.getInsurance() %>"><br/>
						<label>Plan:</label><input type="text" name="Plan" value="<%=i.getPlan() %>"><br/>
						<label>Effective Date:</label><input type="date" name="From" placeholder="From" value="<%=i.getFrom() %>">
						<input type="date" name="To" placeholder="TO" value="<%=i.getTo() %>"><br/>
						<label>Coverage:</label><input type="text" name="Coverage" value="<%=i.getCoverage() %>"><br/>
						<label>Subscriber#:</label><input type="number" name="SubscriberNo" value="<%=i.getSubscriberNo() %>"><br/>
						<label>Relationship:</label>
							<select name="Relationship">
								<option>value="<%=i.getRelationship() %></option>
								<option></option>
								<option value="SPOUSE">SPOUSE</option>
								<option value="CHILD">CHILD</option>
								<option value="OTHER">OTHER</option>
								<option value="RELATIVE">RELATIVE</option>
								<option value="SIBLINGS">SIBLINGS</option>
							</select><br/>
						<label>Group#:</label><input type="number" name="GroupNo" value="<%=i.getGroupNo() %>"><br/>
						<label>Co pay:</label><input type="text" name="Copay" value="<%=i.getCopay() %>"><br/>
						<label>Deductible:</label><input type="text" name="Deductible" value="<%=i.getDeductible() %>"><br/>
						<label>Co-Insurance:</label><input type="text" name="CoInsurance" value="<%=i.getCoInsurance() %>"><br/>
						<h4>Claim Send To Address</h4>
						<label>Address</label><input type="text" size=60 name="Address" value="<%=i.getAddress() %>"><br/>
						<label>City:</label><input type="text" name="City" value="<%=i.getCity() %>"><br/>
						<label>State:</label><input type="text" name="State" value="<%=i.getState() %>"><br/>
						<label>Zip:</label><input type="text" name="Zip" value="<%=i.getZip() %>"><br/>
						<label>Country:</label><br/>
						<select name="Country">
							<option></option>
							<option>Spain</option>
						</select><br/>
						
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
	
	<jsp:include page="Insurance.jsp"></jsp:include>
</body>
</html>