<%@ page import="java.sql.Date, dao.Contact_personDAO,dbtb.dbtbContact_person"%>

<% 
	dbtbContact_person c = new dbtbContact_person();
	String crud = request.getParameter("crud"); 
	Contact_personDAO.String_Setter(c,request.getParameter("ContactPerson"),request.getParameter("Relationship"),request.getParameter("PrimaryAddress"),request.getParameter("PCity"),request.getParameter("SecondaryAddress"),request.getParameter("SCity"),request.getParameter("Mobile"),request.getParameter("Work"),request.getParameter("WorkPhone"),request.getParameter("WorkAddress"),Integer.parseInt(request.getParameter("Age")),Integer.parseInt(request.getParameter("Phone")),Integer.parseInt(request.getParameter("ContactNo")));
	
	try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(Contact_personDAO.save(c) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("ContactID"));
	        int cid = Integer.parseInt(request.getParameter("PTContactID"));
	        
	        Contact_personDAO.id_Setter(c,pid,cid);
	                
	    	if(Contact_personDAO.update(c) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("ContactID"));
	        int cid = Integer.parseInt(request.getParameter("PTContactID"));
	        
	        Contact_personDAO.id_Setter(c,pid,cid);
	        
	    	if(Contact_personDAO.delete(c) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>
	