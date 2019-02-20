<%@page import="conn.DbCon,dao.EmployeeRecordDAO,dbtb.dbtbNurse_record,dbtb.dbtbDoctor_record,dbtb.dbtbcaregiver_record, java.sql.*"%>

<% 
	dbtbNurse_record  n = new dbtbNurse_record();
	dbtbcaregiver_record  c = new dbtbcaregiver_record();
	dbtbDoctor_record  d = new dbtbDoctor_record();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	
	if ("Doctor".equals(em)){
		try{
			    	
			EmployeeRecordDAO.string_setter(d,request.getParameter("PlaceOfBirth"),request.getParameter("LastName"),request.getParameter("FirstName"),request.getParameter("MiddleName"),request.getParameter("Address"),request.getParameter("City"),request.getParameter("State"),request.getParameter("Country"),request.getParameter("Mobile"),request.getParameter("Email"),request.getParameter("Designation"),request.getParameter("Specialization"),request.getParameter("RegistrationNo"),request.getParameter("RegistrationCode"),request.getParameter("HospitalAffiliation"));
			
				try{
					EmployeeRecordDAO.int_setter(d,Integer.parseInt(request.getParameter("Age")),Integer.parseInt(request.getParameter("PinCode")),Integer.parseInt(request.getParameter("Phone")),Date.valueOf(request.getParameter("DateBirth")),Date.valueOf(request.getParameter("JoiningDate")),Date.valueOf(request.getParameter("RegistrationDate")));
				}
				catch (Exception e){
					out.print("incorrect Credentials try again");
				}
		    if ("Create New Record".equals(crud)){
		    	
		    	if(EmployeeRecordDAO.saveD(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
		    else if ("Update Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Doctor_ID"));
		        
		    	EmployeeRecordDAO.id_setter(d,pid);
		                
		    	if(EmployeeRecordDAO.updateD(d) == 1){
		    		out.print("Update Success");
		    	} 
		    	else{
		    		
		    		out.print("Update Fail");
		    	}	
		    }
		    else if ("Delete Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Doctor_ID"));
		       
		        
		    	EmployeeRecordDAO.id_setter(d,pid);
		        
		    	if(EmployeeRecordDAO.deleteD(d) == 1){
		    		out.print("Delete Success");
		    	}
		    	else{
		    		out.print("Delete Fail");
		    	}
		    }
		    
		    }
		    catch(Exception e){out.print(e);}
		
	}
	else if(em.equals("Nurse")){
		try{
	    	
		    if ("Create New Record".equals(crud)){
		    	
		    	if(EmployeeRecordDAO.saveC(c) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
		    else if ("Update Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Nurse_ID"));
		        
		    	EmployeeRecordDAO.id_setterC(c,pid);
		                
		    	if(EmployeeRecordDAO.updateN(n) == 1){
		    		out.print("Update Success");
		    	} 
		    	else{
		    		
		    		out.print("Update Fail");
		    	}	
		    }
		    else if ("Delete Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Nurse_ID"));
		       
		        
		    	EmployeeRecordDAO.id_setterC(c,pid);
		        
		    	if(EmployeeRecordDAO.deleteC(c) == 1){
		    		out.print("Delete Success");
		    	}
		    	else{
		    		out.print("Delete Fail");
		    	}
		    }
		    
		    }
		    catch(Exception e){out.print(e);}
		
		
	}
	else if(em.equals("Caregiver")){
		try{
	    	
		    if ("Create New Record".equals(crud)){
		    	
		    	if(EmployeeRecordDAO.saveN(n) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
		    else if ("Update Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Caregiver_ID"));
		        
		    	EmployeeRecordDAO.id_setterN(n,pid);
		                
		    	if(EmployeeRecordDAO.updateN(n) == 1){
		    		out.print("Update Success");
		    	} 
		    	else{
		    		
		    		out.print("Update Fail");
		    	}	
		    }
		    else if ("Delete Record".equals(crud)){
		    	int pid= Integer.parseInt(request.getParameter("Caregiver_ID"));
		       
		        
		    	EmployeeRecordDAO.id_setterN(n,pid);
		        
		    	if(EmployeeRecordDAO.deleteN(n) == 1){
		    		out.print("Delete Success");
		    	}
		    	else{
		    		out.print("Delete Fail");
		    	}
		    }
		    
		    }
		    catch(Exception e){out.print(e);}
		
		
	}

%>