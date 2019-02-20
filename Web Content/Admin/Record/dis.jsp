<%@page import="dao.DiseaseDAO,dbtb.dbtbp_disease, java.sql.*"%>

<%
		dbtbp_disease  d = new dbtbp_disease();
		String crud = request.getParameter("crud");

		DiseaseDAO.String_Setter(d,request.getParameter("DiseaseType"),request.getParameter("DiseaseName"),request.getParameter("PrecautionsPracticed"),request.getParameter("Status"),request.getParameter("Severity"),request.getParameter("InformationSource"),Date.valueOf(request.getParameter("Onset")),request.getParameter("Comments"),Integer.parseInt(request.getParameter("Pat_ID")));
		
		try{
	    	
		    if ("Create New Record".equals(crud)){
		    	
		    	if(DiseaseDAO.save(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
		    else if ("Update Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Disease_ID"));
		        
		    	DiseaseDAO.id_setter(d,pid);
		                
		    	if(DiseaseDAO.update(d) == 1){
		    		out.print("Update Success");
		    	} 
		    	else{
		    		out.print("Update Fail");
		    	}	
		    }
		    else if ("Delete Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Disease_ID"));
		       
		        
		    	DiseaseDAO.id_setter(d,pid);
		        
		    	if(DiseaseDAO.delete(d) == 1){
		    		out.print("Delete Success");
		    	}
		    	else{
		    		out.print("Delete Fail");
		    	}
		    }
		    
		    }
		    catch(Exception e){out.print(e);}
%>