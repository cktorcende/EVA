<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,dao.supply_recordDAO,dbtb.dbtbsupply_record,java.sql.*" %>


<%
	dbtbfood_record f = new dbtbfood_record();
	String crud = request.getParameter("crud");
	
	
	
	try{
		food_recordDAO.String_setter(f,request.getParameter("FoodDescription"),request.getParameter("CasePack"),request.getParameter("Brand"),request.getParameter("CaseSubBreak"),request.getParameter("Barcode"),request.getParameter("UnitOfMeasure"),request.getParameter("ActiveIngridient"),request.getParameter("LotNo"),Integer.parseInt(request.getParameter("VendorID")),Integer.parseInt(request.getParameter("CaseWeight")),Integer.parseInt(request.getParameter("MaximumRefills")),Integer.parseInt(request.getParameter("CurrentQtyOnHand")),Integer.parseInt(request.getParameter("MinimumQtyOnHand")));
		food_recordDAO.date_setter(f,Double.parseDouble(request.getParameter("DirectPrice")),Date.valueOf(request.getParameter("Expiration")),Date.valueOf(request.getParameter("LotExpDate")));
		
		
		
    if ("Create New Record".equals(crud)){
    	
    	if(food_recordDAO.save(f) == 1){
    		out.print("Save Success");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
	else if ("Update Record".equals(crud)){
		int pid= Integer.parseInt(request.getParameter("FoodID"));
	    
		food_recordDAO.id_setter(f,pid);
	            
		if(food_recordDAO.update(f) == 1){
			out.print("Update Success");
		} 
		else{
			out.print("Update Fail");
		}	
	}
	else if ("Delete Record".equals(crud)){
		int pid= Integer.parseInt(request.getParameter("FoodID"));
	   
	    
		food_recordDAO.id_setter(f,pid);
	    
		if(food_recordDAO.delete(f) == 1){
			out.print("Delete Success");
		}
		else{
			out.print("Delete Fail");
		}
	}
	}
	catch(Exception e){out.print(e);}
%>