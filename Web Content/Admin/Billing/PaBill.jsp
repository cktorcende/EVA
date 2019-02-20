<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbbed_fee ,dbtb.dbtbcaregiver_fee,dbtb.dbtbdoctor_fee,dbtb.dbtbnurse_fee, dao.FeeDAO" %>
<!DOCTYPE html>
<html>
<head>
	<title>EVA: PATIENT BILL</title>
	<link rel="stylesheet" href="css/Billing.css">
		<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/notify.js"></script>
</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.jsp">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.jsp">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.jsp">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.jsp">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.jsp">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"><pre>EVA:Cashier Record</pre></div>
	<div id="buttons">
		<button onclick="location.href='FeeSchedule.jsp'">Fee Schedule</button>
		<button onclick="location.href='MedicineBillInfo.jsp'">Medicine Bill</button>
		<button onclick="location.href='FoodBillInfo.jsp'">Food Bill</button>
		<button onclick="location.href='BillReport.jsp'">Billing Report</button>
		<button onclick="location.href='PatientBill.jsp'">Patient bill</button>
		<button onclick="location.href='InsuranceAppInfo.jsp'">Application of Insurance</button>
		<button onclick="location.href='BenefitsAppInfo.jsp'">Application of Benefits</button>
		<button onclick="location.href='MembershipInfo.jsp'">Application of Membership</button>
	</div>
	
	<div id="all">
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
					<td><a href="PaBillEDIT.jsp?Patient_ID=${c.getPatient_ID()}" >Edit</a></td>
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
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				dbtbdoctor_fee d = new dbtbdoctor_fee(); 
				List<dbtbdoctor_fee> ld=FeeDAO.getUnpaidRecordsD();
		  		request.setAttribute("ld",ld);
		  		int counter = 0;
			%>
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>			
					<th width="30%">Patient</th>
					<th width="30%">Practitioner</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
					<th width="20%">status</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="FeeSchedDEDIT.jsp?DFeeID=${c.getDFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
					
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),doctor_fee.DPatientID FROM eva.client_record INNER JOIN  eva.doctor_fee ON client_record.Patient_ID=doctor_fee.DPatientID WHERE Patient_ID="+ ld.get(counter).getDPatientID()+" LIMIT 1");	
				    		
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}		
				    		 con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT doctor_record.Doctor_ID,CONCAT(doctor_record.LastName,', ',doctor_record.FirstName,' ',doctor_record.MiddleName),doctor_fee.BDoctorID FROM eva.doctor_record INNER JOIN  eva.doctor_fee ON doctor_record.Doctor_ID=doctor_fee.BDoctorID WHERE BDoctorID=" +ld.get(counter).getBDoctorID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}counter++;con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbcaregiver_fee> lc=FeeDAO.getUnpaidRecordsC();
		  		request.setAttribute("lc",lc);
		  		int count = 0;
			%>
			<c:forEach items="${lc}" var="c">
				<tr>
					<td><a href="FeeSchedCEDIT.jsp?CFeeID=${c.getCFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),caregiver_fee.CPatientID FROM eva.client_record INNER JOIN  eva.caregiver_fee ON client_record.Patient_ID=caregiver_fee.CPatientID WHERE Patient_ID="+ lc.get(count).getCPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT caregiver_record.Caregiver_ID,CONCAT(caregiver_record.LastName,', ',caregiver_record.FirstName,' ',caregiver_record.MiddleName),caregiver_fee.BCaregiverID FROM eva.caregiver_record INNER JOIN  eva.caregiver_fee ON caregiver_record.Caregiver_ID=caregiver_fee.BCaregiverID WHERE BCaregiverID="+ lc.get(count).getBCaregiverID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}count++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbnurse_fee> ln=FeeDAO.getUnpaidRecordsN();
		  		request.setAttribute("ln",ln);
		  		int countN = 0;
			%>
				<c:forEach items="${ln}" var="c">
				<tr>
					<td><a href="FeeSchedNEDIT.jsp?NFeeID=${c.getNFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),nurse_fee.NPatientID FROM eva.client_record INNER JOIN  eva.nurse_fee ON client_record.Patient_ID=nurse_fee.NPatientID WHERE Patient_ID="+ ln.get(countN).getNPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT nurse_record.Nurse_ID,CONCAT(nurse_record.LastName,', ',nurse_record.FirstName,' ',nurse_record.MiddleName),nurse_fee.BNurseID FROM eva.nurse_record INNER JOIN  eva.nurse_fee ON nurse_record.Nurse_ID=nurse_fee.BNurseID WHERE BNurseID="+ ln.get(countN).getBNurseID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countN++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbbed_fee> lb=FeeDAO.getUnpaidRecordsB();
		  		request.setAttribute("lb",lb);
		  		int countB = 0;
			%>
				<c:forEach items="${lb}" var="c">
				<tr>
					<td><a href="FeeSchedBEDIT.jsp?BFeeID=${c.getBFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),bed_fee.BPatientID FROM eva.client_record INNER JOIN  eva.bed_fee ON client_record.Patient_ID=bed_fee.BPatientID WHERE Patient_ID="+ lb.get(countB).getBPatientID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    			 
				    %>
					<td><%= rs.getString(2)%></td>
					<%}con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 	%>
        		 	<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT bedroom_rec.bedID,CONCAT(bedroom_rec.wing,' room ',bedroom_rec.roomNo),bed_fee.BBedID FROM eva.bedroom_rec INNER JOIN  eva.bed_fee ON bedroom_rec.bedID=bed_fee.BBedID WHERE BBedID="+ lb.get(countB).getBBedID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countB++;con.close();
					    	}catch(Exception e){}
        		 	%>
					
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
					<td>${c.getstatus()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
</body>
</html>