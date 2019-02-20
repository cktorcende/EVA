<%@page import="conn.DbCon,dao.ch_ratingsDAO,dbtb.dbtbch_ratings,dbtb.dbtbcr_ratings,dbtb.dbtbcs_ratings,dbtb.dbtbd_ratings,dbtb.dbtbn_ratings, java.util.*" %>
<!DOCTYPE html>
<html>
<head><title>EVA:Nurse Record</title>
	<link rel="stylesheet" href="css/RecordsNur.css">
</head>
<body>
	<header>
		<nav>	
			<div class="logo">EVA</div>
				<div class="menu">
					<ul>
						<li><a href="#">OPTIONS</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\User\User.html">USER MANAGEMENT</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Admission\Admission.jsp">ADMISSION</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Billing/Billing.html">BILLING</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\Inventory\Inventory.html">INVENTORY</a></li>
						<li><a href="C:\Users\admin\eclipse-workspace\EVA\WebContent\Eva\Admin\EVA HTML.html">BACK HOME</a></li>
					</ul>					                                                  
				</div>				
			</nav>
	</header>
	<div id="container" class="cont"></div>
	
	<div id="all">
		
		<div id="Search">
			<form>
			<h2>Search for Chef Ratings</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
					<input type="search" name="AllergyName" size=30>
				<button>Search</button>
			</form>
			<h2>Add Review</h2>
				<form id="regForm" action="Rev.jsp">
					<div class="modal fade" id="myModal" role="dialog">
 						<div class="modal-dialog">
    					  <div class="modal-content">
    					    <div class="modal-header">
        						<button type="button" class="close" data-dismiss="modal">&times;</button>
        							<h3 class="modal-title">Add Rating</h3>
       						</div>
					        <div class="modal-body"> 
							<label>Date</label>
								</br>
									<input type="date" name="Date"  size=60>
								</br>
									<label>Name</label>
								</br>
									<input type="text" name="Name" placeholder="enter your name" size=60>
								</br>
									<label>Comment</label>
								</br>
									<textarea cols=50 id="C" name="Comment" form="Experience"placeholder="Add a comment "></textarea>
								</br>
									<label>Rating</label>
								</br>
									<select name="Rating">
										<option></option>
										<option>5</option>
										<option>4</option>
										<option>3</option>
										<option>2</option>
										<option>1</option>
									</select>
								</br>		
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
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbch_ratings> lch=ch_ratingsDAO.getAllRecordsCH();
			  		request.setAttribute("lch",lch);
				%>
			<table>
				<tr>
					<th></th>
					<th>Chef Name</th>
					<th>Date</th>
					<th>Name</th>
					<th>Comment</th>
					<th>Rating</th>
				</tr>
				<c:forEach items="${lch}" var="c">
				<tr>
					<td><a href="ReviewCHEDIT.jsp?ch_RatingsID=${c.getch_RatingsID()}">edit</a></td>
					<td></td>
					<td>${c.getDate()}</td>
					<td>${c.getName()}</td>
					<td>${c.getComment()}</td>
					<td>${c.getRating()}</td>
					
					
				</tr>
				</c:forEach>
			</table>
		</div>	
		<form>
			<h2>Search For Cashier Ratings</h2>
				<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
					<input type="search" name="AllergyName" size=30>
				<button>Search</button>
			</form>
		<div id="resTable">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbcs_ratings> lcs=ch_ratingsDAO.getAllRecordsCS();
			  		request.setAttribute("lcs",lcs);
				%>
			<table>
				<tr>
					<th></th>
					<th>Cashier Name</th>
					<th>Date</th>
					<th>Name</th>
					<th>Comment</th>
					<th>Rating</th>
				</tr>
				<c:forEach items="${lcs}" var="c">
				<tr>
					<td><a href="ReviewCSEDIT.jsp?cs_RatingsID=${c.getcs_RatingsID()}">edit</a></td>
					<td></td>
					<td>${c.getDate()}</td>
					<td>${c.getName()}</td>
					<td>${c.getComment()}</td>
					<td>${c.getRating()}</td>
					
					
				</tr>
				</c:forEach>
			</table>
		</div>		
		<form>
			<h2>Search For Caregiver Ratings</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
			<button>Search</button>
		</form>
		<div id="resTable">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbcr_ratings> lcr=ch_ratingsDAO.getAllRecordsCR();
			  		request.setAttribute("lcr",lcr);
				%>
			<table>
				<tr>
					<th></th>
					<th>Caregiver Name</th>
					<th>Date</th>
					<th>Name</th>
					<th>Comment</th>
					<th>Rating</th>
				</tr>
				<c:forEach items="${lcr}" var="c">
				<tr>
					<td><a href="ReviewCREDIT.jsp?cr_RatingsID=${c.getcr_RatingsID()}">edit</a></td>
					<td></td>
					<td>${c.getDate()}</td>
					<td>${c.getName()}</td>
					<td>${c.getComment()}</td>
					<td>${c.getRating()}</td>
					
					
				</tr>
				</c:forEach>
			</table>
		</div>
		<form>
			<h2>Search For Doctor Ratings</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
			<button>Search</button>
		</form>
		<div id="resTable">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbd_ratings> ld=ch_ratingsDAO.getAllRecordsD();
			  		request.setAttribute("ld",ld);
				%>
			<table>
				<tr>
					<th></th>
					<th>Doctor Name</th>
					<th>Date</th>
					<th>Name</th>
					<th>Comment</th>
					<th>Rating</th>
				</tr>
				<c:forEach items="${ld}" var="c">
				<tr>
					<td><a href="ReviewDEDIT.jsp?d_RatingsID=${c.getd_RatingsID()}">edit</a></td>
					<td></td>
					<td>${c.getDate()}</td>
					<td>${c.getName()}</td>
					<td>${c.getComment()}</td>
					<td>${c.getRating()}</td>
					
					
				</tr>
				</c:forEach>
			</table>
		</div>	
		<form>
			<h2>Search For Nurse Ratings</h2>
			<a href="file:///C:/Users/admin/eclipse-workspace/EVA/WebContent/EVA/Admin/EVA%20HTML.html"><img src="css/IMG/eva.png"></a>
				<input type="search" name="AllergyName" size=30>
			<button>Search</button>
		</form>
		<div id="resTable">
				<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
				<% List<dbtbn_ratings> ln=ch_ratingsDAO.getAllRecordsN();
			  		request.setAttribute("ln",ln);
				%>
			<table>
				<tr>
					<th></th>
					<th>Nurse Name</th>
					<th>Date</th>
					<th>Name</th>
					<th>Comment</th>
					<th>Rating</th>
				</tr>
				<c:forEach items="${ln}" var="c">
				<tr>
					<td><a href="ReviewNEDIT.jsp?n_RatingsID=${c.getn_RatingsID()}">edit</a></td>
					<td></td>
					<td>${c.getDate()}</td>
					<td>${c.getName()}</td>
					<td>${c.getComment()}</td>
					<td>${c.getRating()}</td>
					
					
				</tr>
				</c:forEach>
			</table>
		</div>			
	</div>
	
	<div id="buttons">
		<button id="his" onclick="location.href='Experience.html' ">Experience</button>
		<button id="dis" onclick="location.href='Achievements.html' ">Achievements</button>
		<button id="alle" onclick="location.href='View.html' ">Profile View</button>
		<button id="gen" onclick="location.href='Assigned.html' ">Patients Assigned</button>
		<button id="cli" onclick="location.href='Reviews.html' ">Reviews/Comments</button>
		<button id="inv" onclick="location.href='HistoryP.html' ">History</button>
		<button id="pri" onclick="location.href='RecordsNur.html' ">Practitioner Record</button>
		<button id="com" onclick="location.href='Insurance Plans.html' ">Cashier's Record</button>
		<button id="his" onclick="location.href='History.html' ">Chef's Record</button>
		<button id="pra" onclick="location.href='Records.html' " >Patient's Record</button>
		
	</div>
</body>
</html>
	