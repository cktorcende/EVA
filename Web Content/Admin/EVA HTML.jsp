<!DOCTYPE html>
<html lang= "en">
<head><meta charset= "utf-8">
	<title>EVA:HOME</title>
	<link rel='stylesheet' href='EVA CSS.css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src= "JS EVA.js"></script>
</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="User/User.html">USER MANAGEMENT</a></li>
						<li><a href="Admission/Admission.jsp">ADMISSION</a></li>
						<li><a href="Billing/Billing.html">BILLING</a></li>
						<li><a href="Inventory/Inventory.jsp">INVENTORY</a></li>
						<li><a href="Record/Records.jsp">RECORDS</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	
		
	<div class= "cnt">
		
				<h2>RESIDENT RECORD</h2>
				<form id="SearchForm">
						<input type="text"/>
						<button class="btn btn-info btn-lg">Search</button>
					
					</form>
				<div id="resTable">
				<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				
				
				<% List<dbtbClient_record> list= client_recordDAO.getAllRecords();
						request.setAttribute("list", list);
						
				%>
					<table cellpadding=5>
						<tr>
							<th></th>
							<th>Date_Admitted</th>
							<th>Gender</th>
							<th width="30%">Resident Name</th>
							<th width="15%">BirthDate</th>
							<th width="60%">Address</th>
							<th>PatientStatus</th>
							<th>NickName</th>
							<th>Language</th>
							<th width="25%">Illness</th>
							<th>PatientType</th>
							<th width="25%">Nurse</th>
							<th width="25%">CareGiver</th>
							<th width="25%">Doctor</th>
							
						</tr>
						<c:forEach items="${list}" var="c">
						<tr>
							<td><a href="RecordEDIT.jsp?Patient_ID=${c.getPatient_ID()}">Edit</a></td>
							<td>${c.getDate_Admitted()}</td>
							<td>${c.getSex()}</td>
							<td>${c.getSurname()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
							<td>${c.getBirthDate()}</td>
							<td>${c.getAddress()} ${c.getCity()} ${c.getProvince()} ${c.getCountry()}</td>
							<td>${c.getPatientStatus()}</td>
							<td>${c.getRemarks()}</td>
							<td>${c.getLanguage()}</td>
							<td>${c.getMarital()}</td>
							<td>${c.getAcctType()}</td>
							<td>${c.getLanguage()}</td>
							<td>${c.getMarital()}</td>
							<td>${c.getAcctType()}</td>
							<td></td>
						</tr>
						</c:forEach>
						</table>
				</div>
				<div id="Table">
					<%@page import="conn.DbCon,dao.NurseDAO,dbtb.dbtbNurse_record, java.util.*"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbNurse_record> lis= NurseDAO.getAllRecords();
						request.setAttribute("lis", lis);
					%>
					
						<table cellpadding=5>
							<tr>
								<th></th>
								<th>Nurse's Name</th>
								<th>Age</th>
								<th>Phone</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Designation</th>
								<th>Specialization</th>
								<th>Hospital Affiliation</th>
								
							</tr>
							<c:forEach items="${lis}" var="c">
								<tr>
									<td><a href="RecordsNurEDIT.jsp?Nurse_ID=${c.getNurse_ID()}">edit</a></td>
									<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
									<td>${c.getAge()}</td>
									<td>${c.getPhone()}</td>
									<td>${c.getMobile()}</td>
									<td>${c.getEmail()}</td>
									<td>${c.getDesignation()}</td>
									<td>${c.getSpecialization()}</td>
									<td>${c.getHospitalAffiliation()}</td>
								
								</tr>
							</c:forEach>
						</table>
					</div>	
					<div id="Table">
					<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbcaregiver_record, java.util.*"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbcaregiver_record> l= EmployeeRecordDAO.getAllRecordsC();
						request.setAttribute("l", l);
					%>
					
						<table cellpadding=5>
							<tr>
								<th></th>
								<th>Nurse's Name</th>
								<th>Age</th>
								<th>Phone</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Designation</th>
								<th>Specialization</th>
								<th>Hospital Affiliation</th>
								
							</tr>
							<c:forEach items="${l}" var="c">
								<tr>
									<td><a href="RecordsCarEDIT.jsp?Caregiver_ID=${c.getCaregiver_ID()}">edit</a></td>
									<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
									<td>${c.getAge()}</td>
									<td>${c.getPhone()}</td>
									<td>${c.getMobile()}</td>
									<td>${c.getEmail()}</td>
									<td>${c.getDesignation()}</td>
									<td>${c.getSpecialization()}</td>
									<td>${c.getHospitalAffiliation()}</td>
								
								</tr>
							</c:forEach>
						</table>
					</div>	
					<div id="rTable">
					<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbDoctor_record, java.util.*"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
						<% 
							List<dbtbDoctor_record> li= EmployeeRecordDAO.getAllRecordsD();
							request.setAttribute("li", li);
						%>
									
						<table cellpadding=5>
							<tr>
								<th></th>
								<th>Doctor's Name</th>
								<th>Age</th>
								<th>Phone</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Designation</th>
								<th>Specialization</th>
								<th>Hospital Affiliation</th>
								
							</tr>
							<c:forEach items="${li}" var="c">
								<tr>
									<td><a href="RecordsDocEDIT.jsp?Doctor_ID=${c.getDoctor_ID()}">edit</a></td>
									<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
									<td>${c.getAge()}</td>
									<td>${c.getPhone()}</td>
									<td>${c.getMobile()}</td>
									<td>${c.getEmail()}</td>
									<td>${c.getDesignation()}</td>
									<td>${c.getSpecialization()}</td>
									<td>${c.getHospitalAffiliation()}</td>
								
								</tr>
							</c:forEach>
						</table>
					</div>	
					<div id="rTable">
					<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbcaregiver_record, java.util.*"%>
					<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbcaregiver_record> lc= EmployeeRecordDAO.getAllRecordsC();
						request.setAttribute("lc", lc);
					%>
					
						<table cellpadding=5>
							<tr>
								<th></th>
								<th>Nurse's Name</th>
								<th>Age</th>
								<th>Phone</th>
								<th>Mobile</th>
								<th>Email</th>
								<th>Designation</th>
								<th>Specialization</th>
								<th>Hospital Affiliation</th>
								
							</tr>
							<c:forEach items="${lc}" var="c">
								<tr>
									<td><a href="RecordsCarEDIT.jsp?Caregiver_ID=${c.getCaregiver_ID()}">edit</a></td>
									<td>${c.getLastName()}, ${c.getFirstName()} ${c.getMiddleName()}</td>
									<td>${c.getAge()}</td>
									<td>${c.getPhone()}</td>
									<td>${c.getMobile()}</td>
									<td>${c.getEmail()}</td>
									<td>${c.getDesignation()}</td>
									<td>${c.getSpecialization()}</td>
									<td>${c.getHospitalAffiliation()}</td>
								
								</tr>
							</c:forEach>
						</table>
					</div>	
				
		
	</div>
	
	
	

	<div id="container1"></div>
	<div id="container2"></div>
	
	
		</body> 
<% 
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");


%>

</html>