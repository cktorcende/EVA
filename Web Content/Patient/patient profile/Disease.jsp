<!DOCTYPE html>
<html>
<head><title>EVA:Disease</title>
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
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.html">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">CAREGIVING</a></li>
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
					<a href=#><img src="css/IMG/eva.png"></a>
					<input type="search" name="AllergyName" size=60>
					<button>Search</button>
					<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
					<form name="Disease" action="dis.jsp">
					<%@page import="conn.DbCon,dao.DiseaseDAO,dbtb.dbtbp_disease,java.util.*, java.sql.*"%>
					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Disease</h3>
       						</div>
					        <div class="modal-body"> 
					        <label>Resident Name</label><br/>
					        	<input type="hidden" id='P_ID' name="Pat_ID"/>
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
										    
								<label>Disease Type</label><br/><input type="text" name="DiseaseType" placeholder="Is it contagious or not? "  size=60><br/>
								<label>Disease Name</label><br/><input type="text" name="DiseaseName" placeholder="what is the patient's illness?" size=60><br/>
								<label>Precautions Practiced</label><br/><input type="text" name="PrecautionsPracticed" placeholder="What is the patient doing in order to prevent/or do to make it milder" size=60><br/>
								<label>Status</label><br/>
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
								<label>Information Source</label><br/><input type="text" name="InformationSource" placeholder="What is the your name or the name of the physician that discovered the illness?" size=60><br/>
								<label>Onset</label><br/><input type="date" name="Onset" placeholder="When was the disease First noticed?"><br/>
								<label>Comments</label><br/><textarea cols=50 id="C" name="Comments" form="Allergy"placeholder="Add any additional findings"></textarea>
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
		<div id="restable">
		<%@page import="conn.DbCon,dao.DiseaseDAO,dbtb.dbtbp_disease,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
				List<dbtbp_disease> list=DiseaseDAO.getAllRecords();
		  		request.setAttribute("list",list);	
		%>
			<table>
				<tr>
					<th></th>
					<th>Disease Type</th>
					<th>Disease Name</th>
					<th>Precautions Practiced</th>
					<th>Status</th>
					<th>Severity</th>
					<th>Information Source</th>
					<th>Onset</th>
				</tr>
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="DiseaseEDIT.jsp?Disease_ID=${c.getDisease_ID()}">edit</a></td>
					<td>${c.getDiseaseType()}</td>
					<td>${c.getDiseaseName()}</td>
					<td>${c.getPrecautionsPracticed()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getSeverity()}</td>
					<td>${c.getInformationSource()}</td>
					<td>${c.getOnset()}</td>
				</tr>
				</c:forEach>
			</table>
					
		</div>
	</div>
	<div id="buttons">
		
		<button id="his" onclick="location.href='View.html' ">View Record</button>
		<button id="dis" onclick="location.href='Allergy.jsp' ">Allergy</button>
		<button id="gen" onclick="location.href='GenInfo.jsp' ">General Information</button>
		<button id="cli" onclick="location.href='CliEx.jsp' ">Clinical Examination</button>
		<button id="pes" onclick="location.href='History.jsp' ">History</button>
		<button id="fam" onclick="location.href='Insurance.jsp' ">Patient Insurance</button>
		<button id="biil" onclick="location.href='AppPay.jsp' ">Application Of Payer</button>
		<button id="opd" onclick="location.href='ContactPerson.jsp' ">Contact Person</button>
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