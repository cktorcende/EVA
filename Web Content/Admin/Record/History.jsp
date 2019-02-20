
<!DOCTYPE html>
<html>
<head>
	<title>EVA:Admission--History</title>
	<link rel="stylesheet" href="css/Records.css">
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
	 	 <script src="css/html2canvas.js"></script>
		 <script src="css/jspdf.debug.js"></script>
</head>
<body>
	<div id="all">
		<h2>SEARCH FOR RESIDENT TO PRINT RECORDS</h2>
			
				 <a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
				   		 
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
				<br/>
		<div id="resTable">
		<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		
		<% List<dbtbClient_record> list= client_recordDAO.getAllRecords();
				request.setAttribute("list", list);
				
		%>
			
			
				
				
		
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th width="10%">Date_Admitted</th>
					<th width="30%">Name</th>
					<th width="40%">Address</th>
					<th>PatientStatus</th>
					<th>PatientType</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody id="myTable">
				<c:forEach items="${list}" var="c">
				<tr>
					<td><a href="HistoryEDIT.jsp?Patient_ID=${c.getPatient_ID()}" >Edit</a></td>
					<td>${c.getDate_Admitted()}</td>
					<td>${c.getSurname()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
					<td>${c.getAddress()} ${c.getCity()} ${c.getProvince()}, ${c.getCountry()}</td>
					<td>${c.getPatientStatus()}</td>
					<td>${c.getAcctType()}</td>
					<td>${c.getEmail()}</td>
					
				</tr>
				</c:forEach>
			</tbody>
				</table>
		</div>
	
</div>
<div id="buttons">
		
		<button id="his" onclick="location.href='View.html' ">View Record</button>
		<button id="opd" onclick="location.href='Allergy.jsp' ">Allergy</button>
		<button id="dis" onclick="location.href='Disease.jsp' ">Disease</button>
		<button id="gen" onclick="location.href='GenInfo.jsp' ">General Information</button>
		<button id="cli" onclick="location.href='CliEx.jsp' ">Clinical Examination</button>
		<button id="pes" onclick="location.href='Prescriptions.jsp' ">Prescriptions</button>
		<button id="fam" onclick="location.href='Insurance.jsp' ">Patient Insurance</button>
		<button id="biil" onclick="location.href='AppPay.jsp' ">Application Of Payer</button>
		<button id="inv" onclick="location.href='Bedass.html' ">Bed Assignment</button>
		<button id="com" onclick="location.href='Insurance Plans.jsp' ">Add Insurance Plans</button>
		<button id="ref" onclick="location.href='RecordsChef.jsp' ">Chef/Cook Record</button>
		<button id="pri" onclick="location.href='RecordsTel.jsp' ">Teller Record</button>
		<button id="pra" onclick="location.href='RecordsNur.jsp' " >Practioner's Record</button>
		<button id="alle" onclick="location.href='Records.jsp' ">Return Home</button>
		
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
	</script>
	  
</html>