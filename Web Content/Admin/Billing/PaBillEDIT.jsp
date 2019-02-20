<%@page import="conn.DbCon,dao.client_recordDAO,dbtb.dbtbClient_record,java.util.*,dbtb.dbtbbed_record,dao.BedDAO,dbtb.dbtbbed_fee ,dbtb.dbtbcaregiver_fee,dbtb.dbtbdoctor_fee,dbtb.dbtbnurse_fee, dao.FeeDAO,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO,dao.P_InsuranceDAO, dbtb.dbtbp_insurance, dao.AppPayDAO, dbtb.dbtbAppPay"%>
<!DOCTYPE html>
<html>
<head>
	<title>EVA: PAtTIENT BILL</title>
	<link rel="stylesheet" href="css/Billing.css">
</head>
<body>
	<form name="info" >
		<h1> EVA: NURSING HOME FACILITY</h1>
		<h6>245 Baltazar St. 10th ave. West Grace Park Caloocan, Philippines</h6>
		<p>+639274638456 / 02(490)-3029</p>
		<%
	        int id=Integer.parseInt(request.getParameter("Patient_ID"));
	        dbtbClient_record cl=client_recordDAO.getRecord(id);
			%>    
		<input type="hidden" name="Patient_ID">	
		<label>RESIDENT NAME:</label><input type="text" size=60 name="FirstName" value="<%=cl.getSurname().toUpperCase() %>, <%=cl.getFirstName().toUpperCase() %> <%=cl.getMiddleName().toUpperCase() %>" readonly> 
		<label>Date Admitted:</label><input type="text" value="<%= cl.getDate_Admitted() %>" readonly>	
		<br/>
			<label>Address</label><input type="text" size=119 name="Address" value="<%=cl.getAddress().toUpperCase() %> <%=cl.getCity().toUpperCase() %>,<%=cl.getProvince().toUpperCase() %>,<%=cl.getCountry().toUpperCase() %>" readonly>				
		<br/>
		<label>Patient Status</label><input type="text" size=60 name="PatientStatus" value="<%=cl.getPatientStatus().toUpperCase() %>" readonly>	
		<label>Age</label><input type="number" name="Age" value="<%=cl.getAge()  %>" readonly>
		<%
	        dbtbbed_record b=BedDAO.getRecordF(id);
			%>    
		<label>Bedroom No</label><input type="number" name="roomNo" value="<%=b.getwing().toUpperCase() %> ROOM <%=b.getroomNo() %>" readonly>
	</form>
		<table>
			<thead>
				<tr>
					<th width="50%">HOSPITAL BILL PARTICULARS</th>
					<th>AMOUNT</th>
					<th>CHARGES</th>
					<th>PAYMENT STATUS</th>
				</tr>
			</thead>
			<tbody>
				<% dbtbbed_fee fb= FeeDAO.getRecordBP(id);%>
				<tr>
					<td>ROOM CHARGES</td>
					<td><%=fb.getratePerHour()%> per Day @<%=fb.getHoursRendered()%> Days </td>
					<td><%=fb.getratePerHour() * fb.getHoursRendered()%></td>
					<td><%=fb.getstatus() %></td>
				</tr>
				<tr>
				
					<td>PROFESSION FEE</td>
					<td>Doctor: P<%=FeeDAO.sumD(id) %> Caregiver: P<%=FeeDAO.sumC(id) %> Nurse: P<%=FeeDAO.sumN(id) %> </td>
					<td><%= FeeDAO.sumD(id) + FeeDAO.sumC(id) + FeeDAO.sumD(id)%></td>
				</tr>
				<tr>
					<td>SUPPLY ROOM/PHARMACY</td>
					<td>Medicine: P<%=FeeMDAO.sumM(id) %> Food: P<%= FeeMDAO.sumF(id) %> Nurse: P<%=FeeMDAO.sumS(id) %> </td>
					<td><%= FeeMDAO.sumM(id) + FeeMDAO.sumF(id) + FeeMDAO.sumS(id)%></td>
				</tr>
				<tr>
					<% 
						
						dbtbp_insurance i=P_InsuranceDAO.getRecord(id);
					
					%>
					<td>INSURANCE</td>
					<td>P<%=Double.parseDouble(i.getDeductible()) %></td>
					<td><%=Double.parseDouble(i.getDeductible()) * .005 %></td>
				</tr>
				<tr>
					<td>PHILHEALTH BENEFITS</td>
					<td>P</td>
					<td></td>
				</tr>
				<tr>
					<td>SSS BENEFITS</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					
					<td>PLAN BENEFITS</td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td>PAYMENT</td>
					<td><%= AppPayDAO.getPatientRecords(id)%></td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<h4>OTHER AVAILED SERVICES</h4>
		<table>
			<tr>
				<th width="70%">DESCRIPTION</th>
				<th>CHARGES</th>
				<th>AMOUNT</th>
				<th>PAYMENT</th>
			</tr>
		</table>

		<div id="resTable">
				
		<%@page import="conn.DbCon,dao.GuarantorDAO,dbtb.dbtbGuarantor_record,java.util.*"%>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
		
			<%
				List<dbtbGuarantor_record> l= GuarantorDAO.getAllRecords();
				request.setAttribute("l", l);
				
			%>
			<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th></th>
					<th>Relationship</th>
					<th>GuarantorName</th>
					<th>Amount Paid</th>
					
				</tr>
			</thead>
			<tbody id="GuaTable">
				<c:forEach items="${l}" var="c">
				<tr>
					<td><a href="GuarantorEDIT.jsp?guarantorID=${c.getguarantorID()}">Edit</a></td>
					<td>${c.getRelationship()}</td>
					<td>${c.getLast()}, ${c.getFirst()} ${c.getMiddle()}</td>
					<td>${c.getSSN()}</td>
					<td>${c.getEmpStatus()}</td>
					<td>${c.getAddress()} ${c.getCity()} ${c.getState()},${c.getCountry()}</td>
					<td>${c.getPhone()}</td>
					<td>${c.getCellphoneNo()}</td>
					<td>${c.getEmail()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
				</table>
	
		</div>		
		
		
</body>
</html>