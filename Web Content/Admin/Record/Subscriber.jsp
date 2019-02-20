<%@page import="conn.DbCon,dao.Subcriber_recordDAO,dbtb.dbtbsubscriber_record, java.sql.*" %>

<% 
	dbtbsubscriber_record s= new dbtbsubscriber_record();
	String crud = request.getParameter("crud");

	Subcriber_recordDAO.String_setter(s,request.getParameter("LastName"),request.getParameter("FirstName"),request.getParameter("MiddleName"),Date.valueOf(request.getParameter("DOB")),Integer.parseInt(request.getParameter("SSNno")),request.getParameter("Gender"),request.getParameter("Address"),request.getParameter("City"),request.getParameter("State"),Integer.parseInt(request.getParameter("Zip")),request.getParameter("Country"),request.getParameter("Phone"),Integer.parseInt(request.getParameter("Patient_ID")));
	
		try{
		    	
			    if ("Create New Record".equals(crud)){
			    	
			    	if(Subcriber_recordDAO.save(s) == 1){
			    		out.print("Save Success");
			    	} 
			    	else{
			    		out.print("Save Fail");
			    	}	
			    }
			    else if ("Update Record".equals(crud)){
			    	int pid= Integer.parseInt(request.getParameter("Subscriber_Id"));
			        
			    	Subcriber_recordDAO.id_setter(s,pid);
			                
			    	if(Subcriber_recordDAO.update(s) == 1){
			    		out.print("Update Success");
			    	} 
			    	else{
			    		out.print("Update Fail");
			    	}	
			    }
			    else if ("Delete Record".equals(crud)){
			    	int pid= Integer.parseInt(request.getParameter("Subscriber_Id"));
			       
			        
			    	Subcriber_recordDAO.id_setter(s,pid);
			        
			    	if(Subcriber_recordDAO.delete(s) == 1){
			    		out.print("Delete Success");
			    	}
			    	else{
			    		out.print("Delete Fail");
			    	}
			    }
			    
			    }
			    catch(Exception e){out.print(e);}
%>