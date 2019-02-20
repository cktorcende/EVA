	<%@page import="conn.DbCon,dao.InfoDAO,dbtb.dbtbInfo,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head><title>EVA:General Information</title>
	<link rel="stylesheet" href="css/Allergy.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
		
		<div id="Search">
		<button>Search</button>
		<input type="search" name="AllergyName" size=30>
		<button>Select</button>
		<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
		<form name="General" action="gen.jsp">
	
					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Information</h3>
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
		%>
			<table class="table table-bordered table-striped">
				<tr>
					<th></th>
					<th>Information Type</th>
					<th>Information Name</th>
					<th>Description</th>
					<th>Status</th>
					<th>Severity</th>
					<th>Information Source</th>
					<th>Onset</th>
				</tr>
			<c:forEach items="${list}" var="g">
				
				<tr>
					<td><a href="GenInfoEDIT.jsp?infoID=${g.getinfoID()}">edit</a></td>
					<td>${g.getInformationType()}</td>
					<td>${g.getInformationName()}</td>
					<td>${g.getDescription()}</td>
					<td>${g.getStatus()}</td>
					<td>${g.getSeverity()}</td>
					<td>${g.getInformationSource()}</td>
					<td>${g.getOnset()}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
		
	</div>	
	<div id="buttons">
		
		<button id="his" onclick="location.href='View.html' ">View Record</button>
		<button id="dis" onclick="location.href='Disease.jsp' ">Disease</button>
		<button id="gen" onclick="location.href='GenInfo.jsp' ">General Information</button>
		<button id="cli" onclick="location.href='CliEx.jsp' ">Clinical Examination</button>
		<button id="pes" onclick="location.href='Prescriptions.jsp' ">Prescriptions</button>
		<button id="fam" onclick="location.href='Insurance.jsp' ">Patient Insurance</button>
		<button id="biil" onclick="location.href='AppPay.jsp' ">Application Of Payer</button>
		<button id="opd" onclick="location.href='History.jsp' ">History</button>
		<button id="inv" onclick="location.href='Bedass.html' ">Bed Assignment</button>
		<button id="com" onclick="location.href='Insurance Plans.jsp' ">Add Insurance Plans</button>
		<button id="ref" onclick="location.href='RecordsChef.jsp' ">Chef/Cook Record</button>
		<button id="pri" onclick="location.href='RecordsTel.jsp' ">Teller Record</button>
		<button id="pra" onclick="location.href='RecordsNur.jsp' " >Practioner's Record</button>
		<button id="alle" onclick="location.href='Records.jsp' ">Return Home</button>
		
	</div>
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
		
	</script>

</html>