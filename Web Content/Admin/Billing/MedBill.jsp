<%@page import="conn.DbCon,java.sql.*,java.util.*,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO" %>

<!DOCTYPE html>
<html>
<head>
	<title>EVA: MEDICINE BILL</title>
	<link rel="stylesheet" href="css/Billing.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
 	 <script src="css/jquery-3.3.1.min.js"></script>
 	 <script src="css/bootstrap.min.js"></script>
 	 <script src="css/Chart.js"></script>
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
	<div id="container" class="cont"></div>
	<div id="all">
		<div id="Search">
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60>   
				   		 <br/>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Medicine">Create New Medicine Bill</button>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Food">Create New Food Bill</button>
				   	 	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Supply">Create New Supply Bill</button>
			<form action="MedM.jsp" method="POST">
			<div class="modal fade" id="Medicine" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Medicine Fee</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							
     						</div>
			        		<div class="modal-body">
								<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
								<br/>
									<label>Patient</label>
										 <input type="text" id='PM_ID' name="MPatientID"/>
												        		
							        		 <%
										    	try{
										    		Connection con=DbCon.getCon();
										    		Statement stmt = con.createStatement();
										    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
										    %>
										    	<select id='PatientName' onClick="showSelectedM(this)">
													<option></option>
													<% while(rs.next()){ %>
													<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
													<% } %>
												</select><br/>
													 <%con.close();
												    	}catch(Exception e){out.println("Wrong Entry! " + e);}
							        		 			
												    %>
								<br/>
									<label>Medicine</label>
														<input type="hidden" id="M_ID"name="BDrugID">
														<%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT DrugID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
													    %>
													    	<select id='PatientName' onClick="showSelectM(this)">
																<option></option>
																<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% } %>
															</select><br/>
																 <%con.close();
															    	}catch(Exception e){out.println("Wrong Entry! " + e);}
										        		 			
															    %>
									
							<label>Rate Per Item</label>
								<input type="text" name="ratePerHour">
							<label>Amount Used</label>
								<input type="text" name="HoursRendered">
							<label>DateStarted</label>
								<input type="date" name="DateStarted">
							<label>DateEnded</label>
								<input type="date" name="DateEnded">
							<label>DueDate</label>
								<input type="date" name="DueDate">
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
			
			
			
			<form action="MedF.jsp" method="POST">
			<div class="modal fade" id="Food" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Food Fee</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							
     						</div>
			        		<div class="modal-body">
								<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
								<br/>
									<label>Patient</label>
										 <input type="text" id='PF_ID' name="FPatientID"/>
												        		
							        		 <%
										    	try{
										    		Connection con=DbCon.getCon();
										    		Statement stmt = con.createStatement();
										    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
										    %>
										    	<select id='PatientName' onClick="showSelectedF(this)">
													<option></option>
													<% while(rs.next()){ %>
													<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
													<% } %>
												</select><br/>
													 <%con.close();
												    	}catch(Exception e){out.println("Wrong Entry! " + e);}
							        		 			
												    %>
								<br/>
									<label>Food</label>
									<input type="hidden" id="F_ID"name="BFoodID">
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT DrugID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectF(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
				
							<label>Rate PerMonth</label>
								<input type="text" name="ratePerMonth">
							<label>Days Rendered</label>
								<input type="text" name="HoursRendered">
							<label>DateStarted</label>
								<input type="date" name="DateStarted">
							<label>DateEnded</label>
								<input type="date" name="DateEnded">
							<label>DueDate</label>
								<input type="date" name="DueDate">
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
			
			
			<form action="MedS.jsp" method="POST">
			<div class="modal fade" id="Supply" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Supply Fee</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>	
     						</div>
			        		<div class="modal-body">
								<label>CoveredByPlan</label>
									<select name="CoveredByPlan">
										<option></option>
										<option>true</option>
										<option>false</option>
									</select>
								<br/>
									<label>Patient</label>
										 <input type="text" id='PS_ID' name="SPatientID"/>
												        		
							        		 <%
										    	try{
										    		Connection con=DbCon.getCon();
										    		Statement stmt = con.createStatement();
										    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
										    %>
										    	<select id='PatientName' onClick="showSelectedS(this)">
													<option></option>
													<% while(rs.next()){ %>
													<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
													<% } %>
												</select><br/>
													 <%con.close();
												    	}catch(Exception e){out.println("Wrong Entry! " + e);}
							        		 			
												    %>
								<br/>
									<label>Supply</label>
									<input type="hidden" id="S_ID"name="BSupplyID">
									<%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT DrugID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM caregiver_record ORDER BY LastName ASC;");					                        	
								    %>
								    	<select id='PatientName' onClick="showSelectS(this)">
											<option></option>
											<% while(rs.next()){ %>
											<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
											<% } %>
										</select><br/>
											 <%con.close();
										    	}catch(Exception e){out.println("Wrong Entry! " + e);}
					        		 			
										    %>
				
							<label>Rate Per Item</label>
								<input type="text" name="ratePerHour">
							<label>Amount Used</label>
								<input type="text" name="HoursRendered">
							<label>DateStarted</label>
								<input type="date" name="DateStarted">
							<label>DateEnded</label>
								<input type="date" name="DateEnded">
							<label>DueDate</label>
								<input type="date" name="DueDate">
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
		</div>
		
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbdrug_fee> lm=FeeMDAO.getAllRecordsM();
		  		request.setAttribute("lm",lm);
		  		int count= 0; 
			%>
			
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>CoveredByPlan</th>
					<th width="10%">Patient</th>
					<th width="30%">Medicine</th>
					<th width="20%">ratePerHour</th>
					<th width="20%">HoursRendered</th>
					<th width="20%">DueDate</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${lm}" var="c">
				<tr>
					<td><a href="MedBillDEDIT.jsp?DRFeeID=${c.getDRFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),drug_fee.DRPatientID FROM eva.client_record INNER JOIN  eva.drug_fee ON client_record.Patient_ID=drug_fee.DRPatientID WHERE Patient_ID="+ lm.get(count).getDRPatientID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT drug_record.Drug_ID,drug_record.DrugDescription,drug_fee.BDrugID FROM eva.drug_record INNER JOIN  eva.drug_fee ON drug_record.Drug_ID=drug_fee.BDrugID WHERE BDrugID="+ lm.get(count).getBDrugID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}count++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getratePerHour()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbfood_fee> lf=FeeMDAO.getAllRecordsF();
		  		request.setAttribute("lf",lf);
		  		int countf =0;
			%>
			
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>Covered By Plan</th>
					<th width="10%">Patient</th>
					<th width="30%">Food</th>
					<th width="20%">Rate Per Month</th>
					<th width="20%">Hours Rendered</th>
					<th width="20%">Due Date</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${lf}" var="c">
				<tr>
					<td><a href="MedBillFEDIT.jsp?FFeeID=${c.getFFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),food_fee.FPatientID FROM eva.client_record INNER JOIN  eva.food_fee ON client_record.Patient_ID=food_fee.FPatientID WHERE Patient_ID="+ lf.get(countf).getFPatientID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT food_record.FoodID,food_record.FoodDescription,food_fee.BFoodID FROM eva.food_record INNER JOIN  eva.food_fee ON food_record.FoodID=food_fee.BFoodID WHERE BFoodID="+ lf.get(countf).getBFoodID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countf++;con.close();
					    	}catch(Exception e){}
        		 	%>
					
					<td>${c.getratePerMonth()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
		
		<div id="resTable" >	
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<%
				List<dbtbsupply_fee> ls=FeeMDAO.getAllRecordsS();
		  		request.setAttribute("ls",ls);
		  		int countS=0;
			%>
			
		<table  class="table table-bordered ">
			<thead>
				<tr>
					<th></th>
					<th>Covered By Plan</th>
					<th width="10%">Patient</th>
					<th width="30%">Supply</th>
					<th width="20%">Rate Per Month</th>
					<th width="20%">Hours Rendered</th>
					<th width="20%">Due Date</th>
				
				
				</tr>
			<thead>
			<tbody id="myTable">
				<c:forEach items="${ls}" var="c">
				<tr>
					<td><a href="MedBillSEDIT.jsp?SFeeID=${c.getSFeeID()}">edit</a></td>
					<td>${c.getCoveredByPlan()}</td>
					<%
				    	try{
				    		Connection con=DbCon.getCon();
				    		Statement stmt = con.createStatement();
				    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),supply_fee.SPatientID FROM eva.client_record INNER JOIN  eva.supply_fee ON client_record.Patient_ID=supply_fee.SPatientID WHERE Patient_ID="+ ls.get(countS).getSPatientID()+" LIMIT 1");					                        	
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
				    		ResultSet rs = stmt.executeQuery("SELECT supply_record.SupplyID,supply_record.SupplyDescription,supply_fee.BSupplyID FROM eva.supply_record INNER JOIN  eva.supply_fee ON supply_record.SupplyID=food_fee.BSupplyID WHERE BSupplyID="+ ls.get(countS).getBSupplyID()+" LIMIT 1");					                        	
				    		 while(rs.next()){
				    %>
					<td><%= rs.getString(2)%></td>
					<%}countf++;con.close();
					    	}catch(Exception e){}
        		 	%>
					<td>${c.getBSupplyID()}</td>
					<td>${c.getratePerMonth()}</td>
					<td>${c.getHoursRendered()}</td>
					<td>${c.getDueDate()}</td>
				
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</div>
	</div>
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
</body>
<script>
function showSelectedM(thisObj)
{

  document.getElementById('PM_ID').value = thisObj.options[thisObj.selectedIndex].value;

}
function showSelectM(thisObj)
{

  document.getElementById('M_ID').value = thisObj.options[thisObj.selectedIndex].value;

}
function showSelectedF(thisObj)
{

  document.getElementById('PF_ID').value = thisObj.options[thisObj.selectedIndex].value;

}
function showSelectF(thisObj)
{

  document.getElementById('F_ID').value = thisObj.options[thisObj.selectedIndex].value;

}

function showSelectedS(thisObj)
{

  document.getElementById('PS_ID').value = thisObj.options[thisObj.selectedIndex].value;

}
function showSelectS(thisObj)
{	
	
	 document.getElementById('S_ID').value = thisObj.options[thisObj.selectedIndex].value;

}

</script>
<script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	
	
	$(document).ready(function(){
	  $("#myInput").on("keyup", function() {
	    var value = $(this).val().toLowerCase();
	    $("#myTable tr").filter(function() {
	      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
	    });
	  });
	});
	</script>
</html>