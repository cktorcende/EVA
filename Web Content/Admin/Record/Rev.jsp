<%@page import="conn.DbCon,dao.ch_ratingsDAO,dbtb.dbtbch_ratings,dbtb.dbtbcr_ratings,dbtb.dbtbcs_ratings,dbtb.dbtbd_ratings,dbtb.dbtbn_ratings, java.sql.*" %>

<% 
	dbtbn_ratings  n = new dbtbn_ratings();
	dbtbch_ratings  ch = new dbtbch_ratings();
	dbtbcr_ratings  cr = new dbtbcr_ratings();
	dbtbd_ratings  d = new dbtbd_ratings();
	dbtbcs_ratings cs = new dbtbcs_ratings();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	if ("Chef".equals(em)){
		try{
			ch_ratingsDAO.String_setterCH(ch,Integer.parseInt(request.getParameter("CHR_ChefID")),Date.valueOf(request.getParameter("Date")),request.getParameter("Name"),request.getParameter("Comment"),request.getParameter("Rating"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_ratingsDAO.saveCH(ch) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	
	    	int pid= Integer.parseInt(request.getParameter("ch_RatingsID"));
	        
	    	ch_ratingsDAO.id_setterCH(ch,pid);
	                
	    	if(ch_ratingsDAO.updateCH(ch) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("ch_RatingsID"));
	       
	        
	    	ch_ratingsDAO.id_setterCH(ch,pid);
	        
	    	if(ch_ratingsDAO.deleteCH(ch) == 1){
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
			ch_ratingsDAO.String_setterD(d,Integer.parseInt(request.getParameter("DR_DoctorID")),Date.valueOf(request.getParameter("Date")),request.getParameter("Name"),request.getParameter("Comment"),request.getParameter("Rating"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_ratingsDAO.saveD(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("d_RatingsID"));
	        
	    	ch_ratingsDAO.id_setterD(d,pid);
	                
	    	if(ch_ratingsDAO.updateD(d) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("d_RatingsID"));
	       
	        
	    	ch_ratingsDAO.id_setterD(d,pid);
	        
	    	if(ch_ratingsDAO.deleteD(d) == 1){
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
			ch_ratingsDAO.String_setterN(n,Integer.parseInt(request.getParameter("NR_NurseID")),Date.valueOf(request.getParameter("Date")),request.getParameter("Name"),request.getParameter("Comment"),request.getParameter("Rating"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_ratingsDAO.saveN(n) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("n_RatingsID"));
	        
	    	ch_ratingsDAO.id_setterN(n,pid);
	                
	    	if(ch_ratingsDAO.updateN(n) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("n_RatingsID"));
	       
	        
	    	ch_ratingsDAO.id_setterN(n,pid);
	        
	    	
	    	if(ch_ratingsDAO.deleteN(n) == 1){
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
			ch_ratingsDAO.String_setterCR(cr,Integer.parseInt(request.getParameter("NR_NurseID")),Date.valueOf(request.getParameter("Date")),request.getParameter("Name"),request.getParameter("Comment"),request.getParameter("Rating"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_ratingsDAO.saveCR(cr) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("cr_RatingsID"));
	        
	    	ch_ratingsDAO.id_setterCR(cr,pid);
	                
	    	if(ch_ratingsDAO.updateCR(cr) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("cr_RatingsID"));
	       
	        
	    	ch_ratingsDAO.id_setterCR(cr,pid);
	        
	    	if(ch_ratingsDAO.deleteCR(cr) == 1){
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
			ch_ratingsDAO.String_setterCS(cs,Integer.parseInt(request.getParameter("CSR_CashierID")),Date.valueOf(request.getParameter("Date")),request.getParameter("Name"),request.getParameter("Comment"),request.getParameter("Rating"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(ch_ratingsDAO.saveCS(cs) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("cs_RatingsID"));
	        
	    	ch_ratingsDAO.id_setterCS(cs,pid);
	                
	    	if(ch_ratingsDAO.updateCS(cs) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}
	    	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("cs_RatingsID"));
	       
	    	ch_ratingsDAO.id_setterCR(cr,pid);
	        
	    	if(ch_ratingsDAO.deleteCR(cr) == 1){
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