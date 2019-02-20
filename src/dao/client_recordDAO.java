package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbClient_record;


public class client_recordDAO {
	public static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void settterStringClient(dbtbClient_record d,Date Date_Admitted,String Sex,String FirstName,String MiddleName,String Surname,String BirthPlace,Date BirthDate,String Address,String City,String Province,String Country,int LocationCode,int ResidenceCode,int ReferredBy,String PatientStatus,String Remarks,String Marital,String Language,String AcctType,String Email) {
		d.setDate_Admitted(Date_Admitted);
		d.setSex(Sex);
		d.setFirstName(FirstName);
		d.setMiddleName(MiddleName);
		d.setSurname(Surname);
		d.setBirthPlace(BirthPlace);
		d.setBirthDate(BirthDate);
		d.setAddress(Address);
		d.setCity(City);
		d.setProvince(Province);
		d.setCountry(Country);
		d.setLocationCode(LocationCode);
		d.setResidenceCode(ResidenceCode);
		d.setReferredBy(ReferredBy);
		d.setPatientStatus(PatientStatus);
		d.setRemarks(Remarks);
		d.setMarital(Marital);
		d.setLanguage(Language);
		d.setAcctType(AcctType);
		d.setEmail(Email);
		
	}
	public static void id_setter(dbtbClient_record d,int Patient_ID,int Client_ID) {
		d.setPatient_ID(Patient_ID);
		d.setClient_ID(Client_ID);
	}
	
	public static int save(dbtbClient_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO client_record (Date_Admitted,Sex,FirstName,MiddleName,Surname,BirthPlace,BirthDate,Address,City,Province,Country,LocationCode,ResidenceCode,ReferredBy,PatientStatus,Remarks,Marital,Language,PatientType,Email)"+
			" VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setDate(1,d.getDate_Admitted());
			preState.setString(2,d.getSex());
			preState.setString(3,d.getFirstName());
			preState.setString(4,d.getMiddleName());
			preState.setString(5,d.getSurname());
			preState.setString(6,d.getBirthPlace());
			preState.setDate(7,d.getBirthDate());
			preState.setString(8,d.getAddress());
			preState.setString(9,d.getCity());
			preState.setString(10,d.getProvince());
			preState.setString(11,d.getCountry());
			preState.setInt(12,d.getLocationCode());
			preState.setInt(13,d.getResidenceCode());
			preState.setInt(14,d.getReferredBy());
			preState.setString(15,d.getPatientStatus());
			preState.setString(16,d.getRemarks());
			preState.setString(17,d.getMarital());
			preState.setString(18,d.getLanguage());
			preState.setString(19,d.getAcctType());
			preState.setString(20,d.getEmail());
			Stat=preState.executeUpdate(); 
			conn.close();
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;}
	
	public static int update(dbtbClient_record d) {
		System.out.println(d.getPatient_ID());
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE client_record SET Date_Admitted=?,Sex=?,FirstName=?,MiddleName=?,Surname=?,BirthPlace=?,BirthDate=?,Address=?,City=?,Province=?,Country=?,LocationCode=?,ResidenceCode=?,ReferredBy=?,PatientStatus=?,Remarks=?,Marital=?,Language=?,PatientType=?,Email=? WHERE Patient_ID=?");
			preState.setDate(1,d.getDate_Admitted());
			preState.setString(2,d.getSex());
			preState.setString(3,d.getFirstName());
			preState.setString(4,d.getMiddleName());
			preState.setString(5,d.getSurname());
			preState.setString(6,d.getBirthPlace());
			preState.setDate(7,d.getBirthDate());
			preState.setString(8,d.getAddress());
			preState.setString(9,d.getCity());
			preState.setString(10,d.getProvince());
			preState.setString(11,d.getCountry());
			preState.setInt(12,d.getLocationCode());
			preState.setInt(13,d.getResidenceCode());
			preState.setInt(14,d.getReferredBy());
			preState.setString(15,d.getPatientStatus());
			preState.setString(16,d.getRemarks());
			preState.setString(17,d.getMarital());
			preState.setString(18,d.getLanguage());
			preState.setString(19,d.getAcctType());
			preState.setString(20,d.getEmail());
			preState.setInt(21,d.getPatient_ID());
			
			Stat=preState.executeUpdate(); 
			conn.close();
		}
		catch (Exception e) {System.out.println(e);}
			
			return Stat;}
	
	public static int delete(dbtbClient_record d) {
		System.out.println(d.getPatient_ID());
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM client_record WHERE Patient_ID=?");
			preState.setInt(1, d.getPatient_ID());
			
			Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		
		return Stat;
	}
	
	public static List<dbtbClient_record> getAllRecords(){
		List<dbtbClient_record> list=new ArrayList<dbtbClient_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM client_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbClient_record d = new dbtbClient_record();
				d.setPatient_ID(reSet.getInt("Patient_ID"));
				d.setClient_ID(reSet.getInt("Client_ID"));
				d.setDate_Admitted(reSet.getDate("Date_Admitted"));
				d.setSex(reSet.getString("Sex"));
				d.setSurname(reSet.getString("SurName"));
				d.setFirstName(reSet.getString("FirstName"));
				d.setMiddleName(reSet.getString("MiddleName"));
				d.setBirthDate(reSet.getDate("BirthDate"));
				d.setBirthPlace(reSet.getString("BirthPlace"));
				d.setAddress(reSet.getString("Address"));
				d.setCity(reSet.getString("City"));
				d.setProvince(reSet.getString("Province"));
				d.setCountry(reSet.getString("Country"));
				d.setLocationCode(reSet.getInt("LocationCode"));
				d.setResidenceCode(reSet.getInt("ResidenceCode"));
				d.setReferredBy(reSet.getInt("ReferredBy"));
				d.setPatientStatus(reSet.getString("PatientStatus"));
				d.setRemarks(reSet.getString("Remarks"));
				d.setMarital(reSet.getString("Marital"));
				d.setLanguage(reSet.getString("Language"));
				d.setAcctType(reSet.getString("PatientType"));
				d.setEmail(reSet.getString("Email"));
				list.add(d);	
			}	
			}
			
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
}
	public static dbtbClient_record getRecord(int id) {
		dbtbClient_record cl = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from client_record where Patient_ID=?");  
	        preState.setInt(1,id);  
	        System.out.println(id);
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	cl = new dbtbClient_record();
	        	cl.setPatient_ID(reSet.getInt("Patient_ID"));
	        	System.out.println(cl.getPatient_ID());
	        	cl.setPatient_ID(reSet.getInt("Client_ID"));
	        	cl.setDate_Admitted(reSet.getDate("Date_Admitted"));
	        	cl.setSex(reSet.getString("Sex"));
	        	cl.setFirstName(reSet.getString("FirstName"));
	        	cl.setMiddleName(reSet.getString("MiddleName"));
	        	cl.setSurname(reSet.getString("Surname"));
	        	cl.setBirthPlace(reSet.getString("BirthPlace"));
	        	cl.setBirthDate(reSet.getDate("BirthDate"));
	        	cl.setAddress(reSet.getString("Address"));
	        	cl.setCity(reSet.getString("City"));
	        	cl.setProvince(reSet.getString("Province"));
	        	cl.setCountry(reSet.getString("Country"));
	        	cl.setLocationCode(reSet.getInt("LocationCode"));
	        	cl.setResidenceCode(reSet.getInt("ResidenceCode"));
	        	cl.setReferredBy(reSet.getInt("ReferredBy"));
	        	cl.setPatientStatus(reSet.getString("PatientStatus"));
	        	cl.setRemarks(reSet.getString("Remarks"));
	        	cl.setMarital(reSet.getString("Marital"));
	        	cl.setLanguage(reSet.getString("Language"));
	        	cl.setAcctType(reSet.getString("PatientType"));
	        	cl.setEmail(reSet.getString("Email"));
	        }
		}
		catch(Exception e){System.out.print(e);}  
	    return cl;
	}
	

			
}
