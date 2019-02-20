<%@page import="dbtb.dbtbIncoming_drug_record,dao.Incoming_supply_recordDAO,dbtb.dbtbincoming_supply_record,dao.Incoming_drug_recordDAO,dbtb.dbtbincoming_food_record,dao.Incoming_food_recordDAO,java.sql.*" %>

<% 
	
	dbtbincoming_food_record  f = new dbtbincoming_food_record();
	String crud = request.getParameter("crud");
	String em  = request.getParameter("StaffType");
	
	
		try{
			Incoming_food_recordDAO.String_setter(f,request.getParameter("FoodDescription"),Integer.parseInt(request.getParameter("F_SupplierID")),Integer.parseInt(request.getParameter("VendorItem")),Integer.parseInt(request.getParameter("ProductKey")),Integer.parseInt(request.getParameter("InvoiceNumber")),Integer.parseInt(request.getParameter("QTYonhand")),Date.valueOf(request.getParameter("PurchaseDate")),Integer.parseInt(request.getParameter("QTYPurchased")),Double.parseDouble(request.getParameter("AcqCost")),request.getParameter("Remark"));
			

		    if ("Create New Record".equals(crud)){
		    	
		    	if(Incoming_food_recordDAO.save(f) == 1){
		    		out.print("Save Success");
		    	} 
		    	else{
		    		out.print("Save Fail");
		    	}	
		    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FoodID"));
	        
	    	Incoming_food_recordDAO.id_setter(f,pid);
	                
	    	if(Incoming_food_recordDAO.update(f) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("FoodID"));
	       
	        
	    	Incoming_food_recordDAO.id_setter(f,pid);
	        
	    	if(Incoming_food_recordDAO.delete(f) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
		}
		catch(Exception e){out.print(e);}
	
%>