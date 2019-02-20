<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
	 <link rel="stylesheet" href="css/bootstrap.min.css">
	 <link rel="stylesheet" href="css/Records.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
	 	 <script src="css/html2canvas.js"></script>
		 <script src="css/jspdf.debug.js"></script>
</head>
<body>
<div id="info">
	
	<form name="inf">
		<div id="center">
		<br/><br/><br/>
		<h1> EVA: NURSING HOME FACILITY</h1>
		<h6>245 Baltazar St. 10th ave. West Grace Park Caloocan, Philippines</h6>
		<p>+639274638456 / 02(490)-3029</p>
		<hr>
		</div>
		<h4>Personal Info</h4>
		<%
	        int id=Integer.parseInt(request.getParameter("Patient_ID"));
	        dbtbClient_record cl=client_recordDAO.getRecord(id);
			%>    
								
		<input type="hidden" size=15 name="Patient_ID" value="<%=id %>">
		<label>RESIDENT NAME:</label><input type="text" size=60 name="FirstName" value="<%=cl.getSurname().toUpperCase() %>, <%=cl.getFirstName().toUpperCase() %> <%=cl.getMiddleName().toUpperCase() %>"> 
		<label>Date Admitted:</label><input type="text" value="<%= cl.getDate_Admitted() %>">	
		<br/>	
		<label>BirthPlace</label><input type="text" size=119 name="BirthPlace" value="<%=cl.getBirthPlace().toUpperCase() %>" >
		<label>Birth Date</label><input type="date" name="BirthDate" value="<%=cl.getBirthDate() %>" size=60 >
		<label>Age</label><input type="number" name="Age" value="<%=cl.getAge()  %>">
		<br/>
		<label>Patient Status</label><input type="text" size=60 name="PatientStatus" value="<%=cl.getPatientStatus() %>">
		<label id="s">Gender</label><input type="text"  value="<%= cl.getSex().toUpperCase() %>">
		<br/>
		<label>Address</label><input type="text" size=119 name="Address" value="<%=cl.getAddress() %> <%=cl.getCity() %>,<%=cl.getProvince() %>,<%=cl.getCountry() %>" >
		<br/>
			<label>Location Code</label><input type="number" size=40 name="LocationCode" value="<%=cl.getLocationCode() %>">	
			<label>Residence Code</label><input type="number" size=40 name="ResidenceCode"value="<%=cl.getResidenceCode() %>">
		<br/>	
			<label>Remarks</label><textarea  cols=100><%=cl.getRemarks() %></textarea>
		<br/>
		<h4>Additional Information</h4>
			<label>MaritalStatus</label><input type="text" size=60 name="Marital" value="<%=cl.getMarital() %>">
		<br/>	
			<label>Language</label><input type="text" size=60 name="Language" value="<%=cl.getLanguage() %>">
		<br/>	
			<label>Patient Type</label><input type="text" size=60 name="PatientType" value="<%=cl.getAcctType() %>">
		<br/>	
			<label>Email</label><input type="email" size=60 name="Email" value="<%=cl.getEmail() %>">
		<br/><br/>	
	</form>
	<div id="resTable">	
		<h4>Contact Person</h4>
		<%@page import="conn.DbCon,dao.Contact_personDAO,dbtb.dbtbContact_person,java.util.*, java.sql.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
			List<dbtbContact_person> listc= Contact_personDAO.getAllRecords();
			request.setAttribute("listc", listc);
		%>
		
			<table class="table table-bordered table-striped">
				<tr>
				
					<th>ContactPerson</th>
					<th>Relationship</th>
					<th>Age</th>
					<th>PrimaryAddress</th>
					<th>PCity</th>
					<th>ContactNo</th>
					<th>WorkPhone</th>
					<th>WorkAddress</th>
					
				</tr>
				<c:forEach items="${listc}" var="c">
				<tr>
					<td>${c.getContactPerson()}</td>
					<td>${c.getRelationship()}</td>
					<td>${c.getAge()}</td>
					<td>${c.getPrimaryAddress()}</td>
					<td>${c.getPCity()}</td>
					<td>${c.getContactNo()}</td>
					<td>${c.getWorkPhone()}</td>
					<td>${c.getWorkAddress()}</td>
					
					<td></td>
				</tr>
				</c:forEach>
				</table>
		</div>
	</div>
	<div id="tbl">
		<div id="resTable">
			<h4>Allergy Information</h4>
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
		<br/>
		<br/>
		<div id="resTable">
			<h4>Disease Infromation</h4>
		<%@page import="conn.DbCon,dao.DiseaseDAO,dbtb.dbtbp_disease,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
		<% 
				List<dbtbp_disease> list=DiseaseDAO.getAllRecords();
		  		request.setAttribute("list",list);	
		%>
			<table class="table table-bordered table-striped">
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
		<br/><br/>
	</div>
	


</body>
<script>
let doc = new jsPDF('p','pt','letter');

doc.addHTML(document.querySelector('#info'),function() {
	doc.addPage()
	doc.addHTML(document.querySelector('#tbl'),function() {
    doc.save('record.pdf');
});
});

</script>
</html>