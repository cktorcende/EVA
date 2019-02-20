<%@page import="conn.DbCon, java.sql.*,java.util.*, dbtb.dbtbBenefits, dao.BenefitsDAO" %>
<!DOCTYPE html>
<html>
<head>
	<title>EVA:BENFITS APPLICATION</title>
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
		<button onclick="location.href='FeeSched.jsp'">Fee Schedule</button>
		<button onclick="location.href='MedBill.jsp'">Medicine Bill</button>
		<button onclick="location.href='FoodBillInfo.jsp'">Food Bill</button>
		<button onclick="location.href='BillReport.jsp'">Billing Report</button>
		<button onclick="location.href='PatientBill.jsp'">Patient bill</button>
		<button onclick="location.href='InsuranceAppInfo.jsp'">Application of Insurance</button>
		<button onclick="location.href='BenefitsAppInfo.jsp'">Application of Benefits</button>
		<button onclick="location.href='MembershipInfo.jsp'">Application of Membership</button>
	</div>
	<div id="all">
		<h2>Apply For Benefits</h2>
		<form action="Ben.jsp">
		<div class="modal fade" id="Caregiver" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
  					    	<h3 class="modal-title">Add Benefits</h3>
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
     						</div>
			        		<div class="modal-body">
								<label>Patient Name</label>
									 <input type="text" id='P_ID' name="BPatientID"/>
										        		
										        		 <%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT Patient_ID,CONCAT(Surname,', ',FirstName,' ',MiddleName) FROM client_record ORDER BY Surname ASC;");					                        	
													    %>
													    	<select id='PatientName' onClick="showSelected(this)">
																<option></option>
																<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% } %>
															</select><br/>
																 <%
															    	}catch(Exception e){out.println("Wrong Entry! " + e);}
										        		 			
															    %>
								<label>Guarantor Name</label>
									<input type="text" id='G_ID' name="BGuarantorID"/>
										        		
										        		 <%
													    	try{
													    		Connection con=DbCon.getCon();
													    		Statement stmt = con.createStatement();
													    		ResultSet rs = stmt.executeQuery("SELECT guarantorID,CONCAT(Last,', ',First,' ',Middle) FROM guarantor ORDER BY Last ASC;");					                        	
													    %>
													    	<select id='PatientName' onClick="showSelectedG(this)">
																<option></option>
																<% while(rs.next()){ %>
																<option value="<%=rs.getInt(1) %>"><%= rs.getString(2)%></option>
																<% } %>
															</select><br/>
																 <%
															    	}catch(Exception e){out.println("Wrong Entry! " + e);}
										        		 			
															    %>
								<label>SSS Number:</label>
									<input type="text" name="SSSno">
								<label>Deductible</label>
									<input type="text" name="SSSDeductible">
								<label>PhilHealth Number</label>
									<input type="text" name="PhilHealthNo">
								<label>Deductible</label>
									<input type="text" name="PhilHealthDeductible">
								<label>GSIS</label>
									<input type="text" name="GSIS">
									<label>Deductible</label>
									<input type="text" name="GSISDeductible">
								<label>CityHall Senior citizen ID</label>
									<input type="text" name="SCSID">
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
</body>
<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('P_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	function showSelectedG(thisObj)
	{

	  document.getElementById('G_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}	
		
	</script>
</html>