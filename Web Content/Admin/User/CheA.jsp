<%@page import="java.util.*,conn.DbCon,dbtb.dbtbUser,dao.UserCRUDDAO,java.sql.*"%>

<% 
	dbtbUser p = new dbtbUser();
	String crud = request.getParameter("crud");
	UserCRUDDAO.String_setterE(p,request.getParameter("Username"),request.getParameter("pswrd"),Integer.parseInt(request.getParameter("NumOfAttempts")),request.getParameter("status"));

	try{
		
	    if ("Create New Record".equals(crud)){
	    	
	    	if(UserCRUDDAO.saveE(p) == 1){
		    	UserCRUDDAO.updateChefID(Integer.parseInt(request.getParameter("id")));
		    	out.print("Save Success");}
	    		
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("idemployee_account"));
	    
	        
	        UserCRUDDAO.id_setterE(p,pid);
	                
	    	if(UserCRUDDAO.updateE(p) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("idemployee_account"));
	
	        UserCRUDDAO.id_setterE(p,pid);
	        
	    	if(UserCRUDDAO.deleteE(p) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>