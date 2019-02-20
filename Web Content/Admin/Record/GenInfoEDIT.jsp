<%@page import="conn.DbCon,dao.InfoDAO,dbtb.dbtbInfo,java.util.*, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>EVA:GENERAL INFORMATION</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
	int id=Integer.parseInt(request.getParameter("infoID"));
			        		 			dbtbInfo d=InfoDAO.getRecord(id);
								    %>
		<form name="General" action="gen.jsp">
		<%@page import="conn.DbCon,dao.InfoDAO,dbtb.dbtbInfo,java.util.*, java.sql.*"%>
					<div class="modal fade" id="Modal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Information</h3>
       						</div>
					        <div class="modal-body">  			
			        		 	<label>Patient</label>		
									<input type="hidden" name="infoID" value="<%=id %>"/>   
									<input type="hidden" id='P_ID' name="PGen_infoID" value="<%=d.getPGen_infoID() %>"/>
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + d.getPGen_infoID());					                        	
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
										    
								<label>Information Type</label><br/><input type="text" name="InformationType" value="<%=d.getInformationType() %>" placeholder="Who can only know about it? "  size=60><br/>
								<label>Information Name</label><br/><input type="text" name="InformationName" value="<%=d.getInformationName() %>" placeholder="What is it about?" size=60><br/>
								<label>Description</label><br/><input type="text" name="Description" placeholder="Add some details" value="<%=d.getDescription() %>" size=60><br/>
								<label>Status</label><br/>
									<select name="Status">
										<option>value="<%=d.getStatus() %>"</option>
										<option></option>
										<option>Active</option>
										<option>Inactive</option>
									</select><br/>
								<label>Severity</label><br/>
									<select name="Severity">
										<option>value="<%=d.getSeverity() %>"</option>
										<option></option>
										<option>Mild</option>
										<option>Moderate</option>
										<option>Severe</option>
									</select><br/>
								<label>Information Source</label><br/><input type="text" name="InformationSource" value="<%=d.getInformationSource() %>" size=60><br/>
								<label>Onset</label><br/><input type="date" name="Onset" value="<%=d.getOnset() %>" placeholder="Please specify the date"><br/>
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
			
				<jsp:include page="GenInfo.jsp"></jsp:include>
</body>
	<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
		
	$('#Modal').modal('show');
	</script>
</html>