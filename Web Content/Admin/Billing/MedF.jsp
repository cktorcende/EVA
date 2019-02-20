<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbdrug_fee ,dbtb.dbtbfood_fee,dbtb.dbtbsupply_fee, dao.FeeMDAO" %>

<%
	dbtbfood_fee f = new dbtbfood_fee();
	String crud = request.getParameter("crud");

	try{
		FeeMDAO.string_setterF(f,Integer.parseInt(request.getParameter("FPatientID")),Integer.parseInt(request.getParameter("BFoodID")), Double.parseDouble(request.getParameter("ratePerMonth")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")));
		
		if ("Create New Record".equals(crud)){
	    	
	    	if(FeeMDAO.saveF(f) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	        
	    	FeeMDAO.id_setterF(f,pid,p);
	                
	    	if(FeeMDAO.updateF(f) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FFeeID"));
	    	int p= Integer.parseInt(request.getParameter("AppPayID"));
	        
	        
	    	FeeMDAO.id_setterF(f,pid, p);
	        
	    	if(FeeMDAO.deleteF(f) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>