<%@ page import="java.sql.Date, dao.AllergyDAO,dbtb.dbtbp_allergy"%>


<% 
	dbtbp_allergy a = new dbtbp_allergy();
	String crud = request.getParameter("crud");
	int cid = Integer.parseInt(request.getParameter("P_ID"));
	AllergyDAO.String_setter(a,request.getParameter("Substance"),request.getParameter("Reaction"),request.getParameter("Category"),request.getParameter("Status"),request.getParameter("Severity"),request.getParameter("InformationSource"),request.getParameter("Comments"),Date.valueOf(request.getParameter("Onset")),cid);
try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(AllergyDAO.save(a) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Allergy_ID"));
	        
	        AllergyDAO.id_setter(a,pid);
	                
	    	if(AllergyDAO.update(a) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Allergy_ID"));
	       
	        
	        AllergyDAO.id_setter(a,pid);
	        
	    	if(AllergyDAO.delete(a) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>