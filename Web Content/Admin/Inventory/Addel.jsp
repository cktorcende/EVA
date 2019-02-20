<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,dao.supply_recordDAO,dbtb.dbtbsupply_record,java.util.*, java.sql.*, conn.DbCon" %>

<!DOCTYPE html>
<html>
<head><title>EVA:Medicine Inventory</title>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.jsp">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.jsp">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.jsp">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Record\Records.jsp">RECORDS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\We6bContent\Eva\Admin\EVA HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	
	
	<div id="all">
		<div id="Search">
			<form>
				<h2>Search For Drug Record</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
				<button>Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Drug">Create New Resident</button>
			</form>	
		<form action="Adl.jsp">
			<div class="modal fade" id="Drug" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Medicine</h3>
     						</div>
			        		<div class="modal-body"> 
							<label>Drug Description:</label><input type="text" name="DrugDescription" size=50>
						<br/>
							<label>Rec#:</label><input type="number" name="RecNo" value="0" size=40 >
						<br/>
							<label>NDC/Product ID:</label><input type="text" name="ProductID" size=40><br/>
							<label>Control Class:</label><input type="text" name="ControlClass" size=40><br/>
							<label>Drug Type:</label><input type="text" name="DrugType" size=40><br/>
							<label>Generic Drug:</label><input type="text" name="GenericDrug" size=40>
						<br/>
							<label>Medicaid No.:</label><input type="text" name="MedicaidNo" size=40><br/>
							<label>Warning Code:</label><input type="text" name="WarningCode" size=40><br/>
							<label>Generic Available:</label><input type="text" name="GenericAvailable" size=40>
						<br/>
							<label>Medicare No:</label><input type="text" name="MedicareNo" size=40><br/>
							<label>Sig Codes:</label><input type="text" name="SigCodes" size=40><br/>
							<label>Compoound Drug:</label><input type="text" name="CompoundDrug" size=40>
						<br/>
							<label>Product ID Qualifier:</label><input type="text" name="ProductIDQualifier" size=40><br/>
							<label>Sig Codes:</label><input type="text" name="SigCodes1" size=40><br/>
							<label>Drug Color:</label><input type="text" name="DrugColor" size=40>
						<br/>
							<label>Reference Qualifier:</label><input type="text" name="ReferenceQualifier" size=40><br/>
							<label>Sigcodes:</label><input type="text" name="SigCodes2" size=40><br/>
							<label>NY DVS Code:</label><input type="text" name="NYDVSCode" size=40>
						<br/>
							<label>Package Size</label><input type="number" name="PackageSize" size=40><br/>
							<label>Quick Code:</label><input type="text" name="QuickCode" size=40><br/>
							<label>Category of Service:</label><input type="text" name="CategoryofService" size=40>
						<br/>
							<label>Medicaid Package Size:</label><input type="number" name="MedicaidPackageSize" value="0" size=40><br/>
							<label>Manufacturer</label><input type="text" name="Manufacturer" size=40><br/>
							<label>Drug in robot:</label><input type="text" name="DrugInRobot" size=40>
						<br/>
							<label>Unit of Measure:</label><input type="number" name="UnitOfMeasure" size=40 value="0"><br/>
							<label>Maximum Refills:</label><input type="text" name="MaximumRefills" size=40 ><br/>
							<label>340B Drug:</label><input type="text" name="340BDrug" size=40><br/>
							
							
							<label>Drug AWP:</label><input type="text" name="DrugAWP" size=40>
						<br/>
							<label>Refill Expires in:</label><input type="date" name="Expiration"size=40>
							<label>Active drug:</label><input type="text" name="ActiveDrug" size=40>
						<br/>	
							<label>Direct Price:</label><input type="number" name="DirectPrice" size=40>
							<label>Lot Exp. Date</label><input type="date" name="LotExpDate" size=40>
							<label>Lot #:</label><input type="number" name="LotNo" size=40>
						<br/>	
							<label>TXR:</label><input type="text" name="TXR" size=40>
							<label>Fed Mac Price:</label><input type="number" name="FedMacPrice" size=40 value="0">
							<label>TXR Extention:</label><input type="text" name="TXRExtention" size=40>
						<br/>
							<label>Acquisition Cost:</label><input type="number" name="AcquisitionCost" size=40 value="0">
							<label>Specialty Drug:</label><input type="text" name="SpecialtyDrug" size=40>
							<label>Last Price Update:</label><input type="text" name="LastPriceUpdate" size=40>
						<br/>
							<label>Minimum Qty on hand:</label><input type="text" name="MinimumQtyOnHand" size=40 value="0">
							<label>Current Qty on hand:</label><input type="text" name="CurrentQtyOnHand" size=40 value="0">
						<br/><br/>		
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
				
				<% List<dbtbdrug_record> l=drug_recordDAO.getAllRecords();
			  		request.setAttribute("l",l);
				%>
				
				
				<table class="table table-bordered table-striped">
					<tr>
						<th></th>
						<th>DrugDescription</th>
						<th>UnitOfMeasure</th>
						<th>MaximumRefills</th>
						<th>Expiration</th>
						<th>ActiveDrug</th>
						<th>AcquisitionCost</th>
						<th>LastPriceUpdate</th>
						<th>MinimumQtyOnHand</th>
						<th>CurrentQtyOnHand</th>
						<th>GenericDrug</th>
						<th>MedicaidNo</th>
						<th>GenericAvailable</th>
						<th>MedicareNo</th>
						<th>CompoundDrug</th>
						<th>ProductIDQualifier</th>
						<th>DrugColor</th>
						<th>ReferenceQualifier</th>
						<th>PackageSize</th>
						<th>Manufacturer</th>
						
						
					</tr>
				<c:forEach items="${l}" var="c">
				<tr>
					<td><a href="AddelDEDIT.jsp?Drug_ID=${c.getDrug_ID()}">edit</a></td>
					<td>${c.getDrugDescription()}</td>
					<td>${c.getUnitOfMeasure()}</td>
					<td>${c.getMaximumRefills()}</td>
					<td>${c.getExpiration()}</td>
					<td>${c.getActiveDrug()}</td>
					<td>${c.getAcquisitionCost()}</td>
					<td>${c.getLastPriceUpdate()}</td>
					<td>${c.getLastPriceUpdate()}</td>
					<td>${c.getMinimumQtyOnHand()}</td>
					<td>${c.getCurrentQtyOnHand()}</td>
					<td>${c.getGenericDrug()}</td>
					<td>${c.getGenericAvailable()}</td>
					<td>${c.getMedicareNo()}</td>
					<td>${c.getCompoundDrug()}</td>
					<td>${c.getProductIDQualifier()}</td>
					<td>${c.getDrugColor()}</td>
					<td>${c.getReferenceQualifier()}</td>
					<td>${c.getPackageSize()}</td>
					<td>${c.getManufacturer()}</td>
					
				</tr>
				</c:forEach>
			
			</table>
	</div>
		
		
		
	<div id="Search">
		<form>
			<h2>Search For Food Record</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
			<input type="search" name="AllergyName" size=30>
			<button>Search</button>
			<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#food">Create New Resident</button>
		</form>	
		<form action="food.jsp">
			<div class="modal fade" id="food" role="dialog">
						<div class="modal-dialog">
	  					  <div class="modal-content">
	  					    <div class="modal-header">
	      						<button type="button" class="close" data-dismiss="modal">&times;</button>
	      							<h3 class="modal-title">Add Food</h3>
	     						</div>
				        		<div class="modal-body"> 
				
									<label>Food Description</label><input type="text" name="FoodDescription" size=60><br/>
									<label>Case Pack</label><input type="text" name="CasePack" size=60><br/>
									<label>Supplier:</label><input type="text" name="VendorID" id="VName">
								 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT VendorID,VendorName FROM vendor_record ORDER BY VendorName ASC");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedF(this)">
											<option></option>
											<option value="0"></option>
											
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}%>
					        		 			
									<label>Brand</label><input type="text" name="Brand" size=60><br/>
									<label>Case Weight</label><input type="text" name="CaseWeight" size=60><br/>
									<label>Case Sub Break</label><input type="text" name="CaseSubBreak" size=60><br/>
									<label>Barcode</label><input type="text" name="Barcode" size=60><br/>
									<label>Unit of Measure:</label><input type="number" name="UnitOfMeasure" size=60><br/>
									<label>Maximum Refills:</label><input type="text" name="MaximumRefills" size=60><br/>
									<label>Refill Expires in:</label><input type="date" name="Expiration" size=60><br/>
									<label>Active Ingridient:</label><input type="text" name="ActiveIngridient" size=60><br/>
									<br/>	
									<label>Direct Price:</label><input type="text" name="DirectPrice" size=60><br/>
									<label>Lot Exp. Date</label><input type="date" name="LotExpDate" size=60><br/>
									<label>Lot #:</label><input type="number" name="LotNo" size=60><br/>
									<label>Minimum Qty on hand:</label><input type="text" name="MinimumQtyOnHand" value="0"><br/>
									<label>Current Qty on hand:</label><input type="text" name="CurrentQtyOnHand" value="0"><br/>
								
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
		<table class="table table-bordered table-striped">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbsupply_record> ls=supply_recordDAO.getAllRecords();
			  		request.setAttribute("ls",ls);
				%>
		<thead>
			<tr>
				<th></th>
				<th>VendorName</th>
				<th>SupplyDescription</th>
				<th>ActiveIngridient</th>
				<th>CaseWeight</th>
				<th>MaximumRefills</th>
				<th>DirectPrice</th>
				<th>Expiration</th>
				<th>CurrentQTYOnHand</th>
				<th></th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${ls}" var="c">
				<tr>
					<td><a href="AddelSEDIT.jsp?SupplyID=${c.getSupplyID()}">edit</a></td>
					<td>${c.getS_VendorID()}</td>
					<td>${c.getSupplyDescription()}</td>
					<td>${c.getActiveIngridient()}</td>
					<td>${c.getCaseWeight()}</td>
					<td>${c.getMaximumRefills()}</td>
					<td>${c.getDirectPrice()}</td>
					<td>${c.getExpiration()}</td>
					<td>${c.getLotExpDate()}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="Search">
		<form>
			<h2>Search For Food Record</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
			<input type="search" name="AllergyName" size=30>
			<button>Search</button>
			<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#food">Create New Resident</button>
		</form>
		<form action="supp.jsp">
		<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">
	  					  <div class="modal-content">
	  					    <div class="modal-header">
	      						<button type="button" class="close" data-dismiss="modal">&times;</button>
	      							<h3 class="modal-title">Add Allergy</h3>
	     						</div>
				        		<div class="modal-body"> 
				
									<label>Supply Description</label><input type="text" name="SupplyDescription" size=60><br/>
									<label>Case Pack</label><input type="text" name="CasePack" size=60><br/>
									<label>Vendor</label><input type="text" name="Vendor" size=60><br/>
									<label>Brand</label><input type="text" name="Brand" size=60><br/>
									<label>Case Weight</label><input type="text" name="CaseWeight" size=60><br/>
									<label>Case Sub Break</label><input type="text" name="CaseSubBreak" size=60><br/>
									<label>Barcode</label><input type="text" name="Barcode" size=60><br/>
									<label>Unit of Measure:</label><input type="number" name="UnitOfMeasure" size=60><br/>
									<label>Maximum Refills:</label><input type="text" name="MaximumRefills" size=60><br/>
									<label>Refill Expires in:</label><input type="date" name="Expiration" size=60><br/>
									<label>Active Ingridient:</label><input type="text" name="ActiveIngridient" size=60><br/>
									<br/>	
									<label>Direct Price:</label><input type="number" name="DirectPrice" size=60><br/>
									<label>Lot Exp. Date</label><input type="date" name="LotExpDate" size=60><br/>
									<label>Lot #:</label><input type="number" name="LotNo" size=60><br/>
								
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
		<table class="table table-bordered table-striped">
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbfood_record> lf=food_recordDAO.getAllRecords();
			  		request.setAttribute("lf",lf);
				%>
			<tr>
				<th></th>
				<th>VendorName</th>
				<th>FoodDescription</th>
				<th>CasePack</th>
				<th>Brand</th>
				<th>Barcode</th>
				<th>UnitOfMeasure</th>
				<th>ActiveIngridient</th>
				<th>CaseWeight</th>
				<th>MaximumRefills</th>
				<th>DirectPrice</th>
				<th>Expiration</th>
				<th>LotExpDate</th>
				
			</tr>
			<c:forEach items="${lf}" var="c">
				<tr>
					<td><a href="AddelFEDIT.jsp?FoodID=${c.getFoodID()}">edit</a></td>
					<td>${c.getVendorID()}</td>
					<td>${c.getFoodDescription()}</td>
					<td>${c.getCasePack()}</td>
					<td>${c.getBrand()}</td>
					<td>${c.getBarcode()}</td>
					<td>${c.getUnitOfMeasure()}</td>
					<td>${c.getActiveIngridient()}</td>
					<td>${c.getCaseWeight()}</td>
					<td>${c.getMaximumRefills()}</td>
					<td>${c.getDirectPrice()}</td>
					<td>${c.getExpiration()}</td>
					<td>${c.getLotExpDate()}</td>
				</tr>
				</c:forEach>
		</table>
	</div>
	</div>
	<div id="butts">
		<button onclick="location.href='OrderReport.jsp' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.jsp' ">Add Supplier</button>
		<button onclick="location.href='InventoryTrack.jsp'">Inventory Tracker</button>
		<button>Inventory Report</button>
		<button onclick="location.href='Transfer.jsp'">Transfer Medicine to Another Pharmacy</button>
		<button onclick="location.href='Order.jsp' ">Order to Supplier</button>
		<button onclick="location.href='ReturnSup.jsp'">Return Order</button>
		<button>Inventory Percentage Supply</button>
		<button onclick="location.href='Inventory.jsp'">Return Home</button>
	</div>
</body>
<script>
function showSelectedF(thisObj)
{

  document.getElementById('VName').value = thisObj.options[thisObj.selectedIndex].value;

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