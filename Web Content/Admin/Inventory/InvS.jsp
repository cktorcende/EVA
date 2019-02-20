<%@page import="dbtb.dbtbIncoming_drug_record,dao.Incoming_supply_recordDAO,dbtb.dbtbincoming_supply_record,dao.Incoming_drug_recordDAO,dbtb.dbtbincoming_food_record,dao.Incoming_food_recordDAO,java.sql.*" %>

<% 
	
	dbtbincoming_supply_record  s = new dbtbincoming_supply_record();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	
		try{
			Incoming_supply_recordDAO.String_setter(s,request.getParameter("SupplyDescription"),Integer.parseInt(request.getParameter("S_SupplierID")),Integer.parseInt(request.getParameter("VendorItem")),Integer.parseInt(request.getParameter("ProductKey")),Integer.parseInt(request.getParameter("InvoiceNumber")),Integer.parseInt(request.getParameter("QTYonhand")),Date.valueOf(request.getParameter("PurchaseDate")),Integer.parseInt(request.getParameter("QTYPurchased")),Double.parseDouble(request.getParameter("AcqCost")),request.getParameter("Remark"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(Incoming_supply_recordDAO.save(s) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FoodID"));
	        
	    	Incoming_supply_recordDAO.id_setter(s,pid);
	                
	    	if(Incoming_supply_recordDAO.update(s) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FoodID"));
	       
	        
	    	Incoming_supply_recordDAO.id_setter(s,pid);
	        
	    	if(Incoming_supply_recordDAO.delete(s) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
		}
		catch(Exception e){out.print(e);}
	
%>