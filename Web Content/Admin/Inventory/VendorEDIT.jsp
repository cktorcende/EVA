<%@page import="dao.vendor_recordDAO,dbtb.dbtbVendor_record, java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		 	int id=Integer.parseInt(request.getParameter("VendorID"));
			dbtbVendor_record c=vendor_recordDAO.getRecord(id);
			
		%>
	
	<form action="Ven.jsp">
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Allergy</h3>
     						</div>
			        		<div class="modal-body"> 
								<input type="hidden" name="VendorID" value="<%=id %>">
								<label>Vendor Name:</label><input type="text"size=40 name="VendorName" value="<%=c.getVendorName()%>">
								<label>Record Number:</label><input type="text" name="RecordNumber" value="<%=c.getRecordNumber()%>">
							<br/>
				<label>Contact Name</label><input type="text" size=40 name="ContactName" value="<%=c.getContactName()%>">
			<br/>
				<label>Address Line 1</label><input type="text" size=60 name="AddressLine1" value="<%=c.getAddressLine1()%>">
			<br/>
				<label>Address Line 2</label><input type="text" size=60 name="AddressLine2" value="<%=c.getAddressLine2()%>">
				<label>City</label><input type="text" name="City" value="<%=c.getCity()%>">
				<label>State</label><input type="text" name="State" value="<%=c.getState()%>">
				<label>Zip</label><input type="number" name="Zip" value="<%=c.getZip()%>">
				<label>Phone</label><input type="text" name="Phone" value="<%=c.getPhone()%>">
				<label>Fax</label><input type="text" name="Fax" value="<%=c.getFax()%>">
						
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
  		<jsp:include page="Vendor.jsp"></jsp:include>
</body>
</html>