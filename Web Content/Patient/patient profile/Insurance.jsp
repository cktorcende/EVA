<%@page import="conn.DbCon,dao.P_InsuranceDAO,dbtb.dbtbp_insurance,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<title>EVA: Patient insurance</title>
	<link rel="stylesheet" href="css/Records.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.html">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
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
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Application of Insurance</h3>
       						</div>
					        <div class="modal-body">
								<label>Insurance:</label><input type="hidden" name="Insurance" id="I_ID">
									 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT insurance_id,Name FROM insurance ORDER BY Name ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedI(this)">
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
								    	<select id='PatientName' onClick="showSelectedS(this)">
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
		<div id="search">
			<form>
					<h2>SEARCH FOR SUBCRIBER</h2>    
				   <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a> 
				   		<input id="GuaInput" type="text" placeholder="Search.." size=60>  
				   <button id="S"type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#Insmodal">Create New Subscriber</button>
			</form>
			<form action="Subscriber.jsp">
					<div class="modal fade" id="SubsModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Subscriber</h3>
       						</div>
					        <div class="modal-body">
							<%@page import="conn.DbCon,dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*, java.sql.*"%>
					<label>Resident Name:</label>
					        <input type="hidden" name="Patient_ID" id="P_ID">
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
							<% } con.close();%>
						</select><br/>
							 <%
						    	}catch(Exception e){out.println("Wrong Entry! " + e);}
	        		 			
						    %>
						<label>Subscriber:</label><br/>
					<label>Last Name:</label><input type="text" name="LastName"size=30><br/>
					<label>First Name:</label><input type="text" name="FirstName"size=30><br/>
					<label>Middle Name:</label><input type="text" name="MiddleName"size=30><br/>
					<label>DOB:</label><input name="DOB"type="date"><br/>
					<label>SSN#:</label><input name="SSNno"type="text"><br/>
					<label>Gender:</label><input name="Gender"type="text"><br/>
				<h4>Claim Send To Address</h4>
					<label>Address:</label><input name="Address" type="text" size=60><br/>
					<label>City:</label><input name="City" type="text"><br/>
					<label>State:</label><input name="State" type="text"><br/>
					<label>Zip:</label><input name="Zip" type="text"><br/>
					<label>Country:</label>
					<select name="Country">
						<option></option>
						<option>Spain</option>
					</select><br/>
					<label>Phone</label><input name="Phone" type="text"><br/>
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
		<%@page import="conn.DbCon,dao.Subcriber_recordDAO,dbtb.dbtbsubscriber_record,java.util.*, java.sql.*"%>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<% 
				List<dbtbsubscriber_record> listS= Subcriber_recordDAO.getAllRecords();
				request.setAttribute("listS", listS);
				
			%>
			<table >
				<tr>
					<th></th>
					<th>Subscriber</th>
					<th>Resident Name</th>
					<th>From</th>
					<th>To</th>
					<th>Coverage</th>
					<th>Deductible</th>
					<th>Address</th>
				</tr>
			
				<c:forEach items="${listS}" var="c">
				<tr>
					<td><a>edit</a></td>
					<td>${i.getLastName()}, ${i.getFirstName()} ${i.getMiddleName()}</td>
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
		<button id="his" onclick="location.href='View.html' ">View Record</button>
		<button id="dis" onclick="location.href='Disease.jsp' ">Disease</button>
		<button id="alle" onclick="location.href='Allergy.jsp' ">Allergy</button>
		<button id="gen" onclick="location.href='GenInfo.jsp' ">General Information</button>
		<button id="cli" onclick="location.href='CliEx.jsp' ">Clinical Examination</button>
		<button id="pes" onclick="location.href='Prescriptions.jsp' ">Prescriptions</button>
		<button id="fam" onclick="location.href='Insurance.jsp' ">Patient Insurance</button>
		<button id="opd" onclick="location.href='History.jsp' ">History</button>
		<button id="inv" onclick="location.href='Bedass.jsp' ">Bed Assignment</button>
		<button id="com" onclick="location.href='AppPay.jsp' ">Application of payer</button>
		<button id="ref" onclick="location.href='RecordsChef.jsp' ">Chef/Cook Record</button>
		<button id="pri" onclick="location.href='RecordTel.jsp' ">Teller Record</button>
		<button id="pra" onclick="location.href='RecordsNur.jsp' " >Practioner's Record</button>
		<button id="biil" onclick="location.href='Records.jsp' ">Return Home</button>
		
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
	
	$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	
	$(document).ready(function(){
		  $("#GuaInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#GuaTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	</script>
	<script>
	
	function showSelectedI(thisObj)
	{

	  document.getElementById('I_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	
	function showSelectedS(thisObj)
	{

	  document.getElementById('S_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	
		
	</script>
</html>