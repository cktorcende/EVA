<%@page import="conn.DbCon,dbtb.dbtbreturned_order, dao.Returned_orderDAO, java.sql.*" %>
<% 
	dbtbreturned_order  r = new dbtbreturned_order();
	String crud = request.getParameter("crud");
	


	try{
		Returned_orderDAO.String_setter(r,Integer.parseInt(request.getParameter("SupplierID")),Integer.parseInt(request.getParameter("DrugID")),Integer.parseInt(request.getParameter("VendorItemNO")),Integer.parseInt(request.getParameter("DrugRecNO")),Integer.parseInt(request.getParameter("QTYReturned")),Integer.parseInt(request.getParameter("LotNO")),Date.valueOf(request.getParameter("ReturnedDate")),Date.valueOf(request.getParameter("LotExpirationDate")),request.getParameter("DrugNDC"),request.getParameter("Remarks"),Double.parseDouble(request.getParameter("CreditAmount")));
		

	    if ("Create New Record".equals(crud)){
	    	
	    	if(Returned_orderDAO.save(r) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("FoodID"));
        
    	Returned_orderDAO.id_setter(r,pid);
                
    	if(Returned_orderDAO.update(r) == 1){
    		out.print("Update Success");
    	} 
    	else{		
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("FoodID"));
       
        
    	Returned_orderDAO.id_setter(r,pid);
        
    	if(Returned_orderDAO.delete(r) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
	}
	catch(Exception e){out.print(e);}

%>