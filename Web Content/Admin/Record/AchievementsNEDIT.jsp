<%@ page import="conn.DbCon,dao.ch_AchievementDAO,dbtb.dbtbn_achievements, java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
		<% 
		 	int id=Integer.parseInt(request.getParameter("N_AchievementID"));
			dbtbn_achievements c=ch_AchievementDAO.getNRecord(id);
		%>

		<form id="regForm" action="Ach.jsp">
			<div class="modal fade" id="Modal" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Achievements</h3>
     						</div>
					        <div class="modal-body"> 
					        <input type="hidden" name="CH_AchievementID" value="<%=id %>">
					        <input type="hidden" name="NA_NurseID" value="<%=c.getNA_NurseID() %>">
					       	<label>Nurse</label>
			        		 <input type="text" id='N_ID' name="NA_NurseID"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Nurse_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM nurse_record WHERE Nurse_ID="+c.getNA_NurseID());					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedN(this)">
								    		<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% }con.close();
								    	}catch(Exception e){out.println("Wrong Entry! " + e);} %>
											
											<option></option>
										<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Nurse_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM nurse_record ORDER BY LastName ASC;");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
							<label>Date Started</label>
								<br/>
									<input type="date" name="DateStarted" value="<%=c.getDescription()%>" size=60>
								<br/>
									<label>Achievement Name</label>
								<br/>
									<input type="text" name="AchievementName" placeholder="what is the achievement?" value="<%=c.getAchievementName()%>" size=60>
								<br/>
									<label>Description</label>
								<br/>
									<textarea cols=50 id="C" name="Description" form="Experience" placeholder="Add a short explanation about your achievement "><%=c.getDescription()%></textarea>
								<br/>
									<label>Status</label>
								<br/>
									<select name="Status">
										<option> value="<%=c.getStatus()%>"</option>
										<option>Active</option>
										<option>Inactive</option>
									</select>
								<br/>
									<label>Commendable Acts</label>
								<br/>
									<input type="text" name="CommendableActs" value="<%=c.getCommendableActs()%>" placeholder="What are the notable acts being highlighted here" size=60>
								<br/>
									

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
<jsp:include page="Achievements.jsp"></jsp:include>
</body>
<script>
function showSelectedN(thisObj)
{

  document.getElementById('N_ID').value = thisObj.options[thisObj.selectedIndex].value;

}

$('#Modal').modal('show');

</script>
</html>