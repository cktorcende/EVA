<%@ page import="java.sql.Date, dao.AppPayDAO,dbtb.dbtbAppPay"%>

<% 
	dbtbAppPay p = new dbtbAppPay();
	String crud = request.getParameter("crud");
	
	AppPayDAO.String_setter(p,request.getParameter("LegalEntity"),request.getParameter("PaymentType"),request.getParameter("Status"),request.getParameter("CollectedBy"),request.getParameter("PayerEntity"),request.getParameter("PayerName"),request.getParameter("PayerCode"),request.getParameter("ReferenceNumber"),request.getParameter("PSTSNo"),request.getParameter("PaymentM"));
	AppPayDAO.double_setter(p,Double.parseDouble(request.getParameter("TotalAmount")),Double.parseDouble(request.getParameter("AmountApplied")),Double.parseDouble(request.getParameter("AmountUnapplied")),Double.parseDouble(request.getParameter("TransferAmount")),Double.parseDouble(request.getParameter("Amount")),Date.valueOf(request.getParameter("EntryDate")),Date.valueOf(request.getParameter("AcctDate")),Date.valueOf(request.getParameter("PaymentDate")),Integer.parseInt(request.getParameter("PatientId")));
	
	try{
    	
	    if ("Create New Record".equals(crud)){
	    	
	    	if(AppPayDAO.save(p) == 1){
	    		out.print("Save Success");
	    	} 
	    	else{
	    		out.print("Save Fail");
	    	}	
	    }
	    else if ("Update Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Payment_ID"));
	    
	        
	        AppPayDAO.int_setter(p,pid);
	                
	    	if(AppPayDAO.update(p) == 1){
	    		out.print("Update Success");
	    	} 
	    	else{
	    		out.print("Update Fail");
	    	}	
	    }
	    else if ("Delete Record".equals(crud)){
	    	int pid= Integer.parseInt(request.getParameter("Payment_ID"));
	        
	        
	        AppPayDAO.int_setter(p,pid);
	        
	    	if(AppPayDAO.delete(p) == 1){
	    		out.print("Delete Success");
	    	}
	    	else{
	    		out.print("Delete Fail");
	    	}
	    }
	    
	    }
	    catch(Exception e){out.print(e);}
%>