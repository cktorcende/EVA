<%@page import="conn.DbCon,dao.ChefRecordDAO,dbtb.dbtbchef_record,java.sql.*"%>

<% 
dbtbchef_record  c = new dbtbchef_record();
String crud = request.getParameter("crud");
	ChefRecordDAO.String_setter(c,request.getParameter("LastName"),request.getParameter("FirstName"),request.getParameter("MiddleName"),Date.valueOf(request.getParameter("DateBirth")),request.getParameter("PlaceOfBirth"),Integer.parseInt(request.getParameter("Age")),request.getParameter("Address"),request.getParameter("City"),Integer.parseInt(request.getParameter("PinCode")),request.getParameter("State"),request.getParameter("Country"),Integer.parseInt(request.getParameter("Phone")),request.getParameter("Mobile"),request.getParameter("Email"),request.getParameter("Designation"),Date.valueOf(request.getParameter("JoiningDate")),request.getParameter("Specialization"),request.getParameter("RegistrationNo"),request.getParameter("RegistrationCode"),Date.valueOf(request.getParameter("RegistrationDate")),request.getParameter("HospitalAffiliation"));


	
	try{
		

		
	    if ("Create New Record".equals(crud)){
	    	
	    	if(ChefRecordDAO.save(c) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("chef_ID"));
	    	int cid= Integer.parseInt(request.getParameter("employeeC_id"));
	        
	    	ChefRecordDAO.id_setter(c,pid,cid);
	                
	    	if(ChefRecordDAO.update(c) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("chef_ID"));
	    	int cid= Integer.parseInt(request.getParameter("employeeC_id"));
	        
	    	ChefRecordDAO.id_setter(c,pid,cid);
	        
	    	if(ChefRecordDAO.delete(c) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>