<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,dao.supply_recordDAO,dbtb.dbtbsupply_record,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>EVA:Inventory Tracker</title>
<link rel="stylesheet" href="css/Inventory.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		<div id="resTable">
			<table>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% List<dbtbdrug_record> ld=drug_recordDAO.getMinimumRecords();
				  		request.setAttribute("ld",ld);
					%>
					<tr>
						<th></th>
						<th>Medicaid No</th>
						<th width="40%">Drug Description</th>
						<th width="20%">UnitOfMeasure</th>
						<th>LotExpDate</th>
						<th>CurrentQTYonHand</th>
						<th>MinimumQtyOnHand</th>
						<th>MaximumRefills</th>
						
					</tr>
					<c:forEach items="${ls}" var="c">
					<tr>
						<td><a href="Order.jsp#Drug">order now</a></td>
						<td>${c.getDrugDescription()}</td>
						<td>${c.getUnitOfMeasure()}</td>
						<td>${c.getLotExpDate()}</td>
						<td>${c.getCurrentQTYonHand()}</td>
						<td>${c.getMinimumQtyOnHand()}</td>
						<td>${c.getMaximumRefills()}</td>
						
					</tr>
					</c:forEach>
				</table>
			</div>
			<div id="resTable">
				<table>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
						
						<% List<dbtbfood_record> lf=food_recordDAO.getMinimumRecords();
					  		request.setAttribute("lf",lf);
						%>
					<tr>
						<th></th>
						<th>VendorName</th>
						<th>FoodDescription</th>
						<th>UnitOfMeasure</th>
						<th>MaximumRefills</th>
						<th>DirectPrice</th>
						<th>Expiration</th>
						<th>MinimumQtyOnHand</th>
						<th>CurrentQtyOnHand</th>
						
					</tr>
					<c:forEach items="${lf}" var="c">
						<tr>
							<td><a href="Order.jsp#Food" >order now</a></td>
							<td>${c.getVendorName()}</td>
							<td>${c.getUnitOfMeasure()}</td>
							<td>${c.getMaximumRefills()}</td>
							<td>${c.getDirectPrice()}</td>
							<td>${c.getExpiration()}</td>
							<td>${c.getMinimumQtyOnHand()}</td>
							<td>${c.getCurrentQtyOnHand()}</td>
						</tr>
					</c:forEach>
				</table>
			</div>	
	<div id="resTable">
		<table>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbsupply_record> ls=supply_recordDAO.getAllRecords();
			  		request.setAttribute("ls",ls);
				%>
			<tr>
				<th></th>
				<th>VendorName</th>
				<th>SupplyDescription</th>
				<th>UnitOfMeasure</th>
				<th>MaximumRefills</th>
				<th>DirectPrice</th>
				<th>Expiration</th>
				<th>MinimumQtyOnHand</th>
				<th>CurrentQtyOnHand</th>
				
			</tr>
			<c:forEach items="${ls}" var="c">
				<tr>
					<td><a href="Order.jsp#Supply">order now</a></td>
					<td>${c.getVendorName()}</td>
					<td>${c.getSupplyDescription()}</td>
					<td>${c.getUnitOfMeasure()}</td>
					<td>${c.getMaximumRefills()}</td>
					<td>${c.getDirectPrice()}</td>
					<td>${c.getExpiration()}</td>
					<td>${c.getLotExpDate()}</td>
					<td>${c.getMinimumQtyOnHand()}</td>
					<td>${c.getCurrentQtyOnHand()}</td>
				</tr>
				</c:forEach>
		</table>
	</div>
	
	</div>
	<div id="buttons">
	
		<button onclick="location.href='Addel.html' ">Add/Delete Medicine</button>
		<button onclick="location.href='OrderReport.html' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.html' ">Add Supplier</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Transfer.html'">Transfer Medicine to Another Pharmacy</button>
		<button onclick="location.href='Order.html' ">Order to Supplier</button>
		<button onclick="location.href='ReturnSup.html'">Return Order</button>
		<button>Inventory Percentage Supply</button>
		<button onclick="location.href='Inventory.html'">Return Home</button>
	</div>
</body>
</html>