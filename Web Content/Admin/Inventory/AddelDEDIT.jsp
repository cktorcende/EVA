<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<title>EVA:ADD SUPPLIES</title>
</head>
<body>
	<% 
		 int id=Integer.parseInt(request.getParameter("Drug_ID"));
		dbtbdrug_record c=drug_recordDAO.getRecord(id);
	%>
	<form action="Adl.jsp">
			<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Medicine</h3>
     						</div>
			        		<div class="modal-body"> 
			        		<input type="hidden" name="Drug_ID" value="<%=id %>">
							<label>Drug Description:</label><input type="text" name="DrugDescription" value="<%=c.getDrugDescription()%>"size=50>
							<label>Rec#:</label><input type="number" name="RecNo" value="<%=c.getRecNo()%>">
						<br/>
							<label>NDC/Product ID:</label><input type="text" name="ProductID" value="<%=c.getProductID()%>">
							<label>Control Class:</label><input type="text" name="ControlClass" value="<%=c.getControlClass()%>">
							<label>Drug Type:</label><input type="text" name="DrugType" value="<%=c.getDrugType()%>">
							<label>Generic Drug:</label><input type="text" name="GenericDrug" value="<%=c.getGenericDrug()%>">
						<br/>
							<label>Medicaid No.:</label><input type="text" name="MedicaidNo" value="<%=c.getMedicaidNo()%>">
							<label>Warning Code:</label><input type="text" name="WarningCode" value="<%=c.getWarningCode()%>">
							<label>Generic Available:</label><input type="text" name="GenericAvailable" value="<%=c.getGenericAvailable()%>">
						<br/>
							<label>Medicare No:</label><input type="text" name="MedicareNo" value="<%=c.getMedicareNo()%>">
							<label>Sig Codes:</label><input type="text" name="SigCodes" value="<%=c.getSigCodes()%>">
							<label>Compoound Drug:</label><input type="text" name="CompoundDrug" value="<%=c.getCompoundDrug()%>">
						<br/>
							<label>Product ID Qualifier:</label><input type="text" name="ProductIDQualifier" value="<%=c.getProductIDQualifier()%>">
							<label></label><input type="text" name="SigCodes1" value="<%=c.getSigCodes1()%>">
							<label>Drug Color:</label><input type="text" name="DrugColor" value="<%=c.getDrugColor()%>">
						<br/>
							<label>Reference Qualifier:</label><input type="text" name="ReferenceQualifier" value="<%=c.getReferenceQualifier()%>">
							<label></label><input type="text" name="SigCodes2" value="<%=c.getSigCodes2()%>">
							<label>NY DVS Code:</label><input type="text" name="NYDVSCode" value="<%=c.getNYDVSCode()%>">
						<br/>
							<label>Package Size</label><input type="number" name="PackageSize" value="<%=c.getPackageSize()%>">
							<label>Quick Code:</label><input type="text" name="QuickCode" value="<%=c.getQuickCode()%>">
							<label>Category of Service:</label><input type="text" name="CategoryofService" value="<%=c.getCategoryofService()%>">
						<br/>
							<label>Medicaid Package Size:</label><input type="number" name="MedicaidPackageSize" value="<%=c.getMedicaidPackageSize()%>">
							<label>Manufacturer</label><input type="text" name="Manufacturer" value="<%=c.getManufacturer()%>">
							<label>Drug in robot:</label><input type="text" name="DrugInRobot" value="<%=c.getDrugInRobot()%>">
						<br/>
							<label>Unit of Measure:</label><input type="number" name="UnitOfMeasure" value="<%=c.getUnitOfMeasure()%>">
							<label>Maximum Refills:</label><input type="text" name="MaximumRefills" value="<%=c.getMaximumRefills()%>">
							<label>340B Drug:</label><input type="text" name="340BDrug" value="<%=c.getDrug340B()%>">
							<label>Drug AWP:</label><input type="text" name="DrugAWP" value="<%=c.getDrugAWP()%>">
						<br/>
							<label>Refill Expires in:</label><input type="date" name="Expiration" value="<%=c.getExpiration()%>">
							<label>Active drug:</label><input type="text" name="ActiveDrug" value="<%=c.getActiveDrug()%>">
						<br/>	
							<label>Direct Price:</label><input type="number" name="DirectPrice" value="<%=c.getDirectPrice()%>">
							<label>Lot Exp. Date</label><input type="date" name="LotExpDate" value="<%=c.getLotExpDate()%>">
							<label>Lot #:</label><input type="number" name="LotNo" value="<%=c.getLotNo()%>">
						<br/>	
							<label>TXR:</label><input type="text" name="TXR" value="<%=c.getTXR()%>">
							<label>Fed Mac Price:</label><input type="number" name="FedMacPrice" value="<%=c.getFedMacPrice()%>">
							<label>TXR Extention:</label><input type="text" name="TXRExtention" value="<%=c.getTXRExtention()%>">
						<br/>
							<label>Acquisition Cost:</label><input type="number" name="AcquisitionCost" value="<%=c.getAcquisitionCost()%>">
							<label>Specialty Drug:</label><input type="text" name="SpecialtyDrug" value="<%=c.getSpecialtyDrug()%>">
							<label>Last Price Update:</label><input type="text" name="LastPriceUpdate" value="<%=c.getLastPriceUpdate()%>">
						<br/>
							<label>Minimum Qty on hand:</label><input type="text" name="MinimumQtyOnHand" value="<%=c.getMinimumQtyOnHand()%>">
							<label>Current Qty on hand:</label><input type="text" name="CurrentQtyOnHand" value="<%=c.getCurrentQtyOnHand()%>">
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
</body>
</html>