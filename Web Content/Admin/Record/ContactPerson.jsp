<%@page import="conn.DbCon,dao.Contact_personDAO,dbtb.dbtbContact_person,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>EVA:Contact Person</title>
<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
		 <link rel='stylesheet' href='css/Records.css'>
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
</head>
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
					<h2>SEARCH FOR RESIDENT</h2>
					<form>
						 
						  <a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
						   		<input id="myInput" type="text" placeholder="Search.." size=60> 
						   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
						<br/>
					</form>
				<form id="regForm" action="ContactPer.jsp">
					<div class="modal fade" id="myModal" role="dialog">
		 						<div class="modal-dialog">
		    					  <div class="modal-content">
		    					    <div class="modal-header">
		    					    	<h3 class="modal-title">IN CASE OF EMERGENCY</h3>
		        						<button type="button" class="close" data-dismiss="modal">&times;</button>
		        							
		       						</div>
							        <div class="modal-body"> 
									 <input type="text" id='P_ID' name="PTContactID"/>
							        		
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
													 <%
												    	}catch(Exception e){out.println("Wrong Entry! " + e);}
							        		 			
												    %>
							<br/>
								<label>Contact Person</label><input type="text" size=50 name="ContactPerson">
							<br/>
								<label>Relationship</label><input type="text" name="Relationship"size=50>
							<br/>
								<label>Age</label><input type="text" name="Age" size=50>
							<br/>
								<label>Primary Address</label><input type="text"  name="size=50 PrimaryAddress">
							<br/>
								<label>City/Province</label><input type="text" size=50 name="PCity">
							<br/>
								<label>Secondary Address</label><input type="text" size=50 name="SecondaryAddress">
							<br/>
								<label>City/Province</label><input type="text" size=50 name="SCity">
							<br/>
								<label>Mobile No.</label><input type="tel" size=50 name="Mobile">
							<br/>	
								<label>Telephone No.</label><input type="tel" size=50 name="Phone">
							<br/>	
								<label>Other Contact No.</label><input type="text" size=50 name="ContactNo">
							<br/>
								<label>Work</label><input type="text" name="Work" size=50>
							<br/>	
								<label>Work Phone</label><input type="tel" name="WorkPhone" size=50>
							<br/>	
								<label>Work Address</label><input type="text" size=40 name="WorkAddress" size=50>
							<br/><br/>
							
											
							<br/>
		
		
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
				
				
				<% 
					List<dbtbContact_person> list= Contact_personDAO.getAllRecords();
					request.setAttribute("list", list);
				%>
					
					
						
						
				
					<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th></th>
							<th>ContactPerson</th>
							<th>Relationship</th>
							<th>Age</th>
							<th>PrimaryAddress</th>
							<th>PCity</th>
							<th>SecondaryAddress</th>
							<th>SCity</th>
							<th>Mobile</th>
							<th>Phone</th>
							<th>ContactNo</th>
							<th>Work</th>
							<th>WorkPhone</th>
							<th>WorkAddress</th>
							
						</tr>
					</thead>
					<tbody id="myTable">
						<c:forEach items="${list}" var="c">
						<tr>
							<td><a href="ContactPersonEDIT.jsp?ContactID=${c.getContactID()}">Edit</a></td>
							<td>${c.getContactPerson()}</td>
							<td>${c.getRelationship()}</td>
							<td>${c.getAge()}</td>
							<td>${c.getPrimaryAddress()}</td>
							<td>${c.getPCity()}</td>
							<td>${c.getSecondaryAddress()}</td>
							<td>${c.getSCity()}</td>
							<td>${c.getMobile()}</td>
							<td>${c.getPhone()}</td>
							<td>${c.getContactNo()}</td>
							<td>${c.getWork()}</td>
							<td>${c.getWorkPhone()}</td>
							<td>${c.getWorkAddress()}</td>
							
							
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