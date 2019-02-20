<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbsupply_record,dao.drug_recordDAO,dao.supply_recordDAO,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		int id=Integer.parseInt(request.getParameter("SupplyID"));
	dbtbsupply_record c=supply_recordDAO.getRecord(id);
	%>
	<form action="supp.jsp">
		<div class="modal fade" id="myModal" role="dialog">
						<div class="modal-dialog">
	  					  <div class="modal-content">
	  					    <div class="modal-header">
	      						<button type="button" class="close" data-dismiss="modal">&times;</button>
	      							<h3 class="modal-title">Add Allergy</h3>
	     						</div>
				        		<div class="modal-body"> 
									<input type="hidden" name="SupplyID" value="<%=id%>">
									<input type="hidden" name="FoodID" value="<%=c.getS_VendorID()%>">
									<label>Supply Description</label><input type="text" name="SupplyDescription" value="<%=c.getSupplyDescription()%>"><br/>
									<label>Case Pack</label><input type="text" name="CasePack" value="<%=c.getCasePack()%>"><br/>
									<label>Vendor</label><br/>
									<label>Brand</label><input type="text" name="Brand" value="<%=c.getBrand()%>"><br/>
									<label>Case Weight</label><input type="text" name="CaseWeight" value="<%=c.getCaseWeight()%>"><br/>
									<label>Case Sub Break</label><input type="text" name="CaseSubBreak" value="<%=c.getCaseSubBreak()%>"><br/>
									<label>Barcode</label><input type="text" name="Barcode" value="<%=c.getBarcode()%>"><br/>
									<label>Unit of Measure:</label><input type="number" name="UnitOfMeasure" value="<%=c.getUnitOfMeasure()%>"><br/>
									<label>Maximum Refills:</label><input type="text" name="MaximumRefills" value="<%=c.getMaximumRefills()%>"><br/>
									<label>Refill Expires in:</label><input type="date" name="Expiration" value="<%=c.getExpiration()%>"><br/>
									<label>Active Ingridient:</label><input type="text" name="ActiveIngridient" value="<%=c.getActiveIngridient()%>"><br/>
									<br/>	
									<label>Direct Price:</label><input type="number" name="DirectPrice" value="<%=c.getDirectPrice()%>"><br/>
									<label>Lot Exp. Date</label><input type="date" name="LotExpDate" value="<%=c.getLotExpDate()%>"><br/>
								
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