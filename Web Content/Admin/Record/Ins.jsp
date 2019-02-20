<%@page import="conn.DbCon,dao.P_InsuranceDAO,dbtb.dbtbp_insurance, java.sql.*"%>

<% 
	dbtbp_insurance  i = new dbtbp_insurance();
	String crud = request.getParameter("crud");

	P_InsuranceDAO.String_setter(i,Integer.parseInt(request.getParameter("Subscriber_ID")),Integer.parseInt(request.getParameter("Insurance")),request.getParameter("Plan"),Date.valueOf(request.getParameter("From")), Date.valueOf(request.getParameter("To")),request.getParameter("Coverage"),Integer.parseInt(request.getParameter("SubscriberNo")),request.getParameter("Relationship"),Integer.parseInt(request.getParameter("GroupNo")),request.getParameter("Copay"),request.getParameter("Deductible"),request.getParameter("CoInsurance"),request.getParameter("Address"),request.getParameter("City"),request.getParameter("State"),Integer.parseInt(request.getParameter("Zip")),request.getParameter("Country"));

	try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(P_InsuranceDAO.save(i) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("insurance_id"));
	        
	    	P_InsuranceDAO.id_setter(i,pid);
	                
	    	if(P_InsuranceDAO.update(i) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("insurance_id"));
	       
	        
	    	P_InsuranceDAO.id_setter(i,pid);
	        
	    	if(P_InsuranceDAO.delete(i) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>