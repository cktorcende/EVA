<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,dao.supply_recordDAO,dbtb.dbtbsupply_record,java.util.*" %>

<% 
	dbtbsupply_record s = new dbtbsupply_record();
	String crud = request.getParameter("crud");

try{
	supply_recordDAO. String_setter(s,request.getParameter("SupplyDescription"),request.getParameter("CasePack"),request.getParameter("Brand"),request.getParameter("CaseSubBreak"),request.getParameter("Barcode"),request.getParameter("UnitOfMeasure"),request.getParameter("ActiveIngridient"),request.getParameter("LotNo"),Integer.parseInt(request.getParameter("S_VendorID")),Integer.parseInt(request.getParameter("CaseWeight")),Integer.parseInt(request.getParameter("MaximumRefills")),Integer.parseInt(request.getParameter("CurrentQtyOnHand")),Integer.parseInt(request.getParameter("MinimumQtyOnHand")));
	
    if ("Create New Record".equals(crud)){
    	
    	if(supply_recordDAO.save(s) == 1){
    		out.print("Save Success");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
	else if ("Update Record".equals(crud)){
		int pid= Integer.parseInt(request.getParameter("SupplyID"));
	    
		supply_recordDAO.id_setter(s,pid);
	            
		if(supply_recordDAO.update(s) == 1){
			out.print("Update Success");
		} 
		else{
			out.print("Update Fail");
		}	
	}
	else if ("Delete Record".equals(crud)){
		int pid= Integer.parseInt(request.getParameter("SupplyID"));
	   
	    
		supply_recordDAO.id_setter(s,pid);
	    
		if(supply_recordDAO.delete(s) == 1){
			out.print("Delete Success");
		}
		else{
			out.print("Delete Fail");
		}
	}
	}
	catch(Exception e){out.print(e);}
%>