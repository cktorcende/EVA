<!DOCTYPE html>
<html>
<head>	
	<title>Application for Payment Methods</title>
	<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
		 <link rel='stylesheet' href='css/Records.css'>
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
</head>
<body>
	<div id="container" class="cont"></div>
	<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
								<li>
									<a class="gn-icon gn-icon-article" href="Records.jsp">Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='Allergy.jsp'>Allergy</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Disease.jsp'>Disease</a></li>
										<li><a class="gn-icon gn-icon-archive" href='GenInfo.jsp'>General Information</a></li>
										<li><a class="gn-icon gn-icon-archive" href='CliEx.jsp'>Clinical Examination</a></li>
										<li><a class="gn-icon gn-icon-archive" href='History.jsp'>View Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='AppPay.jsp'>Bed Assignment</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Insurance.jsp'>Patient Insurance</a></li>
									</ul>
								</li>
								<li>
									<a class="gn-icon gn-icon-article" href='RecordsNur.jsp'>Practitioner Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='RecordTel.jsp'>Cashier's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='RecordsChef.jsp'>Chef's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Experience.jsp'>Experience</a></li>
										<li><a class="gn-icon gn-icon-archive" href='HistoryP.jsp'>Profile View</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Assigned.jsp'>Patients Assigned</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Reviews.jsp'>Reviews/Comments</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Achievements.jsp'>Achievements</a></li>
										
									</ul>
								</li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="#">OPTIONS</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/User/User.jsp">USER MANAGEMENT</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Admission/Admission.jsp">ADMISSION</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Billing/Bill.jsp">BILLING</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Inventory/Inventory.jsp">INVENTORY</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
			</ul>
	<div id="all">
		<div id="Search">
			<form> 
					 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
					<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
				   
				   <br/>
			</form>
			<form action="AppP.jsp">
					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<h3 class="modal-title">Payment SetUp</h3>
        							<button type="button" class="close" data-dismiss="modal">&times;</button>
       						</div>
					        <div class="modal-body">
							<%@page import="conn.DbCon,dao.AppPayDAO,dbtb.dbtbAppPay,java.util.*, java.sql.*"%>
					<label>Resident Name:</label>
					        <input type="hidden" id='P_ID' name="PatientId"/>
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelected(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
					        		
					<label>Payment Name</label><input type="text" size=25 name="LegalEntity" required><br/>
					<label id='d'>Entry Date</label><input type="date" name="EntryDate" required><br/>
					<label id='d'>Acct. Date</label><input type="date" name="AcctDate" required><br/>
					<label id='d'>Payment Date</label><input type="date" name="PaymentDate" required><br/>
					<label>Payment Type:</label>
						<select name="PaymentType">
							<option></option>
							<option value="CO-INSURANCE">CO-INSURANCE</option>
							<option value="CLAIM">CLAIM</option>
							<option value="COPAY">COPAY</option>
							<option value="DEDUCTIBLE">DEDUCTIBLE</option>
							<option value="PREPAYMENT">PREPAYMENT</option>
							<option value="REFUND">REFUND</option>
							<option value="SELF PAY">SELF PAY</option>
							<option value="INSURANCE">INSURANCE</option>
						</select><br/>
					<label>Status</label>
						<select name="Status">
							<option></option>
							<option value="NEW">NEW</option>
							<option value="VOID">VOID</option>
							<option value="PARTIALLY APPLIED">PARTIALLY APPLIED</option>
							<option value="FULLY APPLIED">FULLY APPLIED</option>
							<option value="CLOSED">CLOSED</option>
						</select><br/>
					<label>Collected by:</label>
						<select name="CollectedBy">
							<option></option>
							<option value="FRONT OFFICE">FRONT OFFICE </option>
							<option value="BILLING OFFICE">BILLING OFFICE</option>
							<option value="COLLECTION AGENCY ">COLLECTION AGENCY </option>
						</select><br/>
					<label>Payer Entity:</label>
						<select name="PayerEntity"> 
							<option></option>
							<option value="PATIENT">PATIENT </option>
							<option value="GUARANTOR">GUARANTOR</option>
							<option value="INSURANCE">INSURANCE </option>
						</select><br/>
					<label>Payer Name:</label><input type="text" name="PayerName"/><br/>
					<label>Payer Code:</label><input type="text" name="PayerCode"/><br/>
					<label>Total Amount:</label><input type="number" name="TotalAmount"/><br/>
					<label>Amount Applied:</label><input type="number" name="AmountApplied"/><br/>
					<label>Amount Unapplied:</label><input type="text" name="AmountUnapplied"/><br/>
					<label>Transfer Amount:</label><input type="number" name="TransferAmount"/><br/>
					<label>Reference Number:</label><input type="number" name="ReferenceNumber"/><br/>
					<label>PSTS No:</label><input type="number" name="PSTSNo"/><br/>

				<h2>Payment Method</h2>
					<select name="PaymentM">
							<option></option>
							<option >Cash </option>
							<option >Check</option>
							<option >Credit </option>
							<option >EFT </option>
							<option >Gift Certificate</option>	
					</select><br/>
					<label>Amount:</label><input type="number"name="Amount">
					
					
					<div class="modal-footer">
    							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    							<input type='reset' class="btn btn-default">
								<button type="submit" name="crud" class="btn btn-default" value="Create New Record">Create New Record</button>
        					</div>
     					</div>
   					</div>
  				</div>	
  				</div>			
			</form>
		</div>
		<div id="resTable">
		<%@page import="conn.DbCon,dao.AppPayDAO,dbtb.dbtbAppPay,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
			<% 
				
				List<dbtbAppPay> list= AppPayDAO.getAllRecords();
				request.setAttribute("list", list);
				
			%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					
					<th></th>
					<th>PaymentDate</th>
					<th>Status</th>
					<th>CollectedBy</th>
					<th width="40%">PayerName</th>
					<th>TotalAmount</th>
					<th>AmountApplied</th>
					<th>AmountUnapplied</th>
					<th>PaymentM</th>
					<th>Amount</th>
					
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="AppPayEDIT.jsp?Payment_ID=${c.getPayment_ID()}">edit </a></td>
					<td>${c.getPaymentDate()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getCollectedBy()}</td>
					<td>${c.getPayerName()}</td>
					<td>${c.getTotalAmount()}</td>
					<td>${c.getAmountApplied()}</td>
					<td>${c.getAmountUnapplied()}</td>
					<td>${c.getPaymentM()}</td>
					<td>${c.getAmount()}</td>
					
					
				</tr>
				</c:forEach>
			</tbody>
				</table>
		</div>
		
	</div>
	</div>
	<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
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
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
</html>