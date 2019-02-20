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
			int id=Integer.parseInt(request.getParameter("Food_OrderID"));
			dbtborderf a=OrdersDAO.getRecordF(id);
		%> 
	<form action="ord.jsp">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Food Order </h3>
     						</div>
			        		<div class="modal-body"> 
			        			
			
								<label>Food:</label> <input type="hidden" id='FoodID' name="FoodID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT FoodID,FoodDescription FROM food_record WHERE FoodID=?");
								    		rs.getInt(a.getFO_SupplierID());
								    %>
								    	<select id='PatientName' onClick="showSelectedF(this)">
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
								    		ResultSet rs = stmt.executeQuery("SELECT FoodID,FoodDescription FROM food_record ORDER BY FoodDescription ASC");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
						
							<br/>
								<label>Supplier:</label><input type="hidden" name="DO_SupplierID" id="VName">
								 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT VendorID,VendorName FROM vendor_record ORDER BY VendorName ASC");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectF(this)">
											<option value="0"></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}%>
					        		 			
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
<script>
function showSelectedF(thisObj)
{

  document.getElementById('FoodID').value = thisObj.options[thisObj.selectedIndex].value;

}
	
function showSelectF(thisObj)
{

  document.getElementById('VName').value = thisObj.options[thisObj.selectedIndex].value;

}
</script>
</html>