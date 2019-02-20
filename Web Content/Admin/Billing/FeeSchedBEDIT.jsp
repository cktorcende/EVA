<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbbed_fee, dao.FeeDAO" %>
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
			int id=Integer.parseInt(request.getParameter("BFeeID"));
			dbtbbed_fee c=FeeDAO.getRecordB(id);
		%>
	<form action="feeB.jsp" method="POST">
			<div class="modal fade" id="EditModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Bed Fee</h3>
     						</div>
			        <div class="modal-body">
					<input type="hidden" name="BFeeID" value="<%=id %>">
				
			<label>CoveredByPlan</label>
					<select name="CoveredByPlan">
						<option><%=c.getCoveredByPlan()%></option>
						<option>true</option>
						<option>false</option>
					</select>
			<label>Bed</label>
				<input type="hidden" id="B_ID"name="BBedID" value="<%=c.getBBedID()%>">
				<%
			    	try{
			    		Connection con=DbCon.getCon();
			    		Statement stmt = con.createStatement();
			    		ResultSet rs = stmt.executeQuery("SELECT bedID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM doctor_record ORDER BY roomNo ASC;");					                        	
			    %>
			    	<select id='PatientName' onClick="showSelectedB(this)">
						<option></option>
						<% while(rs.next()){ %>
						<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
						<% } %>
					</select><br/>
						 <%con.close();
					    	}catch(Exception e){out.println("Wrong Entry! " + e);}
        		 			
					    %>
			<label>Patient</label>
				 <input type="text" id='PB_ID' name="BPatientID" value="<%=c.getBPatientID()%>"/>
					        		
        		 <%
			    	try{
			    		Connection con=DbCon.getCon();
			    		Statement stmt = con.createStatement();
			    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
			    %>
			    	<select id='PatientName' onClick="showSelectB(this)">
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

$('#EditModal').modal('show');

</script>
</html>