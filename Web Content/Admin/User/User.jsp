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
	
	<div id="buttons">
		<button onclick="location.href='EmployeeAcct.html' ">Employee Account</button>
		<button onclick="location.href='PatientAcct.html' ">Patient Account</button>
		<button onclick="location.href='PatientRAcct.html'">Patient Relative Account</button>
		<button onclick="location.href='CashierAcct.html' ">Cashier Account</button>
		<button onclick="location.href='ChefAcct.html' ">Chef Account</button>
		<button onclick="location.href='UserR.html' ">User Request</button>
		<button onclick="location.href='C:/Users/admin/eclipse-workspace/EVA/WebContent/Eva/Admin/Record/Records.html'">Go to Records</button>
		<button>Discharged Patients</button>
		<button onclick="location.href='ForgotPass.html' ">Forgot Password</button>
	</div>
	
	<div id="all">
		
		<div id="Search">
			<form>
				<h2>Search For Cashier Account</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
				<button>Search</button>
				<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#Cashier">Create New Resident</button>
			</form>	
		</div>
		
	<div id="resTable">
		<table>
			<tr>
				<th>ID</th>
				<th>Surname</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>City</th>
				<th>Year Registered</th>
				<th>Username</th>
				<th>Password</th>
				<th>Active</th>
				
			</tr>
		</table>
	</div>
			
	</div>
	</div>
</body>
</html>