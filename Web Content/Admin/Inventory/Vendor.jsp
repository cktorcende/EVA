<%@page import="dao.vendor_recordDAO,dbtb.dbtbVendor_record, java.util.*"%>
<!DOCTYPE html>
<html>
<head><title>EVA:Vendor</title>
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
		<button onclick="location.href='InventoryTrack.html'">Inventory Tracker</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Transfer.html'">Transfer Medicine to Another Pharmacy</button>
		<button onclick="location.href='Order.html' ">Order to Supplier</button>
		<button onclick="location.href='ReturnSup.html'">Return Order</button>
		<button>Inventory Percentage Supply</button>
		<button onclick="location.href='Inventory.html'">Return Home</button>
	</div>
	<div id="all">
		<form id="f1"><input type="checkbox" name="ExistingP" value="Existing">Search</form>
		<div id="Search">
			<form>
				<h2>Vendor/Supplier File</h2>
				<label>Vendor:</label><input type="text">
				<label>Contact Name:</label><input type="text">
				<label>City: </label><input type="text"><br/>
				<label>Medicine:</label><input type="text">
			</form>
			<form action="Ven.jsp">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Allergy</h3>
     						</div>
			        		<div class="modal-body"> 
			
								<label>Vendor Name:</label><input type="text"size=40 name="VendorName">
								<label>Record Number:</label><input type="text" name="RecordNumber">
							<br/>
				<label>Contact Name</label><input type="text" size=40 name="ContactName">
			<br/>
				<label>Address Line 1</label><input type="text" size=60 name="AddressLine1">
			<br/>
				<label>Address Line 2</label><input type="text" size=60 name="AddressLine2">
				<label>City</label><input type="text" name="City">
				<label>State</label><input type="text" name="State">
				<label>Zip</label><input type="number" name="Zip">
				<label>Phone</label><input type="text" name="Phone">
				<label>Fax</label><input type="text" name="Fax">
						
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
		<div id="results">
		<form id="f1"><input type="checkbox" name="ExistingP" value="Existing">Display Results</form>
			<table>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbVendor_record> ld=vendor_recordDAO.getAllRecords();
			  		request.setAttribute("ld",ld);
				%>
				<tr>
					<th width="7%">Record Number</th>
					<th>Vendor Name:</th>
					<th width="40%">Address:</th>
					<th width="20%">City:</th>
					<th>Phone</th>
					<th>Contact Name:</th>
				</tr>
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="VendorEDIT.jsp?VendorID=${c.getVendorID()}">edit</a></td>
					<td>${c.getVendorItemNo()}</td>
					<td>${c.getDrugDescription()}</td>
					<td>${c.getSupplier()}</td>
					<td>${c.getInvoiceNumber()}</td>
					<td>${c.getQTYonHand()}</td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getQTYPurchased()}</td>
					<td>${c.getAcqCost()}</td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>

</body>
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