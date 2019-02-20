<%@page import="dbtb.dbtbOrders,dbtb.dbtbOrderd,dbtb.dbtborderf,java.util.*,java.sql.*,conn.DbCon,dao.OrdersDAO" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:Orders</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<script>

$('#EditModal').modal('show');

</script>
<body>
	<%
			int id=Integer.parseInt(request.getParameter("Supply_OrderID"));
			dbtbOrders a=OrdersDAO.getRecordS(id);
		%>
	<form action="ord.jsp">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Supply Order </h3>
     						</div>
			        		<div class="modal-body"> 
			        			
			
								<label>Supply:</label> <input type="hidden" id='SupplyID' name="SupplyID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT SupplyID,SupplyDescription FROM supply_record WHERE SupplyID=?");		
								    		rs.getInt(a.getSupplyID());
								    %>
								    	<select id='PatientName' onClick="showSelectedS(this)">
								    	<% while(rs.next()){ %>
								    		<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											
										<% } %>
										<%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
										    <option></option>
									 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT SupplyID,SupplyDescription FROM supply_record ORDER BY SupplyDescription ASC");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
						
							<br/>
								<label>Supplier:</label><input type="hidden" name="SO_SupplierID" id="VSName">
								 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT VendorID,VendorName FROM vendor_record ORDER BY VendorName ASC");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelected(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
								<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey" value="<%=a.getProductKey() %>">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber" value="<%=a.getInvoiceNumber() %>">
							<br/>
								<label>Arrival Date:</label><input type="text" name="PurchaseDate" value="<%=a.getPurchaseDate() %>">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased" value="<%=a.getQTYPurchased() %>">
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

</body>
</html>