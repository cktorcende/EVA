<%@ page import="java.sql.Date, dao.GuarantorDAO,dbtb.dbtbGuarantor_record"%>


<%
	dbtbGuarantor_record c = new dbtbGuarantor_record();
	String crud = request.getParameter("crud");
	int empID= Integer.parseInt(request.getParameter("EmpID"));
	int zip = Integer.parseInt(request.getParameter("Zip"));
	
	
	
	GuarantorDAO.StringSetterGuarrantor(c, request.getParameter("Relationship"),request.getParameter("GuarantorName"),request.getParameter("Last"),request.getParameter("First"),request.getParameter("Middle"),request.getParameter("SSN"),request.getParameter("Gender"),Date.valueOf(request.getParameter("DOB")),request.getParameter("EmpStatus"), empID,request.getParameter("Address"),request.getParameter("City"),request.getParameter("State"), zip,request.getParameter("Country"),request.getParameter("Phone"),request.getParameter("Ext"),request.getParameter("CellphoneNo"),request.getParameter("Email"),request.getParameter("Fax"));
	try{
	if ("Create New Record".equals(crud)){
		if (GuarantorDAO.save(c) ==1){
			out.print("Success");
		}
		else{
			out.print("F");
		}
		
	}
	else if ("Update Record".equals(crud)){
		if (GuarantorDAO.update(c)== 1){
			out.print("Sucess");
		}
		else{
			out.print("f");
		}
	}
	else if ("Delete Record".equals(crud)){
		if(GuarantorDAO.delete(c) == 1){
			out.print("Success");
		}
		else{
			out.print("F");
		}
	}
	else{
		out.print("Not Found");
	}
	}
	catch(Exception e){out.print(e);}
%>