<%@page import="dbtb.dbtbIncoming_drug_record,dao.Incoming_drug_recordDAO,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:Inventory</title>
</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("Drug_ID"));
		dbtbIncoming_drug_record c=Incoming_drug_recordDAO.getRecord(id);
	%>
	<form action="Adl.jsp">
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">
					  <div class="modal-content">
					    <div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal">&times;</button>
    							<h3 class="modal-title">Add Allergy</h3>
   						</div>
	        		<div class="modal-body"> 
						<input type="hidden" name="RecNo">
						<label>Drug Description:</label><input type="text" name="DrugDescription" value="<%=c.getDrugDescription()%>">

					<br/>
						<label>Supplier:</label><input type="text" name="Supplier" value="<%=c.getSupplier()%>">
						<label>Vendor Item#:</label><input type="text" name="VendorItem" value="<%=c.getVendorItem()%>">
					<br/>
						<label>NDC/Product Key:</label><input type="text" name="ProductKey" value="<%=c.getProductKey()%>">
						<label>Invoice Number#:</label><input type="text" name="InvoiceNumber" value="<%=c.getInvoiceNumber()%>">
						<label>Current QTY on hand:</label><input type="text" name="QTYonHand" value="<%=c.getQTYonhand()%>">
					<br/>
						<label>Purchase Date:</label><input type="text" name="PurchaseDate" value="<%=c.getPurchaseDate()%>">
						<label>QTY Purchased:</label><input type="text" name="QTYPurchased" value="<%=c.getQTYPurchased()%>">
						<label>Acq. Cost:</label><input type="text" name="AcqCost" value="<%=c.getAcqCost()%>">
					<br/>
						<label>Remark:</label><textarea cols="50" name="Remark" form="incoming" value="<%=c.getRemark()%>"></textarea>
					
				
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