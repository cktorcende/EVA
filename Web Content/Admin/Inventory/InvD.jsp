<%@page import="dbtb.dbtbIncoming_drug_record,dao.Incoming_supply_recordDAO,dbtb.dbtbincoming_supply_record,dao.Incoming_drug_recordDAO,dbtb.dbtbincoming_food_record,dao.Incoming_food_recordDAO,java.sql.*" %>

<% 
	
	dbtbIncoming_drug_record  d = new dbtbIncoming_drug_record();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	
		try{
			Incoming_drug_recordDAO.String_setter(d,request.getParameter("DrugDescription"),Integer.parseInt(request.getParameter("Supplier")),Integer.parseInt(request.getParameter("VendorItem")),Integer.parseInt(request.getParameter("ProductKey")),Integer.parseInt(request.getParameter("InvoiceNumber")),Integer.parseInt(request.getParameter("QTYonhand")),Date.valueOf(request.getParameter("PurchaseDate")),Integer.parseInt(request.getParameter("QTYPurchased")),Double.parseDouble(request.getParameter("AcqCost")),request.getParameter("Remark"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(Incoming_drug_recordDAO.save(d) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("RecNo"));
	        
	    	Incoming_drug_recordDAO.id_setter(d,pid);
	                
	    	if(Incoming_drug_recordDAO.update(d) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("RecNo"));
	       
	        
	    	Incoming_drug_recordDAO.id_setter(d,pid);
	        
	    	if(Incoming_drug_recordDAO.delete(d) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
		}
		catch(Exception e){out.print(e);}
	
%>