<%@page import="java.sql.*,conn.DbCon" %>
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
	<div id="buttons">
		<button onclick="location.href='Addel.html' ">Add/Delete Medicine</button>
		<button onclick="location.href='OrderReport.html' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.html' ">Add Supplier</button>
		<button onclick="location.href='InventoryTrack.html'">Inventory Tracker</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Order.html' ">Order to Supplier</button>
		<button onclick="location.href='ReturnSup.html'">Return Order</button>
		<button>Inventory Percentage Supply</button>
		<button onclick="location.href='Inventory.html'">Return Home</button>
	</div>

	<div id="all">;]
	
		<form name="Pharmacy" action="nurH.jsp">
			<label>Nursing Home Name</label><input type="text" name="NursingHomeName"/>
			<label>Primary Contact Name</label><input type="text" name="PrimaryContactName"/>
			<label>Primary Contact Number</label><input type="tel" name="PrimaryContactNumber"/>
			<label>Alternative Phone Number</label><input type="tel" name="AlternativePhoneNumber"/>
			<label>AddressLine 1</label><input type="text" name="AddressLine1"/>
			<label>AddressLine 2</label><input type="text" name="AddressLine2"/>
			<label>City</label><input type="text" name="City"/>
			<label>State</label><input type="text" name="State"/>
			<label>Zip</label><input type="text" name="Zip"/>
			<label>Country</label><input type="text" name="Country"/>
			<label>SSNno</label><input type="text" name="SSNno"/>
			<label>Fax</label><input type="text" name="Fax"/>
		</form>
		<form action="tran.jsp">
			<label>NursingHome</label><input type="text" name="">
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
			<label>Date of Shipping</label><input type="date" name="DateofShipping" >
			<label>Expected Arrival Date</label><input type="date" name="ExpectedArrivalDate">
			<label>QTYTransferred</label><input type="text" name="QTYTransferred">
			<label>ExpirationDate</label><input type="date" name="ExpirationDate">
			<label>ProductKey</label><input type="text" name="ProductKey">
			<label>PackageSize</label><input type="text" name="PackageSize">
			<label>UnitOfMeasure</label><input type="text" name="UnitOfMeasure">
		</form>
	</div>
</body>
</html>