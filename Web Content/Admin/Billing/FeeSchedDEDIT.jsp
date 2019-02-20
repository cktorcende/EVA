<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbdoctor_fee, dao.FeeDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA: FEE SCHEDULE</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/Chart.js"></script>
</head>
<body>
	<%
			 int id=Integer.parseInt(request.getParameter("DFeeID"));
			dbtbdoctor_fee c=FeeDAO.getRecordD(id);
		%> 
	<form action="feeD.jsp" method="POST">
			<div class="modal fade" id="Doctor" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Doctor Fee</h3>
     						</div>
			        <div class="modal-body">
					<input type="hidden" name="DFeeID" value="<%=id %>">
				<label>CoveredByPlan</label>
					<select name="CoveredByPlan">
						<option><%=c.getCoveredByPlan()%></option>
						<option></option>
						<option>true</option>
						<option>false</option>
					</select>
			<label>Doctor</label>
				<input type="hidden" id="D_ID"name="BDoctorID" value="<%=c.getBDoctorID()%>">
				<%
			    	try{
			    		Connection con=DbCon.getCon();
			    		Statement stmt = con.createStatement();
			    		ResultSet rs = stmt.executeQuery("SELECT Doctor_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM doctor_record ORDER BY LastName ASC;");					                        	
			    %>
			    	<select id='PatientName' onClick="showSelectedD(this)">
						<option></option>
						<% while(rs.next()){ %>
						<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
						<% } %>
					</select><br/>
						 <%con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 			
					    %>
			<label>Patient</label>
				 <input type="text" id='PD_ID' name="DPatientID" value="<%=c.getDPatientID()%>"/>
					        		
        		 <%
			    	try{
			    		Connection con=DbCon.getCon();
			    		Statement stmt = con.createStatement();
			    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
			    %>
			    	<select id='PatientName' onClick="showSelectD(this)">
						<option></option>
						<% while(rs.next()){ %>
						<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
						<% } %>
					</select><br/>
						 <%con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 			
					    %>
			<label></label>
				<input type="text" name="ratePerHour" value="<%=c.getratePerHour()%>">
			<label></label>
				<input type="text" name="HoursRendered" value="<%=c.getHoursRendered()%>">
			<label></label>
				<select name="Shift">
					<option><%=c.getShift()%></option>
					<option></option>
					<option>Day</option>
					<option>Afternoon</option>
					<option>Night</option>
				</select>
			<label></label>
				<input type="text" name="DateStarted" value="<%=c.getDateStarted()%>">
			<label></label>
				<input type="text" name="DateEnded" value="<%=c.getDateEnded()%>">
			<label></label>
				<input type="text" name="DueDate" value="<%=c.getDueDate()%>">
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
<jsp:include page="FeeSched.jsp"></jsp:include>
</body>
<script>

$('#Doctor').modal('show');

</script>
</html>