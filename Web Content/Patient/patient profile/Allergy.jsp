<!DOCTYPE html>
<html>
<head><title>EVA:Allergy</title>
	<link rel="stylesheet" href="css/Records.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
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
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	
	<div id="all">
		<div id="Search">
		<h2>SEARCH FOR ALLERGY</h2>
		<form>
			 <a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60> 
			<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
			<br/>
		</form>	
		
		<form action="Aller.jsp" method="POST">
		<%@page import="conn.DbCon,dao.AllergyDAO,dbtb.dbtbp_allergy,java.util.*, java.sql.*"%>
			<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Allergy</h3>
     						</div>
			        <div class="modal-body"> 
			        <label>Patient</label>
			        		 <input type="hidden" id='P_ID' name="P_ID"/>
					        		
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
					        		
									<label>Substance</label><br/><input type="text" placeholder="what is the patient allergic to?"  size=60 name="Substance"><br/>
									<label>Reaction</label><br/><input type="text" placeholder="How did the patient react" size=60 name="Reaction"><br/>
									<label>Category</label><br/><input type="text" placeholder="Allergy/Side effect/ Patient Complaints " size=60 name="Category"><br/>
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
									<label>Information Source</label><br/><input type="text" name="InformationSource" placeholder="Name of Physician" size=60><br/>
									<label>Onset</label><br/><input type="date" name="Onset" placeholder="When was the allergy First noticed?"><br/>
									<label>Comments</label><br/><textarea name="Comments" cols=50 id="C" form="Allergy"placeholder="Add any additional findings"></textarea>
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
				<%@page import="conn.DbCon,dao.AllergyDAO,dbtb.dbtbp_allergy,java.util.*"%>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				<% List<dbtbp_allergy> l=AllergyDAO.getAllRecords();
			  		request.setAttribute("l",l);
				%>
				
				
				<table class="table table-bordered table-striped">
					<tr>
						<th></th>
						<th>Substance</th>
						<th>Reaction</th>
						<th>Category</th>
						<th>Status</th>
						<th>Severity</th>
						<th>InformationSource</th>
						<th>Onset</th>
						<th>Comments</th>
					</tr>
				<c:forEach items="${l}" var="c">
				<tr>
					<td><a href="AllergyEDIT.jsp?Allergy_ID=${c.getAllergy_ID()}">edit</a></td>
					<td>${c.getSubstance()}</td>
					<td>${c.getReaction()}</td>
					<td>${c.getCategory()}</td>
					<td>${c.getStatus()}</td>
					<td>${c.getSeverity()}</td>
					<td>${c.getInformationSource()}</td>
					<td>${c.getOnset()}</td>
					<td>${c.getComments()}</td>
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
		
		
	</script>
	<script>
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