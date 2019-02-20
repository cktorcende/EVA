<%@page import="conn.DbCon,dao.CashierRecordsDAO,dbtb.dbtbcashier_record, java.sql.*"%>

  <% 
   
  
    
	try{
		dbtbcashier_record c = new dbtbcashier_record();
		    String crud = request.getParameter("crud"); 
		    Date dt;
		 
		    CashierRecordsDAO.string_setter(c,request.getParameter("PlaceOfBirth"),request.getParameter("LastName"),request.getParameter("FirstName"),request.getParameter("MiddleName"),request.getParameter("Address"),request.getParameter("City"),request.getParameter("State"),request.getParameter("Country"),request.getParameter("Mobile"),request.getParameter("Email"),request.getParameter("Designation"),request.getParameter("Specialization"),request.getParameter("RegistrationNo"),request.getParameter("RegistrationCode"),request.getParameter("HospitalAffiliation"));
		    CashierRecordsDAO.int_setter(c,Integer.parseInt(request.getParameter("Age")),Integer.parseInt(request.getParameter("PinCode")),Integer.parseInt(request.getParameter("Phone")),Date.valueOf(request.getParameter("DateBirth")),Date.valueOf(request.getParameter("JoiningDate")),Date.valueOf(request.getParameter("RegistrationDate")));
		    
		    
    if ("Create New Record".equals(crud)){
    	
    	if(CashierRecordsDAO.save(c) == 1){
    		out.print("Save Success");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Cashier_ID"));
        int cid = Integer.parseInt(request.getParameter("employeeCS_ID"));
   
        CashierRecordsDAO.id_setter(c,pid,cid);
                
    	if(CashierRecordsDAO.update(c) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Cashier_ID"));
        int cid = Integer.parseInt(request.getParameter("employeeCS_ID"));
        
        CashierRecordsDAO.id_setter(c,pid,cid);
        
    	if(CashierRecordsDAO.delete(c) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
    
    }
    catch(Exception e){out.print(e);}
    %>