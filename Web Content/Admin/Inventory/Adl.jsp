<%@page import="dbtb.dbtbdrug_record,dbtb.dbtbfood_record,dao.drug_recordDAO,dao.food_recordDAO,dao.supply_recordDAO,dbtb.dbtbsupply_record,java.sql.*" %>

<% 
	dbtbdrug_record d = new dbtbdrug_record();
	
	
	String crud = request.getParameter("crud");
	
	
	try{
		drug_recordDAO.String_setter(d,request.getParameter("DrugDescription"),Integer.parseInt(request.getParameter("RecNo")),request.getParameter("ProductID"),request.getParameter("ControlClass"),request.getParameter("DrugType"),request.getParameter("GenericDrug"),request.getParameter("MedicaidNo"),request.getParameter("WarningCode"),request.getParameter("GenericAvailable"),request.getParameter("MedicareNo"),request.getParameter("SigCodes"),request.getParameter("SigCodes1"),request.getParameter("SigCodes2"),request.getParameter("CompoundDrug"),request.getParameter("ProductIDQualifier"),request.getParameter("DrugColor"),request.getParameter("ReferenceQualifier"),request.getParameter("NYDVSCode"),Integer.parseInt(request.getParameter("PackageSize")),Integer.parseInt(request.getParameter("QuickCode")),request.getParameter("CategoryofService"),Integer.parseInt(request.getParameter("MedicaidPackageSize")),request.getParameter("Manufacturer"),request.getParameter("DrugInRobot"),request.getParameter("UnitOfMeasure"),Integer.parseInt(request.getParameter("MaximumRefills")),request.getParameter("Drug340B"),request.getParameter("DrugAWP"),Date.valueOf(request.getParameter("Expiration")),request.getParameter("ActiveDrug"),Double.parseDouble(request.getParameter("DirectPrice")),Date.valueOf(request.getParameter("LotExpDate")),Integer.parseInt(request.getParameter("LotNo")),request.getParameter("TXR"),Double.parseDouble(request.getParameter("FedMacPrice")),request.getParameter("TXRExtention"),Double.parseDouble(request.getParameter("AcquisitionCost")),request.getParameter("SpecialtyDrug"),Date.valueOf(request.getParameter("LastPriceUpdate")),Integer.parseInt(request.getParameter("MinimumQtyOnHand")),Integer.parseInt(request.getParameter("CurrentQtyOnHand")));
		
		
	    if ("Create New Record".equals(crud)){
	    	
	    	if(drug_recordDAO.saveDrug(d) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Drug_ID"));
        
    	drug_recordDAO.id_setter(d,pid);
                
    	if(drug_recordDAO.updateDrug(d) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("Drug_ID"));
       
        
    	drug_recordDAO.id_setter(d,pid);
        
    	if(drug_recordDAO.deleteDrug(d) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
	}
	catch(Exception e){out.print(e);}
	

%>