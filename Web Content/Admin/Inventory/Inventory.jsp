<%@page import="dbtb.dbtbIncoming_drug_record,dao.Incoming_supply_recordDAO,dbtb.dbtbincoming_supply_record,dao.Incoming_drug_recordDAO,dbtb.dbtbincoming_food_record,dao.Incoming_food_recordDAO,java.util.*" %>

<!DOCTYPE html>
<html>
<head><title>EVA:Medicine Inventory</title>
	<link rel="stylesheet" href="css/Inventory.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/Chart.js"></script>
	
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
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Record/Records.jsp">RECORDS</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	
	<div id="all">
		<h2>Commonly Consumed Medicines</h2>
		<canvas id="horizontalBar"></canvas>
			<input type="hidden" id="Bar1" value="Propotane">
			<input type="hidden" id="Bar2" value="Selophane">
			<input type="hidden" id="Bar3" value="Acetonane">
			<input type="hidden" id="Bar4" value="Propolitane">
			<input type="hidden" id="Bar5" value="Lhomonane">
			<input type="hidden" id="Data1" value="310">
			<input type="hidden" id="Data2" value="259">
			<input type="hidden" id="Data3" value="276">
			<input type="hidden" id="Data4" value="169">
			<input type="hidden" id="Data5" value="150">
		<div id="Search">
			<form>
				<h2>Input Incoming Medicine </h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input  id="myInput" type="text" placeholder="Search.." size=35>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Drug">Input New Medicine</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Food">Input New Food</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Supply">Input New Supply</button>
			
			</form>
			<form action="Inv.jsp">
				<div class="modal fade" id="Drug" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Incoming Medicine</h3>
     						</div>
			        		<div class="modal-body"> 
			
								<label>Drug Description:</label><input type="text" name="DrugDescription">
								<label>Rec#:</label><input type="text" name="RecNo">
							<br/>
								<label>Supplier:</label><input type="text" name="Supplier">
								<label>Vendor Item#:</label><input type="text" name="VendorItemNo">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
								<label>Current QTY on hand:</label><input type="text" name="QTYonHand">
							<br/>
								<label>Purchase Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
								<label>Acq. Cost:</label><input type="text" name="AcqCost">
							<br/>
								<label>Remark:</label><textarea cols="50" name="Remark" form="incoming"></textarea>
							
						
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
  			<form action="Inv.jsp">
				<div class="modal fade" id="Supply" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Incoming Supply</h3>
     						</div>
			        		<div class="modal-body"> 
			
								<label>SupplyDescription:</label><input type="text" name="SupplyDescription">
								
							<br/>
								<label>Supplier:</label><input type="text" name="F_SupplierID">
								<label>Vendor Item#:</label><input type="text" name="VendorItemNo">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
								<label>Current QTY on hand:</label><input type="text" name="QTYonHand">
							<br/>
								<label>Purchase Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
								<label>Acq. Cost:</label><input type="text" name="AcqCost">
							<br/>
								<label>Remark:</label><textarea cols="50" name="Remark" form="incoming"></textarea>
							
						
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
  			<form action="Inv.jsp">
				<div class="modal fade" id="Food" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Incoming Food</h3>
     						</div>
			        		<div class="modal-body"> 
			
								<label>Drug Description:</label><input type="text" name="DrugDescription">
								<label>Rec#:</label><input type="text" name="RecNo">
							<br/>
								<label>Supplier:</label><input type="text" name="Supplier">
								<label>Vendor Item#:</label><input type="text" name="VendorItemNo">
							<br/>
								<label>NDC/Product Key:</label><input type="text" name="ProductKey">
								<label>Invoice Number#:</label><input type="text" name="InvoiceNumber">
								<label>Current QTY on hand:</label><input type="text" name="QTYonHand">
							<br/>
								<label>Purchase Date:</label><input type="text" name="PurchaseDate">
								<label>QTY Purchased:</label><input type="text" name="QTYPurchased">
								<label>Acq. Cost:</label><input type="text" name="AcqCost">
							<br/>
								<label>Remark:</label><textarea cols="50" name="Remark" form="incoming"></textarea>
							
						
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
		<table class="table table-bordered ">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbIncoming_drug_record> ld=Incoming_drug_recordDAO.getAllRecords();
			  		request.setAttribute("ld",ld);
				%>
			<thead>
				<tr>
					<th></th>
					<th width="10%">ItemNo</th>
					<th width="30%">DrugDescription</th>
					<th width="20%">Supplier</th>
					<th width="20%">CurrentQTYonHand</th>
					<th width="20%">PurchaseDate</th>
					<th width="20%">QTYPurchased</th>
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="InventoryDEDIT.jsp?RecNo=${c.getRecNo()}">edit</a></td>
					<td>${c.getVendorItemNo()}</td>
					<td>${c.getDrugDescription()}</td>
					<td>${c.getSupplier()}</td>
					<td>${c.getQTYonHand()}</td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getQTYPurchased()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
			</table>
			
			
		</div>
		
			<p></p>
			
	
		<div id="resTable">
		<table class="table table-bordered ">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbincoming_supply_record> ls=Incoming_supply_recordDAO.getAllRecords();
			  		request.setAttribute("ls",ls);
				%>
			<thead>
				<tr>
					<th></th>
					<th>ItemNo</th>
					<th width="40%">SupplyDescription</th>
					<th width="20%">Supplier</th>
					<th>CurrentQTYonHand</th>
					<th>PurchaseDate</th>
					<th>QTYPurchased</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${ls}" var="c">
				<tr>
					<td><a href="InventorySEDIT.jsp?SupplyID=${c.getSupplyID()}">edit</a></td>
					<td>${c.getVendorItemNo()}</td>
					<td>${c.getSupplyDescription()}</td>
					<td>${c.getS_SupplierID()}</td>
					<td>${c.getQTYonHand()}</td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getQTYPurchased()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
		</div>
			<p></p>
		<div id="resTable">
		<table class="table table-bordered ">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbincoming_food_record> lf=Incoming_food_recordDAO.getAllRecords();
			  		request.setAttribute("lf",lf);
				%>
			<thead>
				<tr>
					<th></th>
					<th>VendorItemNo</th>
					<th width="40%">DrugDescription</th>
					<th width="20%">Supplier</th>
					<th>CurrentQTYonHand</th>
					<th>PurchaseDate</th>
					<th>QTYPurchased</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${lf}" var="c">
				<tr>
					<td><a href="InventoryFEDIT.jsp?FoodID=${c.getFoodID()}">edit</a></td>
					<td>${c.getVendorItemNo()}</td>
					<td>${c.getFoodDescription()}</td>
					<td>${c.getF_SupplierID()}</td>
					<td>${c.getQTYonHand()}</td>
					<td>${c.getPurchaseDate()}</td>
					<td>${c.getQTYPurchased()}</td>
				</tr>
				</c:forEach>
			</tbody>
			</table>
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
		<button onclick="location.href='ReturnSup.html'">Return Order</button>
		<button>Inventory Medicine Request</button>
	</div>
</body>
	<script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
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
	<script>
	var b1= document.getElementById("Bar1").value;
	var b2=document.getElementById("Bar2").value;
	var b3= document.getElementById("Bar3").value;
	var b4=document.getElementById("Bar4").value;
	var b5 = document.getElementById("Bar5").value;
	new Chart(document.getElementById("horizontalBar"), {
	    "type": "horizontalBar",
	    "data": {
	      "labels": [b1, b2, b3, b4,b5 ],
	      "datasets": [{
	        "label": "Top 5 Commonly Consumed Medicines",
	        "data": [ document.getElementById("Data1").value, document.getElementById("Data2").value, document.getElementById("Data3").value, document.getElementById("Data4").value, document.getElementById("Data5").value],
	        "fill": false,
	        "backgroundColor": ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
	          "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)",
	          "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)"
	        ],
	        "borderColor": ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
	          "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(201, 203, 207)"
	        ],
	        "borderWidth": 1
	      }]
	    },
	    "options": {
	      "scales": {
	        "xAxes": [{
	          "ticks": {
	            "beginAtZero": true
	          }
	        }]
	      }
	    }
	  });

</script>
</html>