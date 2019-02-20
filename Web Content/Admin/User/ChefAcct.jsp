<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO,java.sql.*"%>

<!DOCTYPE html>
<html>
<head><title>EVA:User Management</title>
	<link rel="stylesheet" href="css/User.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.html">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.html">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Record\Records.html">RECORDS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	
	<div id="all">  
		<div id="Search">	
		<form>
			<h2>Search For Cashier Account</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
			<input type="search" name="AllergyName" size=30>
			<button>Search</button>
			<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#cashier">Create New Resident</button>
		</form>	
			<form action="CasA.jsp">
				<div class="modal fade" id="cashier" role="dialog">
					<div class="modal-dialog">
  					  <div class="modal-content">
  					    <div class="modal-header">
      						<button type="button" class="close" data-dismiss="modal">&times;</button>
      							<h3 class="modal-title">Add Cashier Account</h3>
     						</div>
			        		<div class="modal-body">
								<input type="text" id='P_ID' name="id"/>
					        		
					        		 <%
								    	try{
								    		Connection con=DbCon.getCon();
								    		Statement stmt = con.createStatement();
								    		ResultSet rs = stmt.executeQuery("SELECT chef_ID,CONCAT(LastName,', ',FirstName,' ',MiddleName) FROM chef_record  ORDER BY LastName ASC;");					                        	
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
								<label>Username</label><input type="text" name="Username" data-error="limit up to 30 characters only" size=60 value="<%=UserCRUDDAO.createChefUser() %>"><br/>
								<label>Password</label><input type="password" name="pswrd" data-error="limit up to 30 characters only" size=60><br/>
								<label>Repeat Password</label><input type="password" name="rpswrd" data-error="not match for password" size=60><br/>
								<label>NumOfAttempts</label><input type="text" name="NumOfAttempts" data-error="Digits(0-9) only"size=60><br/>
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
		<div id="resTable">
			<table>
			<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbUser> l=UserCRUDDAO.getAllRecordsCH();
				  		request.setAttribute("l",l);
					%>
				<tr>
					<th></th>
					<th>Cashier Name</th>
					<th>Username</th>
					<th>Password</th>
					<th>NumOfAttempts</th>
					<th>Status</th>
				</tr>
				<c:forEach items="${lf}" var="c">
					<tr>
						<td><a href="CashierAcctEDIT.jsp?idemployee_account=${c.getidemployee_account()}">edit</a></td>
						<td></td>
						<td>${c.getUsername()}</td>
						<td>${c.getPassword()}</td>
						<td>${c.getNumOfAttempts()}</td>
						<td>${c.getStatus()}</td>
					</tr>
					</c:forEach>
			</table>
		</div>	
		
	</div>
	<div id="buttons">
		<button onclick="location.href='EmployeeAcct.html' ">Employee Account</button>
		<button onclick="location.href='PatientAcct.html' ">Patient Account</button>
		<button onclick="location.href='PatientRAcct.html'">Patient Relative Account</button>
		<button onclick="location.href='CashierAcct.html' ">Cashier Account</button>
		<button onclick="location.href='UserR.html' ">User Request</button>
		<button onclick="location.href='C:/Users/admin/eclipse-workspace/EVA/WebContent/Eva/Admin/Record/Records.html'">Go to Records</button>
		<button>Discharged Patients</button>
		<button onclick="location.href='ForgotPass.html' ">Forgot Password</button>
		<button onclick="location.href='User.html' ">Return Home</button>
	</div>
</body>
</html>