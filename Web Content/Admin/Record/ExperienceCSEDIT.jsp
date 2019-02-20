<%@page import="conn.DbCon,java.sql.*,dao.ch_experienceDAO,dbtb.dbtbch_experience,dbtb.dbtbcs_experience, dbtb.dbtbcr_experience,dbtb.dbtbd_experience,dbtb.dbtbn_experience, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:Experience</title>
 <link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
</head>
<body>
	<%
		 int id=Integer.parseInt(request.getParameter("CS_ExperienceID"));
		dbtbcs_experience c=ch_experienceDAO.getRecordCS(id);
	%> 
		<form id="regForm" action="Exp.jsp">
		<div class="modal fade" id="Modal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Experience</h3>
       						</div>
					        <div class="modal-body"> 
							<label>Date Started</label>
							<input type="hidden" name="CS_ExperienceID" value="<%=id %>">
								<label>Cashier</label>
			        		 <input type="hidden" id='CS_ID' name="CSA_CashierID"  value="<%=c.getCashierID() %>"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT Cashier_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM cashier_record WHERE Cashier_ID=" +c.getCashierID());					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectedCS(this)">
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
								    		ResultSet rs = stmt.executeQuery("SELECT Cashier_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM cashier_record ORDER BY LastName ASC;");					                        	
								    %>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
								<br/>
									<input type="date" name="DateStarted"  value="<%=c.getDateStarted()%>" size=60>
								<br/>
									<label>Experience Name</label>
								<br/>
									<input type="text" name="ExperienceName"  value="<%=c.getExperienceName()%>" placeholder="what is your experience?" size=60>
								<br/>
									<label>Description</label>
								<br/>
									<textarea cols=50 id="C" name="Description" form="Experience"placeholder="Add a short explanation about your experience "><%=c.getDescription()%></textarea>
								<br/>
									<label>Status</label>
								<br/>
									<select name="Status">
										<option><%=c.getStatus()%></option>
										<option></option>
										<option>Active</option>
										<option>Inactive</option>
									</select>
								<br/>
									<label>Commendable Acts</label>
								<br/>
									<input type="text" name="CommendableActs"  value="<%=c.getCommendableActs()%>" placeholder="What are the notable acts being highlighted here" size=60>
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
function showSelectedCS(thisObj)
{

  document.getElementById('CS_ID').value = thisObj.options[thisObj.selectedIndex].value;

}

$('#Modal').modal('show');

</script>
</html>