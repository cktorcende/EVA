<%@page import="conn.DbCon,dbtb.dbtbreturned_order, dao.Returned_orderDAO, java.sql.*" %>
<!DOCTYPE html>
<html>
<head><title>EVA:Medicine Inventory</title>
	<link rel="stylesheet" href="Inventory.css">
	</head>
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
			<h2>Return Order to Supplier</h2>
			<form>
				<h2>Search For Cashier Account</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
				<button>Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#cashier">Create New Resident</button>
			</form>	
			<form action="CasA.jsp">
				<div class="modal fade" id="cashier" role="dialog">
					<div class="modal-dialog">
 					  <div class="modal-content">
 					    <div class="modal-header">
     						<button type="button" class="close" data-dismiss="modal">&times;</button>
     							<h3 class="modal-title">Add Cashier Account</h3>
    						</div>
		        		<div class="modal-body">
							<label>Supplier:</label><input type="hidden" name="SupplierID" id="S_ID">
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
								<label>Return Date:</label><input type="date" name="ReturnedDate" >
							<br/>
								<label>Drug Name/ NDC:</label>
									<input type="hidden" id='P_ID' name="DrugID" />
					        		
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
								<label>Drug Rec #:</label><input type="text" name="DrugRecNO">
							<br/>	
								<label>Vendor Item#:</label><input type="text" name="VendorItemNO" size=40>
								<label>Drug NDC</label><input type="text" name="DrugNDC">
							<br/>	
								<label>QTY Returned:</label><input type="text" name="QTYReturned">
							<br/>
								<label>Return Number</label><input type="text" name="ReturnNumber">
							<br/>	
								<label>Return Credit Amount</label><input type="text" name="CreditAmount">
							<br/>	
								<label>Lot #:</label><input type="text" name="LotNO">
							<br/>	
								<label>Lot Expiration Date:</label><input type="date" name="LotExpirationDate">
							<br/>	
								<label>Remarks:</label><textarea cols="60" name="Remarks"></textarea>
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
	</div>
	<div id="butts">
		<button onclick="location.href='Addel.html' ">Add/Delete Medicine</button>
		<button onclick="location.href='OrderReport.html' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.html' ">Add Supplier</button>
		<button onclick="location.href='InventoryTrack.html'">Inventory Tracker</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Transfer.html'">Transfer Medicine to Another Pharmacy</button>
		<button onclick="location.href='Order.html' ">Order to Supplier</button>
		<button>Inventory Percentage Supply</button>		
		<button onclick="location.href='Inventory.html'">Return Home</button>
	</div>
</body>
</html>	