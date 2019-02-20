<!DOCTYPE html>
<html>
<head>
	<title>EVA: iNSURANCE APPLICATION</title>
	<link rel="stylesheet" href="css/Billing.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.jsp">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	<div id="all">
		<h2>SEARCH FOR INSURANCE</h2>
		<div id="Search">
			<form>
				 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input  id="myInput" type="text" placeholder="Search.." size=35>
				   <button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Resident</button>
			</form>
			<form action="AppP.jsp">
					<div class="modal fade" id="Insmodal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<h3 class="modal-title">Application of Insurance</h3>
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							
       						</div>
					        <div class="modal-body">
								<label>Insurance:</label><input type="hidden" name="Insurance" id="I_ID">
									 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT insurance_id,Name FROM insurance ORDER BY Name ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelected(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %><br/>
								<label>Plan:</label><input type="text" name="Plan"><br/>
								<label>Effective Date:</label><input type="date" name="From"><br/>
								<input type="date" name="To"><br/>
								<label>Coverage:</label><input type="text" name="Coverage"><br/>
								
								<label>Subscriber:</label><input type="hidden" name="SubscriberNo" id="S_ID">
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Subscriber_Id,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM eva.subscriber_record ORDER BY LastName ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelected(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %><br/>
										    
								<label>Relationship:</label>
									<select name="Relationship">
										<option></option>
										<option value="SPOUSE">SPOUSE</option>
										<option value="CHILD">CHILD</option>
										<option value="OTHER">OTHER</option>
										<option value="RELATIVE">RELATIVE</option>
										<option value="SIBLINGS">SIBLINGS</option>
									</select><br/>
								<label>Group#:</label><input type="number" name="GroupNo"><br/>
								<label>Co pay:</label><input type="text" name="Copay"><br/>
								<label>Deductible:</label><input type="text" name="Deductible"><br/>
								<label>Co-Insurance:</label><input type="text" name="CoInsurance"><br/>
							<h4>Claim Send To Address</h4>
								<label>Address</label><input type="text" size=60 name="Address"><br/>
								<label>City:</label><input type="text" name="City"><br/>
								<label>State:</label><input type="text" name="State"><br/>
								<label>Zip:</label><input type="text" name="Zip"><br/>
								<label>Phone</label><input type="text" name=""><br/>
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
		<%@page import="conn.DbCon,dao.P_InsuranceDAO,dbtb.dbtbp_insurance,java.util.*, java.sql.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<% 
				List<dbtbp_insurance> list= P_InsuranceDAO.getAllRecords();
				request.setAttribute("list", list);
				
			%>
			<table class="table table-bordered table-striped">
				<tr>
					<th></th>
					<th>Insurance</th>
					<th>Subscriber</th>
					<th>From</th>
					<th>To</th>
					<th>Coverage</th>
					<th>Deductible</th>
					<th>Address</th>
				</tr>
			
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a>edit</a></td>
					<td>${i.getInsurance()}</td>
					<td>${i.getSubscriberNo()}</td>
					<td>${i.getFrom()}</td>
					<td>${i.getTo()}</td>
					<td>${i.getCoverage()}</td>
					<td>${i.getDeductible()}</td>
					<td>${i.getAddress()} ${i.getCity()}, ${i.getState()},${i.getCountry()}</td>
				</tr>
			</c:forEach>
				</table>
		</div>
	</div>
	<div id="buttons">
		<button onclick="location.href='FeeSchedule.jsp'">Fee Schedule</button>
		<button onclick="location.href='MedicineBillInfo.jsp'">Medicine Bill</button>
		<button onclick="location.href='FoodBillInfo.jsp'">Food Bill</button>
		<button onclick="location.href='BillReport.jsp'">Billing Report</button>
		<button onclick="location.href='PatientBill.jsp'">Patient bill</button>
		<button onclick="location.href='BenefitsAppInfo.jsp'">Application of Benefits</button>
		<button onclick="location.href='MembershipInfo.jsp'">Application of Membership</button>
		<button onclick="location.href='Billing.jsp'">Return Home</button>
	</div>
</body>
</html>