<%@page import="java.util.*,conn.DbCon,dao.UserCRUDDAO,dbtb.dbtbUser,java.sql.*"%>

<% 
dbtbUser u= new  dbtbUser();
try{

	UserCRUDDAO.String_setterE(u,request.getParameter("Username"),request.getParameter("pswrd"),Integer.parseInt(request.getParameter("NumOfAttempts")),request.getParameter("status"));
	
	int pid= Integer.parseInt(request.getParameter("idemployee_account"));
	
	UserCRUDDAO.id_setterE(u,pid);
	        
	if(UserCRUDDAO.updateE(u) == 1){
		out.print("Update Success");
	} 
	else{
		out.print("Update Fail");
	}}
catch(Exception e){out.print(e);}

%>