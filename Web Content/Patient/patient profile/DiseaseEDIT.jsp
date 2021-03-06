<%@page import="conn.DbCon,dao.DiseaseDAO,dbtb.dbtbp_disease,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>EVA:Disease</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<% 
	int id=Integer.parseInt(request.getParameter("Disease_ID"));
		dbtbp_disease d=DiseaseDAO.getRecord(id);
	%>
	<form name="Disease" action="dis.jsp">
	
	<div class="modal fade" id="Modal" role="dialog">
			<div class="modal-dialog">
					  <div class="modal-content">
					    <div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal">&times;</button>
    							<h3 class="modal-title">Add Disease</h3>
   						</div>
	        <div class="modal-body"> 
	        <label>Resident Name</label><br/>
	        <input type="hidden" id='P_ID' name="Pat_ID" value="<%=d.getPat_ID() %>"/>
	        	<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + d.getPat_ID());					                        	
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
				
				<input type="hidden" name="Disease_ID" value="<%=id %>">
				<label>Disease Type</label><br/><input type="text" name="DiseaseType" placeholder="Is it contagious or not? " value="<%=d.getDiseaseType() %>" size=60><br/>
				<label>Disease Name</label><br/><input type="text" name="DiseaseName" placeholder="what is the patient's illness?" value="<%=d.getDiseaseName() %>"size=60><br/>
				<label>Precautions Practiced</label><br/><input type="text" name="PrecautionsPracticed" value="<%=d.getPrecautionsPracticed() %>"placeholder="What is the patient doing in order to prevent/or do to make it milder" size=60><br/>
				<label>Status</label><br/>
					<select name="Status">
						<option><%=d.getStatus() %></option>
						<option></option>
						<option>Active</option>
						<option>Inactive</option>
					</select><br/>
				<label>Severity</label><br/>
					<select name="Severity">
						<option><%=d.getSeverity() %></option>
						<option></option>
						<option>Mild</option>
						<option>Moderate</option>
						<option>Severe</option>
					</select><br/>
				<label>Information Source</label><br/><input type="text" name="InformationSource" value="<%=d.getInformationSource() %>" placeholder="What is the your name or the name of the physician that discovered the illness?" size=60><br/>
				<label>Onset</label><br/><input type="date" name="Onset" value="<%=d.getOnset() %>" placeholder="When was the disease First noticed?"><br/>
				<label>Comments</label><br/><textarea cols=50 id="C" name="Comments"  form="Allergy"placeholder="Add any additional findings"><%=d.getComments() %></textarea>
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
				
				<jsp:include page="Disease.jsp"></jsp:include>
	</form>
</body>
		<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
	$('#Modal').modal('show');

		
	</script>
</html>