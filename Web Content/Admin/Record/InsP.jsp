<%@page import="dao.InsuranceDAO,dbtb.dbtbInsurance,java.util.*, java.sql.*"%>

<% 
	dbtbInsurance  i = new dbtbInsurance();
	String crud = request.getParameter("crud");
	
	InsuranceDAO.String_setter(i,request.getParameter("InsurancePlanCode"),Integer.parseInt(request.getParameter("RecordNO")),request.getParameter("Name"),request.getParameter("HelpDeskNO"),request.getParameter("AddressLine1"),request.getParameter("AddressLine2"),request.getParameter("PlanBinNO"),request.getParameter("City"),Integer.parseInt(request.getParameter("ProcessorControlNO")),request.getParameter("State"),Integer.parseInt(request.getParameter("ZipNo")),request.getParameter("SoftwareVendorID"),request.getParameter("AlternatePhone"),request.getParameter("Fax"),request.getParameter("Remarks"),request.getParameter("Email"),request.getParameter("PharmacyIdQualifier"),Integer.parseInt(request.getParameter("PharmacyID")),request.getParameter("CashPlan"),request.getParameter("NCPDPVersion"));

	try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(InsuranceDAO.save(i) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("insurance_id"));
	        
	    	InsuranceDAO.id_setter(i,pid);
	                
	    	if(InsuranceDAO.update(i) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("insurance_id"));
	       
	        
	    	InsuranceDAO.id_setter(i,pid);
	        
	    	if(InsuranceDAO.delete(i) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>