<%@page import="conn.DbCon,dbtb.dbtbreturned_order, dao.Returned_orderDAO, java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("idemployee_account"));
		dbtbreturned_order c=Returned_orderDAO.getRecord(id);
	%>
	<form action="CasA.jsp">
	<div class="modal fade" id="cashier" role="dialog">
		<div class="modal-dialog">
			  <div class="modal-content">
			    <div class="modal-header">
  						<button type="button" class="close" data-dismiss="modal">&times;</button>
  							<h3 class="modal-title">Add Cashier Account</h3>
 						</div>
			       		<div class="modal-body">
							<label>Supplier:</label><input type="hidden" name="SupplierID" id="S_ID" value="<%=c.getSupplierID() %>">
							 <%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT VendorID,VendorName FROM vendor_record ORDER BY VendorName ASC");					                        	
							    %>
							    	<select id='PatientName' onClick="showSelectD(this)">
										<option></option>
										<% while(rs.next()){ %>
										<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
										<% } %>
									</select><br/>
										 <%con.close();
									    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					       		 			
									    %>
							
							<br/>
								<label>Return Date:</label><input type="date" name="ReturnedDate" value="<%=c.getReturnedDate()%>">
							<br/>
								<label>Drug Name/ NDC:</label><input type="hidden" name="DrugName"size=50 value="<%=c.getDrugID() %>">
								 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Drug_ID,DrugDescription FROM drug_record ORDER BY DrugDescription ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedD(this)">
											<option></option>
											
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
								<label>Drug Rec #:</label><input type="text" name="DrugRecNO" value="<%=c.getDrugRecNO()%>">
							<br/>	
								<label>Vendor Item#:</label><input type="text" name="VendorItemNO" size=40 value="<%=c.getVendorItemNO()%>">
								<label>Drug NDC</label><input type="text" name="DrugNDC" value="<%=c.getDrugNDC()%>">
							<br/>	
								<label>QTY Returned:</label><input type="text" name="QTYReturned" value="<%=c.getQTYReturned()%>">
							<br/>	
								<label>Return Credit Amount</label><input type="text" name="CreditAmount" value="<%=c.getCreditAmount()%>">
							<br/>	
								<label>Lot #:</label><input type="text" name="LotNO" value="<%= c.getLotNO()%>">
							<br/>	
								<label>Lot Expiration Date:</label><input type="date" name="LotExpirationDate" value="<%=c.getLotExpirationDate()%>">
							<br/>	
								<label>Remarks:</label><textarea cols="60" name="Remarks" value="<%=c.getRemarks()%>"></textarea>
							<br/>
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
	<jsp:include page="ReturnSup.jsp">
</body>
</html>