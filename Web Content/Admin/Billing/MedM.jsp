<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO" %>

<% 
	dbtbdrug_fee f = new dbtbdrug_fee();
	String crud = request.getParameter("crud");
	
	try{
		FeeMDAO.string_setterM(f,Integer.parseInt(request.getParameter("DRPatientID")),Integer.parseInt(request.getParameter("BDrugID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")));
		
		if ("Create New Record".equals(crud)){
	    	
	    	if(FeeMDAO.saveM(f) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("DRFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	    	
	    	FeeMDAO.id_setterM(f,pid,p);
	                
	    	if(FeeMDAO.updateM(f) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("DRFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	        
	    	FeeMDAO.id_setterM(f,pid, p);
	        
	    	if(FeeMDAO.deleteM(f) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}	
	
%>