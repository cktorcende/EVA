<%@ page import="java.sql.*, dao.CliExDAO,dbtb.dbtbp_examination"%>

<% 
	dbtbp_examination  p = new dbtbp_examination();
	String crud = request.getParameter("crud");
	
	CliExDAO.String_setter(p,request.getParameter("ExaminationType"),request.getParameter("ExaminationName"),request.getParameter("ExaminationDetails"),request.getParameter("ExaminerName"),request.getParameter("ExaminationPlace"),request.getParameter("ExaminationResult"),Date.valueOf(request.getParameter("ExaminationDate")),Integer.parseInt(request.getParameter("Pa_ID")));

try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(CliExDAO.save(p) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Examination_ID"));
	        
	    	CliExDAO.id_setter(p,pid);
	                
	    	if(CliExDAO.update(p) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Allergy_ID"));
	       
	        
	    	CliExDAO.id_setter(p,pid);
	        
	    	if(CliExDAO.delete(p) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}


%>

