<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbcaregiver_fee, dao.FeeDAO" %>
<script src="css/notify.js"></script>
<% 
	dbtbcaregiver_fee f = new dbtbcaregiver_fee();
	String crud = request.getParameter("crud");
	
	try{
	FeeDAO.string_setterC(f,Integer.parseInt(request.getParameter("CPatientID")),Integer.parseInt(request.getParameter("BCaregiverID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")),request.getParameter("Shift"),request.getParameter("status"));
	
	if ("Create New Record".equals(crud)){
    	
    	if(FeeDAO.saveC(f) == 1){
    		out.print("<script> $.notify('Access granted', 'success');</script>");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterC(f,pid,p);
                
    	if(FeeDAO.updateC(f) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("CFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterC(f,pid,p);
        
    	if(FeeDAO.deleteC(f) == 1){
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