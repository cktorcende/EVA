<%@page import="dao.InfoDAO,dbtb.dbtbInfo, java.sql.*"%>

<% 
	dbtbInfo  i= new dbtbInfo();
	String crud = request.getParameter("crud");

	InfoDAO.String_setter(i,request.getParameter("InformationType"),request.getParameter("InformationName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("Severity"),request.getParameter("InformationSource"),Date.valueOf(request.getParameter("Onset")), Integer.parseInt(request.getParameter("PGen_infoID")));

	try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(InfoDAO.save(i) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("infoID"));
	        
	    	InfoDAO.id_setter(i,pid);
	                
	    	if(InfoDAO.update(i) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("infoID"));
	       
	        
	    	InfoDAO.id_setter(i,pid);
	        
	    	if(InfoDAO.delete(i) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
	
%>