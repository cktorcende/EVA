<%@page import="conn.DbCon,dao.AppPayDAO,dbtb.dbtbAppPay,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>Application for Payment Methods</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>

	<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>

		<% 
		 	int id=Integer.parseInt(request.getParameter("Payment_ID"));
			dbtbAppPay a=AppPayDAO.getRecord(id);
		%>
		<form action="AppP.jsp">
				<div class="modal fade" id="Modal" role="dialog">
						<div class="modal-dialog">
   					  <div class="modal-content">
   					    <div class="modal-header">
       						<button type="button" class="close" data-dismiss="modal">&times;</button>
       							<h3 class="modal-title">Payment SetUp</h3>
      						</div>
				        <div class="modal-body">
						<%@page import="conn.DbCon,dao.AppPayDAO,dbtb.dbtbAppPay,java.util.*, java.sql.*"%>
				<label>Resident Name:</label>
						<input type="text" name="Payment_ID" value="<%=id %>">
				        <input type="text" name="PatientId" id="P_ID" value="<%=a.getPatientId() %>">
				      
					        <%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE  Patient_ID="+a.getPatientId());					                        	
				    %>
				    	<select id='PatientName' onClick="showSelected(this)">
				    		<% while(rs.next()){ %>
							<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
							<% } con.close();
								}catch(Exception e){out.println("Wrong Entry! " + e);}%>
							<option></option>
					 <%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
				    %>
							<% while(rs.next()){ %>
							<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
							<% } con.close();%>
						</select><br/>
							 <%
						    	}catch(Exception e){out.println("Wrong Entry! " + e);}
	        		 			
						    %>
				<label>Legal Entity</label><input type="text" size=25 name="LegalEntity" value="<%=a.getLegalEntity() %>" required><br/>
				<label id='d'>Entry Date</label><input type="date" name="EntryDate" value="<%=a.getEntryDate() %>" required><br/>
				<label id='d'>Acct. Date</label><input type="date" name="AcctDate" value="<%=a.getAcctDate() %>" required><br/>
				<label id='d'>Payment Date</label><input type="date" name="PaymentDate" value="<%=a.getPaymentDate() %>" required><br/>
				<label>Payment Type:</label>
					<select name="PaymentType">
						<option><%=a.getPaymentType() %></option>
						<option></option>
						<option value="CO-INSURANCE">CO-INSURANCE</option>
						<option value="CLAIM">CLAIM</option>
						<option value="COPAY">COPAY</option>
						<option value="DEDUCTIBLE">DEDUCTIBLE</option>
						<option value="PREPAYMENT">PREPAYMENT</option>
						<option value="REFUND">REFUND</option>
						<option value="SELF PAY">SELF PAY</option>
						<option value="INSURANCE">INSURANCE</option>
					</select><br/>
				<label>Status</label>
					<select name="Status">
						<option>"<%=a.getStatus() %>"</option>
						<option></option>
						<option value="NEW">NEW</option>
						<option value="VOID">VOID</option>
						<option value="PARTIALLY APPLIED">PARTIALLY APPLIED</option>
						<option value="FULLY APPLIED">FULLY APPLIED</option>
						<option value="CLOSED">CLOSED</option>
					</select><br/>
				<label>Collected by:</label>
					<select name="CollectedBy">
						<option>"<%=a.getCollectedBy() %>"</option>
						<option></option>
						<option value="FRONT OFFICE">FRONT OFFICE </option>
						<option value="BILLING OFFICE">BILLING OFFICE</option>
						<option value="COLLECTION AGENCY ">COLLECTION AGENCY </option>
					</select><br/>
				<label>Payer Entity:</label>
					<select name="PayerEntity">
						<option>"<%=a.getPayerEntity() %>"</option>
						<option></option>
						<option value="PATIENT">PATIENT </option>
						<option value="GUARANTOR">GUARANTOR</option>
						<option value="INSURANCE">INSURANCE </option>
					</select><br/>
				<label>Payer Name:</label><input type="text" name="PayerName" value="<%=a.getPayerName() %>"/><br/>
				<label>Payer Code:</label><input type="text" name="PayerCode" value="<%=a.getPayerCode() %>"/><br/>
				<label>Total Amount:</label><input type="number" name="TotalAmount" value="<%=a.getTotalAmount() %>"/><br/>
				<label>Amount Applied:</label><input type="number" name="AmountApplied" value="<%=a.getAmountApplied() %>"/><br/>
				<label>Amount Unapplied:</label><input type="text" name="AmountUnapplied" value="<%=a.getAmountApplied() %>"/><br/>
				<label>Transfer Amount:</label><input type="number" name="TransferAmount" value="<%=a.getTransferAmount() %>"/><br/>
				<label>Reference Number:</label><input type="number" name="ReferenceNumber" value="<%=a.getReferenceNumber() %>"/><br/>
				<label>PSTS No:</label><input type="number" name="PSTSNo" value="<%=a.getPSTSNo() %>"/><br/>

			<h2>Payment Method</h2>
				<select name="PaymentM">
							<option><%=a.getPaymentM() %></option>
							<option></option>
							<option >Cash </option>
							<option >Check</option>
							<option >Credit </option>
							<option >EFT </option>
							<option >Gift Certificate</option>	
					</select><br/>
				<label>Amount:</label><input type="number"name="Amount" value="<%=a.getAmount() %>"><br/>
				
				<div class="modal-footer">
   							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
   							<input type='reset' class="btn btn-default">
							<button type="submit" name="crud" class="btn btn-default" value="Update Record">Update Record</button>
							<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
       					</div>
    					</div>
  					</div>
 				</div>	
 				</div>			
		</form>
</body>
	<script>
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	
	$('#Modal').modal('show');
	</script>
</html>