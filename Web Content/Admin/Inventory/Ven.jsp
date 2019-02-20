<%@page import="java.util.*,conn.DbCon,dbtb.dbtbVendor_record,dao.vendor_recordDAO,java.sql.*"%>

<% 
	dbtbVendor_record p = new dbtbVendor_record();
	String crud = request.getParameter("crud");
	
	
try{
		
	    if ("Create New Record".equals(crud)){
	    	
	    	if(vendor_recordDAO.save(p) == 1){
	    		
		    	out.print("Save Success");}
	    		
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("VendorID"));
	    
	        
	    	vendor_recordDAO.id_setter(p,pid);
	                
	    	if(vendor_recordDAO.update(p) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("VendorID"));
	
	    	vendor_recordDAO.id_setter(p,pid);
	        
	    	if(vendor_recordDAO.delete(p) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>