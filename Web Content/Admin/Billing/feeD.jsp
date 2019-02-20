<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbdoctor_fee, dao.FeeDAO" %>
<script src="css/notify.js"></script>
<% 
	dbtbdoctor_fee f = new dbtbdoctor_fee();
	String crud = request.getParameter("crud");
	
	try{
	FeeDAO.string_setterD(f,Integer.parseInt(request.getParameter("DPatientID")),Integer.parseInt(request.getParameter("BDoctorID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")),request.getParameter("Shift"),request.getParameter("status"));
	
	if ("Create New Record".equals(crud)){
    	
    	if(FeeDAO.saveD(f) == 1){
    		out.print("Save Success<script> $.notify('Access granted', 'success');</script>");
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("DFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterD(f,pid,p);
                
    	if(FeeDAO.updateD(f) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("DFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterD(f,pid,p);
        
    	if(FeeDAO.deleteD(f) == 1){
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