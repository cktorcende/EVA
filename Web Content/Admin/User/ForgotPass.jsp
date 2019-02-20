<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO"%>

<!DOCTYPE html>
<html>
<head><title>EVA:User Management</title>
	<link rel="stylesheet" href="css/User.css">
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
				<h2>Search For Employees Blocked Account</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
				<button>Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Stats">Create New Resident</button>
			</form>	
		</div>
			<div id="resTable">
		<table>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<% List<dbtbUser> l=UserCRUDDAO.getAllRecordsBlocked();
			  		request.setAttribute("l",l);
				%>
			<tr>
				<th></th>
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
		<div id="Search">
			<form>
				<h2>Search For Clients Blocked Account</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
				<button>Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Stats">Create New Resident</button>
			</form>	
		</div>
			<div id="resTable">
		<table>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
			<% List<dbtbUser> lc=UserCRUDDAO.getAllRecordsBlockedC();
			  		request.setAttribute("lc",lc);
				%>
			<tr>
				<th></th>
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
		<button onclick="location.href='EmployeeAcct.jsp' ">Employee Account</button>
		<button onclick="location.href='PatientAcct.jsp' ">Patient Account</button>
		<button onclick="location.href='PatientRAcct.jsp'">Patient Relative Account</button>
		<button onclick="location.href='CashierAcct.jsp' ">Cashier Account</button>
		<button onclick="location.href='ChefAcct.jsp' ">Chef Account</button>
		<button onclick="location.href='UserR.jsp' ">User Request</button>
		<button onclick="location.href='C:/Users/admin/eclipse-workspace/EVA/WebContent/Eva/Admin/Record/Records.jsp'">Go to Records</button>
		<button>Return Home</button>
	</div>
	</body>
	</html>