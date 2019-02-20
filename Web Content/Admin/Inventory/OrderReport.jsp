<!DOCTYPE html>
<html>
<head><title>EVA:Medicine Inventory</title>
	<link rel="stylesheet" href="Inventory.css">
	</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.html">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.html">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Record\Records.html">RECORDS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container"></div>
	<div id="buttons">
		<button onclick="location.href='Addel.html' ">Add/Delete Medicine</button>
		<button onclick="location.href='OrderReport.html' ">Purchase Order Report</button>
		<button onclick="location.href='Vendor.html' ">Add Supplier</button>
		<button>Inventory Tracker</button>
		<button>Inventory Report</button>
		<button>Transfer Medicine to Another Pharmacy</button>
		<button>Order to Supplier</button>
		<button>Return Order</button>
		<button>Inventory Percentage Supply</button>
	</div>
	<div id="all">
		<div id="ResTable">
			<table>
				<tr>
					<th></th>
					<th>Time</th>
					<th>Drug</th>
					<th>Number of Orders</th>
					<th>Number of Request</th>
				</tr>
				<tr>
				</tr></tr>
			</table>
		</div>
		<div id="ResTable">
			<table>
				<tr>
					<th></th>
					<th>Time</th>
					<th>Supply</th>
					<th>Number of Orders</th>
					<th>Number of Request</th>
				</tr>
			</table>
		</div>
		<div id="ResTable">
		<table>
			<tr>
				<th></th>
				<th>Time</th>
				<th>Food</th>
				<th>Number of Orders</th>
				<th>Number of Request</th>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>