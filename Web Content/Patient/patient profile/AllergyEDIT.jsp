<%@page import="conn.DbCon,dao.AllergyDAO,dbtb.dbtbp_allergy,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>

<title>EVA: Allergy</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<form name="Allergy" action="Aller.jsp">
		<%
			 int id=Integer.parseInt(request.getParameter("Allergy_ID"));
			 dbtbp_allergy a=AllergyDAO.getRecord(id);
		%>  	
		<div class="modal fade" id="Modal" role="dialog">
			<div class="modal-dialog">
					  <div class="modal-content">
					    <div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal">&times;</button>
    							<h3 class="modal-title">Add Allergy</h3>
    							
   						</div>
	    			    <div class="modal-body">
	    			    
	    			    <input type="hidden" name="Allergy_ID" value="<%=id %>">
	    			    <label>Patient</label>
	    			    	<input type="hidden" id='P_ID' name="P_ID" />
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record WHERE Patient_ID=" + a.getP_ID());					                        	
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
								
								
							<label>Substance</label><br/><input type="text" value="<%=a.getSubstance() %>" placeholder="what is the patient allergic to?"  size=60 name="Substance"><br/>
							<label>Reaction</label><br/><input type="text" value="<%=a.getReaction() %>" placeholder="How did the patient react" size=60 name="Reaction"><br/>
							<label>Category</label><br/><input type="text" value="<%=a.getCategory() %>" placeholder="Allergy/Side effect/ Patient Complaints " size=60 name="Category"><br/>
							<label>Status</label><br/>
								<select name="Status" >
									<option><%=a.getStatus() %></option>
									<option></option>
									<option>Active</option>
									<option>Inactive</option>
								</select><br/>
							<label>Severity</label><br/>
								<select name="Severity" >
									<option><%=a.getSeverity() %></option>
									<option></option>
									<option>Mild</option>
									<option>Moderate</option>
									<option>Severe</option>
								</select><br/>
							<label>Information Source</label><br/><input type="text" value="<%=a.getInformationSource() %>" name="InformationSource" placeholder="Name of Physician" size=60><br/>
							<label>Onset</label><br/><input type="date" name="Onset" value="<%=a.getOnset() %>" placeholder="When was the allergy First noticed?"><br/>
							<label>Comments</label><br/><textarea name="Comments" cols=50 id="C"  form="Allergy"placeholder="Add any additional findings"><%=a.getComments() %></textarea>
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
		<jsp:include page="Allergy.jsp"></jsp:include>
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