<%@page import="conn.DbCon,dao.ch_AchievementDAO,dbtb.dbtbch_achievements,dbtb.dbtbcr_achievements,dbtb.dbtbcs_achievements,dbtb.dbtbd_achievements,dbtb.dbtbn_achievements, java.sql.*" %>

<% 
	dbtbn_achievements  n = new dbtbn_achievements();
	dbtbch_achievements  ch = new dbtbch_achievements();
	dbtbcs_achievements  cs = new dbtbcs_achievements();
	dbtbcr_achievements  cr = new dbtbcr_achievements();
	dbtbd_achievements  d = new dbtbd_achievements();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	if ("Chef".equals(em)){
		try{
			ch_AchievementDAO.String_setterCH(ch,Integer.parseInt(request.getParameter("A_ChefID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("AchievementName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_AchievementDAO.saveCH(ch) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_AchievementID"));
	        
	    	ch_AchievementDAO.id_setterCH(ch,pid);
	                
	    	if(ch_AchievementDAO.updateCH(ch) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_AchievementID"));
	       
	        
	    	ch_AchievementDAO.id_setterCH(ch,pid);
	        
	    	if(ch_AchievementDAO.deleteCH(ch) == 1){
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
		ch_AchievementDAO.String_setterCS(cs,Integer.parseInt(request.getParameter("CSA_CashierID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("AchievementName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
		

	    if ("Create New Record".equals(crud)){
	    	
	    	if(ch_AchievementDAO.saveCS(cs) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CS_AchievementID"));
        
    	ch_AchievementDAO.id_setterCS(cs,pid);
                
    	if(ch_AchievementDAO.updateCS(cs) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CS_AchievementID"));
       
        
    	ch_AchievementDAO.id_setterCS(cs,pid);
        
    	if(ch_AchievementDAO.deleteCS(cs) == 1){
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
			ch_AchievementDAO.String_setterD(d,Integer.parseInt(request.getParameter("DA_DoctorID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("AchievementName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_AchievementDAO.saveD(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_AchievementID"));
	        
	    	ch_AchievementDAO.id_setterD(d,pid);
	                
	    	if(ch_AchievementDAO.updateD(d) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_AchievementID"));
	       
	        
	    	ch_AchievementDAO.id_setterD(d,pid);
	        
	    	if(ch_AchievementDAO.deleteD(d) == 1){
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
			ch_AchievementDAO.String_setterN(n,Integer.parseInt(request.getParameter("NA_NurseID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("AchievementName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_AchievementDAO.saveN(n) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_AchievementID"));
	        
	    	ch_AchievementDAO.id_setterN(n,pid);
	                
	    	if(ch_AchievementDAO.updateN(n) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_AchievementID"));
	       
	        
	    	ch_AchievementDAO.id_setterN(n,pid);
	        
	    	if(ch_AchievementDAO.deleteN(n) == 1){
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
			ch_AchievementDAO.String_setterCR(cr,Integer.parseInt(request.getParameter("CRA_CaregiverID")),Date.valueOf(request.getParameter("DateStarted")),request.getParameter("AchievementName"),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("CommendableActs"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_AchievementDAO.saveCR(cr) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_AchievementID"));
	        
	    	ch_AchievementDAO.id_setterCR(cr,pid);
	                
	    	if(ch_AchievementDAO.updateCR(cr) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_AchievementID"));
	       
	        
	    	ch_AchievementDAO.id_setterCR(cr,pid);
	        
	    	if(ch_AchievementDAO.deleteCR(cr) == 1){
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
