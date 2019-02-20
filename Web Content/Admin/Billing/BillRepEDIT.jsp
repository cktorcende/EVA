<!DOCTYPE html>
<html>
<head>
	<title>EVA: BILL REPORT</title>
	<link rel="stylesheet" href="css/Billing.css">
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
		<button onclick="location.href='FeeSchedule.jsp'">Fee Schedule</button>
		<button onclick="location.href='MedicineBillInfo.jsp'">Medicine Bill</button>
		<button onclick="location.href='FoodBillInfo.jsp'">Food Bill</button>
		<button onclick="location.href='BillReport.jsp'">Billing Report</button>
		<button onclick="location.href='PatientBill.jsp'">Patient bill</button>
		<button onclick="location.href='InsuranceAppInfo.jsp'">Application of Insurance</button>
		<button onclick="location.href='BenefitsAppInfo.jsp'">Application of Benefits</button>
		<button onclick="location.href='MembershipInfo.jsp'">Application of Membership</button>
	</div>
	
	<div id="all">
		<form id="ch2"><input type="checkbox" ><label>Search</label></form>
		<form>
			<input type="radio" name="Search" value="Username">
			<label> By Date</label>     
			<input type="text" name="SearchUN">
		    <input type="radio" name="Search" value="Medicine">
		    <label>By Acct. Date </label>   
		    <input type="text" name="Search">  
		    <input type="radio" name="Search" value="ID">
		    <label>By Collector</label>        
		    <input type="text" name="Search"> <br/>
		    <input type="radio" name="Search" value="City">
		    <label>By Ref#</label>     
		    <input type="text" name="SearchBC"> 
		    <input type="radio" name="Search" value="Doctor">
		    <label>By Payor</label>
		    <input type="text" name="Search"> 
		    <input type="radio" name="Search" value="Disease">
		    <label>By Method of Payment</label>    
		    <input type="text" name="SearchBD"> <br/>
		    <input type="radio" name="Search" value="Diagnosis">
		    <label>By Insurance ID</label>  
		    <input type="text" name="SearchD"> <br/>
			<div id="resTable">
		<table>
			<tr><th>ID</th>
				<th>Last Name</th>
				<th>First Name</th>
				<th>Middle Name</th>
				<th>Name of Doctor</th>
				<th>Name of Nurse</th>
				<th>Date Started</th>
				<th>Still Admitted</th>
				<th>Insurance ID</th>
				<th>Philhealth ID</th>
				<th>Is a member</th>
				</tr>
		</table>
	</div>
		<div id="lastBut">
			<button>Search</button>
			<button>Update</button>
			<button>Delete</button>
			<button>View</button>
		</div>
		</form> 
		
	</div>
</body>
</html>