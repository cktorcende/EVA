<%@ page import="javax.swing.*, dao.UserDAO"%>
<jsp:useBean id="u" class="dbtb.dbtbUser"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
 
try{
	if (UserDAO.filterUser(u).equals("Admin")){
			if(UserDAO.submitAdmin(u)){
				response.sendRedirect("Admin/EVA%20HTML.jsp?Username=Admin");}
			else{
				response.sendRedirect("User_fail.jsp");}
	}
	else if (UserDAO.filterUser(u).equals("employee")){
		if(UserDAO.submit(u)){response.sendRedirect("Practitioner/EVAPrac.html?idemployee_account="+ u.getidemployee_account());}
		else{
			UserDAO.updateAttempt(u);
			response.sendRedirect("User_fail.jsp");}
	}
	else if (UserDAO.filterUser(u).equals("patient")){
		if(UserDAO.submit(u)){response.sendRedirect("Patient/EVApatient.html?");}
		else{
			UserDAO.updateAttempt(u);
			UserDAO.getAttempt(u);
			if(u.getNumOfAttempts() < 4){
				response.sendRedirect("User_fail.jsp");}
			else{
				
				response.sendRedirect("adminHelp.jsp");
			}}
	}
	else{response.sendRedirect("Username_fail.jsp");}
	
	}
catch(Exception e){response.sendRedirect("Exception.jsp");}
%>