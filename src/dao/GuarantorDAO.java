package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbGuarantor_record;


public class GuarantorDAO {
	static PreparedStatement preState= null;
	static ResultSet reSet = null;
	public static Connection conn=null;
	public static void StringSetterGuarrantor(dbtbGuarantor_record g, String Relationhip,String GuarantorName,String Last,String First,String Middle,String SSN,String Gender,Date DOB,String EmpStatus,int EmpID,String Address,String City, String State,int Zip,String Country,String Phone,String Ext,String CellphoneNo,String Email,String Fax) {
		g.setRelationship(Relationhip);
		g.setGuarantorName(GuarantorName);
		g.setLast(Last);
		g.setFirst(First);
		g.setMiddle(Middle);
		g.setSSN(SSN);
		g.setGender(Gender);
		g.setDOB(DOB);
		g.setEmpStatus(EmpStatus);
		g.setEmpID(EmpID);
		g.setAddress(Address);
		g.setCity(City);
		g.setState(State);
		g.setZip(Zip);
		g.setCountry(Country);
		g.setPhone(Phone);
		g.setExt(Ext);
		g.setCellphoneNo(CellphoneNo);
		g.setEmail(Email);
		g.setFax(Fax);
		
	}
	
	
	
	public static int save(dbtbGuarantor_record g) {
		int Stat =0;
		try {
			conn = DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO guarantor(Relationship,GuarantorName,Last,First,Middle,SSN,Gender,DOB,EmpStatus,EmpID,Address,City,State,Zip,Country,Phone,Ext,CellphoneNo,Email,Fax)"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1, g.getRelationship());
			preState.setString(2, g.getGuarantorName());
			preState.setString(3, g.getLast());
			preState.setString(4, g.getFirst());
			preState.setString(5, g.getMiddle());
			preState.setString(6, g.getSSN());
			preState.setString(7, g.getGender());
			preState.setDate(8, g.getDOB());
			preState.setString(9, g.getEmpStatus());
			preState.setInt(10, g.getEmpID());
			preState.setString(11, g.getAddress());
			preState.setString(12, g.getCity());
			preState.setString(13, g.getState());
			preState.setInt(14, g.getZip());
			preState.setString(15, g.getCountry());
			preState.setString(16, g.getPhone());
			preState.setString(17, g.getExt());
			preState.setString(18, g.getCellphoneNo());
			preState.setString(19, g.getEmail());
			preState.setString(20, g.getFax());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.println(e);}
		return Stat;
	}
	
	public static int update(dbtbGuarantor_record g) {
		int Stat =0;
		try {
			conn = DbCon.getCon();
			preState = conn.prepareStatement("UPDATE guarantor SET Relationship=?,GuarantorName=?,Last=?,First=?,Middle=?,SSN=?,Gender=?,DOB=?,EmpStatus=?,EmpID=?,Address=?,City=?,State=?,Zip=?,Country=?,Phone=?,Ext=?,CellphoneNo=?,Email=?,Fax=? WHERE guarantorID=?");
			preState.setString(1, g.getRelationship());
			preState.setString(2, g.getGuarantorName());
			preState.setString(3, g.getLast());
			preState.setString(4, g.getFirst());
			preState.setString(5, g.getMiddle());
			preState.setString(6, g.getSSN());
			preState.setString(7, g.getGender());
			preState.setDate(8, g.getDOB());
			preState.setString(9, g.getEmpStatus());
			preState.setInt(10, g.getEmpID());
			preState.setString(11, g.getAddress());
			preState.setString(12, g.getCity());
			preState.setString(13, g.getState());
			preState.setInt(14, g.getZip());
			preState.setString(15, g.getCountry());
			preState.setString(16, g.getPhone());
			preState.setString(17, g.getExt());
			preState.setString(18, g.getCellphoneNo());
			preState.setString(19, g.getEmail());
			preState.setString(20, g.getFax());
			preState.setInt(21, g.getguarantorID());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.println(e);}
		return Stat;
	}
	
	public static int delete(dbtbGuarantor_record g) {
		int Stat =0;
		try {
			Connection con = DbCon.getCon();
			preState = con.prepareStatement("DELETE FROM guarantor WHERE guarantorID=?");
			preState.setInt(21, g.getguarantorID());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.println(e);}
		return Stat;
	}
	
	public static List<dbtbGuarantor_record> getAllRecords(){
		List<dbtbGuarantor_record> list=new ArrayList<dbtbGuarantor_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM guarantor");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbGuarantor_record g = new dbtbGuarantor_record();
				g.setguarantorID(reSet.getInt("guarantorID"));
				g.setRelationship(reSet.getString("Relationship"));
				g.setGuarantorName(reSet.getString("GuarantorName"));
				g.setLast(reSet.getString("Last"));
				g.setFirst(reSet.getString("First"));
				g.setMiddle(reSet.getString("Middle"));
				g.setSSN(reSet.getString("SSN"));
				g.setGender(reSet.getString("Gender"));
				g.setDOB(reSet.getDate("DOB"));
				g.setEmpStatus(reSet.getString("EmpStatus"));
				g.setEmpID(reSet.getInt("EmpID"));
				g.setAddress(reSet.getString("Address"));
				g.setCity(reSet.getString("City"));
				g.setState(reSet.getString("State"));
				g.setZip(reSet.getInt("Zip"));
				g.setCountry(reSet.getString("Country"));
				g.setPhone(reSet.getString("Phone"));
				g.setExt(reSet.getString("Ext"));
				g.setCellphoneNo(reSet.getString("CellphoneNo"));
				g.setEmail(reSet.getString("Email"));
				g.setFax(reSet.getString("Fax"));
				list.add(g);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static dbtbGuarantor_record getRecord(int id) {
		dbtbGuarantor_record g = null;
		try {
			conn = DbCon.getCon();
			 preState=conn.prepareStatement("select * from guarantor where guarantorID=?");  
		        preState.setInt(1,id);  
		        reSet=preState.executeQuery();  
		        while(reSet.next()){  
		        	g = new dbtbGuarantor_record();
					g.setguarantorID(reSet.getInt("guarantorID"));
					g.setRelationship(reSet.getString("Relationship"));
					g.setGuarantorName(reSet.getString("GuarantorName"));
					g.setLast(reSet.getString("Last"));
					g.setFirst(reSet.getString("First"));
					g.setMiddle(reSet.getString("Middle"));
					g.setSSN(reSet.getString("SSN"));
					g.setGender(reSet.getString("Gender"));
					g.setDOB(reSet.getDate("DOB"));
					g.setEmpStatus(reSet.getString("EmpStatus"));
					g.setEmpID(reSet.getInt("EmpID"));
					g.setAddress(reSet.getString("Address"));
					g.setCity(reSet.getString("City"));
					g.setState(reSet.getString("State"));
					g.setZip(reSet.getInt("Zip"));
					g.setCountry(reSet.getString("Country"));
					g.setPhone(reSet.getString("Phone"));
					g.setExt(reSet.getString("Ext"));
					g.setCellphoneNo(reSet.getString("CellphoneNo"));
					g.setEmail(reSet.getString("Email"));
					g.setFax(reSet.getString("Fax"));
					
		        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return g;
		
	}
}
