<%@page import="conn.DbCon,dao.CliExDAO,dbtb.dbtbp_examination,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel='stylesheet' href='css/Records.css'>
	 	<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<%
			 int id=Integer.parseInt(request.getParameter("Examination_ID"));
			dbtbp_examination p=CliExDAO.getRecord(id);
		%>  
	<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>

	<form name="CliEx" action="cli.jsp">
		<%@page import="conn.DbCon,dao.CliExDAO,dbtb.dbtbp_examination,java.util.*, java.sql.*"%>
				<div class="modal fade" id="myModal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Examination</h3>
     						</div>
			        <div class="modal-body">
			    <input type="hidden" name="Examination_ID" value="<%=id %>">
			    <input type="hidden" id="P_ID" name="Pa_ID" value="<%=p.getPa_ID() %>">
			        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + p.getPa_ID());					                        	
								    %>
								    	<select  onClick="showSelected(this)">
								    		<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close();
										
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
			        		 			
								    %>
								    	<option></option>
										<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close(); %>
										</select><br/>
											<%
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>	
				<label>Examination Type</label><br/><input type="text" name="ExaminationType" placeholder="what does the examination cover?"  value="<%=p.getExaminationType() %>"size=60/><br/>
				<label>Examination Name</label><br/><input type="text" name="ExaminationName" placeholder="Name of Examination" size=60 value="<%=p.getExaminationName() %>"/><br/>
				<label>Examination Date</label><br/><input type="date" name="ExaminationDate" placeholder="Date Held " size=60 value="<%=p.getExaminationDate() %>"/><br/>
				<label>Examination Details</label><br/><textarea cols=50 id="C" name="ExaminationDetails" form="Allergy" placeholder="Add any additional findings"><%=p.getExaminationDetails() %></textarea>
				<label>Examiner Name</label><br/><input type="text" name="ExaminationPlace" placeholder="where was it held?" value="<%=p.getExaminationPlace() %>" size=60/><br/>
				<label>Examination Place</label><br/><input type="text" name="ExaminationPlace" placeholder="where was it held?" value="<%=p.getExaminationPlace() %>" size=60/><br/>
				<label>Examination Result</label><br/><input type="date" name="ExaminationResult" placeholder="Any illness discovered?" value="<%=p.getExaminationResult()  %>"/><br/>
			</div>
			<div class="modal-footer">
  							<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
  							<input type='reset' class="btn btn-default">
								<button type="submit" name="crud" class="btn btn-default" value="Update Record">Update Record</button>
								<button type="submit" name="crud" class="btn btn-default" value="Delete Record">Delete Record</button>
      					</div>
   					</div>
 					</div>
				</div>				
	</form>
	<jsp:include page="CliEx.jsp"></jsp:include>
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
		
	</script>
	<script>

$('#Modal').modal('show');

</script>
</html>