<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbbed_fee, dao.FeeDAO" %>
<script src="css/notify.js"></script>
<% 
	dbtbbed_fee f = new dbtbbed_fee();
	String crud = request.getParameter("crud");
	
	try{
	FeeDAO.string_setterB(f,Integer.parseInt(request.getParameter("BPatientID")),Integer.parseInt(request.getParameter("BBedID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")),request.getParameter("Shift"));
	
	if ("Create New Record".equals(crud)){
    	
    	if(FeeDAO.saveB(f) == 1){
    		out.println("<script> $.notify('Access granted', 'success');</script>");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("BFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterB(f,pid,p);
                
    	if(FeeDAO.updateB(f) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("BFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterB(f,pid,p);
        
    	if(FeeDAO.deleteB(f) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
    
    }
    catch(Exception e){out.print(e);}

%>

<jsp:include page="FeeSched.jsp"></jsp:include>