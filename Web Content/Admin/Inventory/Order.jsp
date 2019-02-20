<%@page import="dbtb.dbtbOrders,dbtb.dbtbOrderd,dbtb.dbtborderf,java.util.*,java.sql.*,conn.DbCon,dao.OrdersDAO" %>
<!DOCTYPE html>
<html>
<head><title>EVA:Medicine Inventory</title>
	<link rel="stylesheet" href="css/Inventory.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head><script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	</script>
	
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.html">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.html">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Record\Records.html">RECORDS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	
	
	<div id="all">
		<div id="Search">
			<h2>Order Medicine </h2>
			<form>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" id="SB"name="AllergyName" size=60>
				<button class="btn btn-info btn-lg" id="S">Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Drug">Create New Resident</button>
				<br/>
			</form>	
		
				<form id="Drug"action="ordD.jsp">
				<div class="modal fade" id="Drug" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Medicine Order</h3>
     						</div>
			        		<div class="modal-body"> 
			        			
			
								<label>Medicine:</label> <input type="hidden" id='P_ID' name="DrugID" />
					        		
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
						
							<br/>
								<label>Supplier:</label><input type="hidden" name="DO_SupplierID" id="S_ID">
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
								<label>Vendor Item#:</label><input type="text" name="VendorItem">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
							<br/>
								<label>Arrival Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
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
		</div>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbOrderd> ld=OrdersDAO.getAllRecordsD();
			  		request.setAttribute("ld",ld);
				%>
			<table class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>PurchaseDate</th>
					<th width="70%">DrugDescription</th>
					<th width="40%">Supplier</th>
					<th>InvoiceNumber</th>
					<th>QTYPurchased</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="OrderDEDIT.jsp?Drug_OrderID=${c.getDrug_OrderID()}" data-target="#Drug">edit</a></td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getFoodDescription()}</td>
					<td>${c.getF_SupplierID()}</td>
					<td>${c.getInvoiceNumber()}</td>
					<td>${c.getQTYPurchased()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
		<div id="Search">
		<form>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" id="SB"name="AllergyName" size=60>
				<button class="btn btn-info btn-lg" id="S">Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Drug">Create New Resident</button>
				<br/>
			</form>
		<form id="Food"action="ordF.jsp">
		
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
								    		ResultSet rs = stmt.executeQuery("SELECT FoodID,FoodDescription FROM food_record ORDER BY FoodDescription ASC");					                        	
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
								<label>Supplier:</label><input type="hidden" name="DO_SupplierID" id="VName">
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
								<label>Vendor Item#:</label><input type="text" name="VendorItem">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
							<br/>
								<label>Arrival Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
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
		</div>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtborderf> lf=OrdersDAO.getAllRecordsF();
			  		request.setAttribute("lf",lf);
				%>
			<table class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>PurchaseDate</th>
					<th width="70%">DrugDescription</th>
					<th width="40%">Supplier</th>
					<th>InvoiceNumber</th>
					<th>QTYPurchased</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${lf}" var="c">
				<tr>
					<td><a href="OrderFEDIT.jsp?Food_OrderID=${c.getFood_OrderID()}">edit</a></td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getFoodDescription()}</td>
					<td>${c.getF_SupplierID()}</td>
					<td>${c.getInvoiceNumber()}</td>
					<td>${c.getQTYPurchased()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
			
		</div>
		<div id="Search">
		<form>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" id="SB"name="AllergyName" size=60>
				<button class="btn btn-info btn-lg" id="S">Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Drug">Create New Resident</button>
				<br/>
			</form>
		<form id="Supply"action="ordS.jsp">
		
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
								    		ResultSet rs = stmt.executeQuery("SELECT SupplyID,SupplyDescription FROM supply_record ORDER BY SupplyDescription ASC");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedS(this)">
											<option></option>
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
								<label>Vendor Item#:</label><input type="text" name="VendorItem">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
							<br/>
								<label>Arrival Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
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
		</div>
		<div id="resTable">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbOrders> ls=OrdersDAO.getAllRecordsS();
			  		request.setAttribute("ls",ls);
				%>
			<table class="table table-bordered">
			<thead>
				<tr>
					<th></th>
					<th>PurchaseDate</th>
					<th width="70%">SupplySDescription</th>
					<th width="40%">Supplier</th>
					<th>InvoiceNumber</th>
					<th>QTYPurchased</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ls}" var="c">
				<tr>
					<td><a href="OrderSEDIT.jsp?Supply_OrderID=${c.getSupply_OrderID()}">edit</a></td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getSupplyDescription()}</td>
					<td>${c.getF_SupplierID()}</td>
					<td>${c.getInvoiceNumber()}</td>
					<td>${c.getQTYPurchased()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
	</div>
	<div id="butts">
		<button onclick="location.href='Inventory.html'">Return to Main</button>
		<button onclick="location.href='Addel.html' ">Add/Delete Medicine</button>
		<button onclick="location.href='OrderReport.html' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.html' ">Add Supplier</button>
		<button onclick="location.href='InventoryTrack.html'">Inventory Tracker</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Transfer.html'">Transfer Medicine to Another Pharmacy</button>
		<button onclick="location.href='ReturnSup.html'">Return Order</button>
		<button>Inventory Medicine Request</button>
	</div>
</body>
<script>
	
	function showSelectedD(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
	function showSelectD(thisObj)
	{

	  document.getElementById('S_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedF(thisObj)
	{

	  document.getElementById('FoodID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
	function showSelectF(thisObj)
	{

	  document.getElementById('VName').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedS(thisObj)
	{

	  document.getElementById('SupplyID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
	function showSelectS(thisObj)
	{

	  document.getElementById('VSName').value = thisObj.options[thisObj.selectedIndex].value;

	}
			
	</script>
	<script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	</script>
</html>