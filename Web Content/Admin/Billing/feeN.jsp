<%@page import="conn.DbCon,java.sql.*,dbtb.dbtbnurse_fee, dao.FeeDAO" %>
<script src="css/notify.js"></script>

<% 
	dbtbnurse_fee f = new dbtbnurse_fee();
	String crud = request.getParameter("crud");
	
	try{
	FeeDAO.string_setterN(f,Integer.parseInt(request.getParameter("NPatientID")),Integer.parseInt(request.getParameter("BNurseID")), Double.parseDouble(request.getParameter("ratePerHour")),Integer.parseInt(request.getParameter("HoursRendered")),Date.valueOf(request.getParameter("DateStarted")),Date.valueOf(request.getParameter("DateEnded")),Date.valueOf(request.getParameter("DueDate")),Boolean.parseBoolean(request.getParameter("CoveredByPlan")),request.getParameter("Shift"),request.getParameter("status"));
	
	if ("Create New Record".equals(crud)){
    	
    	if(FeeDAO.saveN(f) == 1){
    		%><script> $.notify('Sucessfully saved', 'success');</script>
    		
<% 
		
    	} 
    	else{
    		out.print("Save Fail");
    	}	
    }
    else if ("Update Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("NFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterN(f,pid,p);
                
    	if(FeeDAO.updateN(f) == 1){
    		out.print("Update Success");
    	} 
    	else{
    		out.print("Update Fail");
    	}	
    }
    else if ("Delete Record".equals(crud)){
    	int pid= Integer.parseInt(request.getParameter("NFeeID"));
    	int p= Integer.parseInt(request.getParameter("AppPayID"));
        
    	FeeDAO.id_setterN(f,pid,p);
        
    	if(FeeDAO.deleteN(f) == 1){
    		out.print("Delete Success");
    	}
    	else{
    		out.print("Delete Fail");
    	}
    }
    
    }
    catch(Exception e){out.print(e);}

%>


