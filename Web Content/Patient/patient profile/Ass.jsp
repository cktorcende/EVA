<%@page import="conn.DbCon,dao.ch_assignedDAO,dbtb.dbtbch_assigned,dbtb.dbtbcr_assigned,dbtb.dbtbd_assigned,dbtb.dbtbn_assigned,java.sql.*"%>

<% 
	dbtbn_assigned  n = new dbtbn_assigned();
	dbtbch_assigned  ch = new dbtbch_assigned();
	dbtbcr_assigned  cr = new dbtbcr_assigned();
	dbtbd_assigned  d = new dbtbd_assigned();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	if ("Chef".equals(em)){
		try{
			ch_assignedDAO.String_setterCH(ch,Integer.parseInt(request.getParameter("CHAS_ChefID")),Date.valueOf(request.getParameter("DateStarted")),Integer.parseInt(request.getParameter("AssignedPatient")),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("AssignedTime"));


		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_assignedDAO.saveCH(ch) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_AssignedID"));
	        
	    	ch_assignedDAO.id_setterCH(ch,pid);
	                
	    	if(ch_assignedDAO.updateCH(ch) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CH_AssignedID"));
	       
	        
	    	ch_assignedDAO.id_setterCH(ch,pid);
	        
	    	if(ch_assignedDAO.deleteCH(ch) == 1){
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
			ch_assignedDAO.String_setterD(d,Integer.parseInt(request.getParameter("DAS_DoctorID")),Date.valueOf(request.getParameter("DateStarted")),Integer.parseInt(request.getParameter("AssignedPatient")),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("AssignedTime"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_assignedDAO.saveD(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_AssignedID"));
	        
	    	ch_assignedDAO.id_setterD(d,pid);
	                
	    	if(ch_assignedDAO.updateD(d) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("D_AssignedID"));
	       
	        
	    	ch_assignedDAO.id_setterD(d,pid);
	        
	    	if(ch_assignedDAO.deleteD(d) == 1){
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
			
			ch_assignedDAO.String_setterN(n,Integer.parseInt(request.getParameter("NAS_NurseID")),Date.valueOf(request.getParameter("DateStarted")),Integer.parseInt(request.getParameter("AssignedPatient")),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("AssignedTime"));
			
		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_assignedDAO.saveN(n) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_AssignedID"));
	        
	    	ch_assignedDAO.id_setterN(n,pid);
	                
	    	if(ch_assignedDAO.updateN(n) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("N_AssignedID"));
	       
	        
	    	ch_assignedDAO.id_setterN(n,pid);
	        
	    	if(ch_assignedDAO.deleteN(n) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
				
			}
			catch(Exception e){out.print(e);
			}
		}
	else if ("Caregiver".equals(em)){
		try{
			ch_assignedDAO.String_setterCR(cr,Integer.parseInt(request.getParameter("CRAS_CaregiverID")),Date.valueOf(request.getParameter("DateStarted")),Integer.parseInt(request.getParameter("AssignedPatient")),request.getParameter("Description"),request.getParameter("Status"),request.getParameter("AssignedTime"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_assignedDAO.saveCR(cr) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_AchievementID"));
	        
	    	ch_assignedDAO.id_setterCR(cr,pid);
	                
	    	if(ch_assignedDAO.updateCR(cr) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("CR_AchievementID"));
	       
	        
	    	ch_assignedDAO.id_setterCR(cr,pid);
	        
	    	if(ch_assignedDAO.deleteCR(cr) == 1){
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