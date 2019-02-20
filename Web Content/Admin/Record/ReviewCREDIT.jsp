<%@page import="conn.DbCon,dao.ch_ratingsDAO,dbtb.dbtbch_ratings,dbtb.dbtbcr_ratings,dbtb.dbtbcs_ratings,dbtb.dbtbd_ratings,dbtb.dbtbn_ratings, java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EVA:Review</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 	 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<%
		int id=Integer.parseInt(request.getParameter("cr_RatingsID"));
		dbtbcr_ratings c=ch_ratingsDAO.getRecordCR(id);
	%>
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
				<input type="hidden" name="ch_RatingsID" value="<%=id %>">
				<input type="hidden" name="CRR_CaregiverID" value="<%=c.getCRR_CaregiverID()%>">
					</br>
						<input type="date" name="Date"  size=60>
					</br>
						<label>Name</label>
					</br>
						<input type="text" name="Name" placeholder="enter your name" value="<%=c.getName()%>" size=60>
					</br>
						<label>Comment</label>
					</br>
						<textarea cols=50 id="C" name="Comment" form="Experience" value="<%=c.getComment()%>" placeholder="Add a comment "></textarea>
					</br>
						<label>Rating</label>
					</br>
						<select name="Rating">
							<option><%=c.getRating()%></option>
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
</body>
</html>