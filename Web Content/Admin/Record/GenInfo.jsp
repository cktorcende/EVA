	<%@page import="conn.DbCon,dao.InfoDAO,dbtb.dbtbInfo,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head><title>EVA:General Information</title>
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
			 <a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60> 
		<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
		<form name="General" action="gen.jsp">
	
					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<h3 class="modal-title">Add Information</h3>
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							
       						</div>
					        <div class="modal-body"> 
					        	<input type="text" id='P_ID' name="PGen_infoID"/>
					        		
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
								<label>Information Type</label><input type="text" name="InformationType" placeholder="Who can only know about it? "  size=60><br/>
								<label>Information Name</label><input type="text" name="InformationName" placeholder="What is it about?" size=60><br/>
								<label>Description</label><input type="text" name="Description" placeholder="Add some details" size=60><br/>
								<label>Status</label>
									<select name="Status">
										<option></option>
										<option>Active</option>
										<option>Inactive</option>
									</select><br/>
								<label>Severity</label><br/>
									<select name="Severity">
										<option></option>
										<option>Mild</option>
										<option>Moderate</option>
										<option>Severe</option>
									</select><br/>
								<label>Information Source</label><input type="text" name="InformationSource"  size=60><br/>
								<label>Onset</label><input type="date" name="Onset" placeholder="Please specify the date"><br/>
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
			List<dbtbInfo> list=InfoDAO.getAllRecords();
			request.setAttribute("list",list);
			int count=0;
		%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Patient</th>
					<th>Information Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Severity</th>
					<th>Information Source</th>
					<th>Onset</th>
				</tr>
			</thead>
			<tbody id="myTable">
			<c:forEach items="${list}" var="g">
				
				<tr>
					<td><a href="GenInfoEDIT.jsp?infoID=${g.getinfoID()}">edit</a></td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),gen_info.PGen_infoID FROM eva.client_record INNER JOIN  eva.gen_info ON client_record.Patient_ID=gen_info.PGen_infoID WHERE PGen_infoID="+ list.get(count).getPGen_infoID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}count++;	
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${g.getInformationName()}</td>
					<td>${g.getDescription()}</td>
					<td>${g.getStatus()}</td>
					<td>${g.getSeverity()}</td>
					<td>${g.getInformationSource()}</td>
					<td>${g.getOnset()}</td>
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
	</script>

</html>