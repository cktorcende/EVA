<!DOCTYPE html>
<html>
<head><title>EVA:Admission--Clinical Examination</title>
	<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" href="css/bootstrap.min.css">
	 	 <script src="css/jquery-3.3.1.min.js"></script>
	 	 <script src="css/bootstrap.min.js"></script>
		 <link rel='stylesheet' href='css/Records.css'>
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />
		<script src="js/modernizr.custom.js"></script>
</head>
<script>
	
	$(document).ready(function() {

	    $('tr').click(function() {
	        var href = $(this).find("a").attr("href");
	        if(href) {
	            window.location = href;
	            
	            
	        }
	    });
	   

	});
	</script>
<body>
	<div id="container" class="cont"></div>
	
		<div class="container">
			<ul id="gn-menu" class="gn-menu-main">
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller">
							<ul class="gn-menu">
								<li>
									<a class="gn-icon gn-icon-article" href="Records.jsp">Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='Allergy.jsp'>Allergy</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Disease.jsp'>Disease</a></li>
										<li><a class="gn-icon gn-icon-archive" href='GenInfo.jsp'>General Information</a></li>
										<li><a class="gn-icon gn-icon-archive" href='CliEx.jsp'>Clinical Examination</a></li>
										<li><a class="gn-icon gn-icon-archive" href='History.jsp'>View Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='AppPay.jsp'>Bed Assignment</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Insurance.jsp'>Patient Insurance</a></li>
									</ul>
								</li>
								<li>
									<a class="gn-icon gn-icon-article" href='RecordsNur.jsp'>Practitioner Records</a>
									<ul class="gn-submenu">
										<li><a class="gn-icon gn-icon-archive" href='RecordTel.jsp'>Cashier's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='RecordsChef.jsp'>Chef's Record</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Experience.jsp'>Experience</a></li>
										<li><a class="gn-icon gn-icon-archive" href='HistoryP.jsp'>Profile View</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Assigned.jsp'>Patients Assigned</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Reviews.jsp'>Reviews/Comments</a></li>
										<li><a class="gn-icon gn-icon-archive" href='Achievements.jsp'>Achievements</a></li>
										
									</ul>
								</li>
								
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<li><a href="#">OPTIONS</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/User/User.jsp">USER MANAGEMENT</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Admission/Admission.jsp">ADMISSION</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Billing/Bill.jsp">BILLING</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/Inventory/Inventory.jsp">INVENTORY</a></li>
						<li><a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp">BACK HOME</a></li>
			</ul>
	<div id="all">
	
				<div id="Search">
				<form>
				<a href="http://localhost:8080/EVA/EVA/Admin/EVA%20HTML.jsp"><img src="css/IMG/eva.png"></a>  
				   		<input id="myInput" type="text" placeholder="Search.." size=60> 
					<button id="S"type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Create New Resident</button>
				</form>	
					<form name="CliEx" action="cli.jsp">
						<%@page import="conn.DbCon,dao.CliExDAO,dbtb.dbtbp_examination,java.util.*, java.sql.*"%>
						<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
    					    	<h3 class="modal-title">Add Examination</h3>
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							
       						</div>
					        <div class="modal-body">
					    <label>Patient</label>
					   <input type="text" id='Pa_ID' name="Pa_ID"/>
					        		
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
						<label>Examination Type</label><br/><input type="text" name="ExaminationType"placeholder="what does the examination cover?"  size=60><br/>
						<label>Examination Name</label><br/><input type="text" name="ExaminationName"placeholder="Name of Examination" size=60><br/>
						<label>Examination Date</label><br/><input type="date" name="ExaminationDate"placeholder="Date Held " size=60><br/>
						<label>Examination Details</label><br/><textarea cols=50 id="C" name="ExaminationDetails" form="Allergy"placeholder="Add any additional findings"></textarea>
						<label>Examiner Name</label><br/><input type="text" name="ExaminerName" placeholder="where was it held?" size=60><br/>
						<label>Examination Place</label><br/><input type="text" name="ExaminationPlace" placeholder="where was it held?" size=60><br/>
						<label>Examination Result</label><br/><input type="text" name="ExaminationResult" placeholder="Any illness discovered?"><br/>
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
					<div id="Table">
						<%@page import="conn.DbCon,dao.CliExDAO,dbtb.dbtbp_examination,java.util.*"%>
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
					
					<% 
						List<dbtbp_examination> list=CliExDAO.getAllRecords();
			  			request.setAttribute("list",list);
			  			int count=0;
					%>
						<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th></th>
								<th>Patient</th>
								<th>Examination Date</th>
								<th>Examination Name</th>
								<th>Examination Details</th>
								<th>Examination Result</th>
								<th>Examiner Name</th>
							</tr>
						</thead>
						<tbody id="myTable">
							<c:forEach items="${list}" var="a">
							<tr>
								<td><a href="CliExEDIT.jsp?Examination_ID=${a.getExamination_ID()}">edit</a></td>
								<%
							    	try{
							    		Connection con=DbCon.getCon();
							    		Statement stmt = con.createStatement();
							    		ResultSet rs = stmt.executeQuery("SELECT client_record.Patient_ID,CONCAT(client_record.Surname,', ',client_record.FirstName,' ',client_record.MiddleName),p_examination.Pa_ID FROM eva.client_record INNER JOIN  eva.p_examination ON client_record.Patient_ID=p_examination.Pa_ID WHERE Pa_ID="+ list.get(count).getPa_ID()+" LIMIT 1");	
							    		
							    		 while(rs.next()){
							    %>
								<td><%= rs.getString(2)%></td>
								<%}count++;	
							    		 con.close();
								    	}catch(Exception e){out.println("Wrong Entry! " + e);}
			        		 	%>
								<td>${a.getExaminationDate()}</td>
								<td>${a.getExaminationName()}</td>
								<td>${a.getExaminationDetails()}</td>
								<td>${a.getExaminationResult()}</td>
								<td>${a.getExaminerName()}</td>
							</tr>
							</c:forEach>
						</tbody>
						</table>
					</div>			
			</div>
	</div>
	<script src="js/classie.js"></script>
		<script src="js/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
</body>
	<script>
	
	function showSelected(thisObj)
	{

	  document.getElementById('Pa_ID').value = thisObj.options[thisObj.selectedIndex].value;

	}
	
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