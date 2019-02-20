<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO" %>

<% 
	dbtbsupply_fee f = new dbtbsupply_fee();
	String crud = request.getParameter("crud");

	try{
		FeeMDAO.string_setterS(f,Integer.parseInt(request.getParameter("SPatientID")),Integer.parseInt(request.getParameter("BSupplyID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")));
		
		if ("Create New Record".equals(crud)){
	    	
	    	if(FeeMDAO.saveS(f) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("SFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	        
	    	FeeMDAO.id_setterS(f,pid,p);
	                
	    	if(FeeMDAO.updateS(f) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("SFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	        
	    	FeeMDAO.id_setterS(f,pid,p);
	        
	    	if(FeeMDAO.deleteS(f) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}

%>