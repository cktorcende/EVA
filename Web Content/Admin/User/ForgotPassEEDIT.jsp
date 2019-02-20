<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		int id=Integer.parseInt(request.getParameter("idemployee_account"));
		dbtbUser c=UserCRUDDAO.getRecordE(id);
	
	%>
	<form>
		<div class="modal fade" id="Cashier" role="dialog">
			<div class="modal-dialog">
			  <div class="modal-content">
			    <div class="modal-header">
  						<button type="button" class="close" data-dismiss="modal">&times;</button>
  							<h3 class="modal-title">Add Cashier Account</h3>
 						</div>
	        		<div class="modal-body">
	        			<label></label><input type="text" name="Account Type" value="<%= %>">
	        			<label></label><input type="text" name="Username" value="<%=c.getUsername()%>" data-error="limit up to 30 characters only" required>
	        			<label></label><input type="text" name="Password" value="<%=c.getpswrd()%>" data-error="limit up to 30 characters only" required>
	        			<label></label><input type="text" name="NumOfAttempts" value="<%=c.getNumOfAttempts()%>" data-error="limit up to 30 characters only" required>
	        			<label></label><input type="text" name="Status" value="<%=c.getstatus()%>" data-error="change to active/inactive/blocked only" required>
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
		<jsp:include page="ForgotPass.jsp"></jsp:include>
</body>
</html>