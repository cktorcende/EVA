|<%@ page import="java.sql.Date, dao.client_recordDAO, dbtb.dbtbClient_record"%>

    <% 
   
  
    
	try{
		 dbtbClient_record d = new dbtbClient_record();
		    String crud = request.getParameter("crud"); 
		    Date dt;
		  
		    int locC= Integer.parseInt(request.getParameter("LocationCode"));
		    int recC = Integer.parseInt(request.getParameter("ResidenceCode"));
		    int refB = Integer.parseInt(request.getParameter("RefferedBy"));
		    	client_recordDAO.settterStringClient(d,Date.valueOf(request.getParameter("DateAdmitted")),request.getParameter("Sex"),request.getParameter("FirstName"),request.getParameter("MiddleName"),request.getParameter("Surname"),request.getParameter("BirthPlace"),Date.valueOf(request.getParameter("BirthDate")),request.getParameter("Address"),request.getParameter("City"),request.getParameter("Province"),request.getParameter("Country"),locC,recC,refB,request.getParameter("PatientStatus"),request.getParameter("Remarks"),request.getParameter("Marital"),request.getParameter("Language"),request.getParameter("PatientType"),request.getParameter("Email"));
		       
    	
    if ("Create New Record".equals(crud)){
    	
    	if(client_recordDAO.save(d) == 1){
    		out.print("Save Success");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Patient_ID"));
        int cid = Integer.parseInt(request.getParameter("Client_ID"));
   
        client_recordDAO.id_setter(d,pid,cid);
                
    	if(client_recordDAO.update(d) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Patient_ID"));
        int cid = Integer.parseInt(request.getParameter("Client_ID"));
        
        client_recordDAO.id_setter(d,pid,cid);
        
    	if(client_recordDAO.delete(d) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
    
    }
    catch(Exception e){out.print(e);}
    %>