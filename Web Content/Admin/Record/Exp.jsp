<%@page import="conn.DbCon,dao.ch_experienceDAO,dbtb.dbtbch_experience,dbtb.dbtbcs_experience, dbtb.dbtbcr_experience,dbtb.dbtbd_experience,dbtb.dbtbn_experience, java.sql.*" %>

<% 
	dbtbn_experience  n = new dbtbn_experience();
	dbtbch_experience  ch = new dbtbch_experience();
	dbtbcs_experience  cs = new dbtbcs_experience();
	dbtbcr_experience  cr = new dbtbcr_experience();
	dbtbd_experience  d = new dbtbd_experience();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	if ("Chef".equals(em)){
		try{
			ch_experienceDAO.String_setterCH(ch,Integer.parseInt(request.getParameter("ChefID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("ExperienceName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_experienceDAO.saveCH(ch) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_ExperienceID"));
	        
	    	ch_experienceDAO.id_setterCH(ch,pid);
	                
	    	if(ch_experienceDAO.updateCH(ch) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_ExperienceID"));
	       
	        
	    	ch_experienceDAO.id_setterCH(ch,pid);
	        
	    	if(ch_experienceDAO.deleteCH(ch) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
		}
		catch(Exception e){out.print(e);}
	}
	else if ("Cashier".equals(em)){
	try{
		ch_experienceDAO.String_setterCS(cs,Integer.parseInt(request.getParameter("CashierID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("ExperienceName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
		

	    if ("Create New Record".equals(crud)){
	    	
	    	if(ch_experienceDAO.saveCS(cs) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CS_ExperienceID"));
        
    	ch_experienceDAO.id_setterCS(cs,pid);
                
    	if(ch_experienceDAO.updateCS(cs) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CS_ExperienceID"));
       
        
    	ch_experienceDAO.id_setterCS(cs,pid);
        
    	if(ch_experienceDAO.deleteCS(cs) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
			
	}
		catch(Exception e){out.print(e);}
	}
	else if ("Doctor".equals(em)){
		try{
			ch_experienceDAO.String_setterD(d,Integer.parseInt(request.getParameter("DoctorID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("ExperienceName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_experienceDAO.saveD(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_ExperienceID"));
	        
	    	ch_experienceDAO.id_setterD(d,pid);
	                
	    	if(ch_experienceDAO.updateD(d) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_ExperienceID"));
	       
	        
	    	ch_experienceDAO.id_setterD(d,pid);
	        
	    	if(ch_experienceDAO.deleteD(d) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
		}		
		
			catch(Exception e){out.print(e);}
		}
	else if ("Nurse".equals(em)){
		try{
			ch_experienceDAO.String_setterN(n,Integer.parseInt(request.getParameter("NurseID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("ExperienceName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_experienceDAO.saveN(n) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_ExperienceID"));
	        
	    	ch_experienceDAO.id_setterN(n,pid);
	                
	    	if(ch_experienceDAO.updateN(n) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_ExperienceID"));
	       
	        
	    	ch_experienceDAO.id_setterN(n,pid);
	        
	    	if(ch_experienceDAO.deleteN(n) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
				
			}
			catch(Exception e){out.print(e);}
		}
	else if ("Caregiver".equals(em)){
		try{
			ch_experienceDAO.String_setterCR(cr,Integer.parseInt(request.getParameter("CaregiverID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("ExperienceName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_experienceDAO.saveCR(cr) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_ExperienceID"));
	        
	    	ch_experienceDAO.id_setterCR(cr,pid);
	                
	    	if(ch_experienceDAO.updateCR(cr) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_ExperienceID"));
	       
	        
	    	ch_experienceDAO.id_setterCR(cr,pid);
	        
	    	if(ch_experienceDAO.deleteCR(cr) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
				
			}
			catch(Exception e){out.print(e);}
		}
	else{
		out.print("None");
	}

%>
