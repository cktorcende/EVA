package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbInfo;


public class InfoDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbInfo i,String InformationType,String InformationName,String Description,String Status,String Severity,String InformationSource,Date Onset,int PGen_infoID) {
		i.setInformationType(InformationType);
		i.setInformationName(InformationName);
		i.setDescription(Description);
		i.setStatus(Status);
		i.setSeverity(Severity);
		i.setInformationSource(InformationSource);
		i.setOnset(Onset);
		i.setPGen_infoID(PGen_infoID);
	}
	
	public static void id_setter(dbtbInfo i,int infoID) {
		i.setinfoID(infoID);
		
	}
	
	public static int save(dbtbInfo i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO gen_info (InformationType,InformationName,Description,Status,Severity,InformationSource,Onset,PGen_infoID)"
					+ "VALUES (?,?,?,?,?,?,?,?)");
			preState.setString(1, i.getInformationType());
			preState.setString(2, i.getInformationName());
			preState.setString(3, i.getDescription());
			preState.setString(4, i.getStatus());
			preState.setString(5, i.getSeverity());
			preState.setString(6, i.getInformationSource());
			preState.setDate(7, i.getOnset());
			preState.setInt(8, i.getPGen_infoID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int update(dbtbInfo i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE gen_info SET InformationType=?,InformationName=?,Description=?,Status=?,Severity=?,InformationSource=?,Onset=?,PGen_infoID=? WHERE c");
			preState.setString(1, i.getInformationType());
			preState.setString(2, i.getInformationName());
			preState.setString(3, i.getDescription());
			preState.setString(4, i.getStatus());
			preState.setString(5, i.getSeverity());
			preState.setString(6, i.getInformationSource());
			preState.setDate(7, i.getOnset());
			preState.setInt(8, i.getPGen_infoID());
			preState.setInt(9, i.getinfoID());
		Stat=preState.executeUpdate(); 
	}
	catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete(dbtbInfo i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM gen_info WHERE gen_info");
			preState.setInt(1, i.getinfoID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
			return Stat;
	}
	
	public static List<dbtbInfo> getAllRecords(){
		List<dbtbInfo> list=new ArrayList<dbtbInfo>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM gen_info");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbInfo i = new dbtbInfo();
				i.setinfoID(reSet.getInt("infoID"));
				i.setInformationType(reSet.getString("InformationType"));
				i.setInformationName(reSet.getString("InformationName"));
				i.setDescription(reSet.getString("Description"));
				i.setStatus(reSet.getString("Status"));
				i.setSeverity(reSet.getString("Severity"));
				i.setInformationSource(reSet.getString("InformationSource"));
				i.setOnset(reSet.getDate("Onset"));
				list.add(i);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	
	public static dbtbInfo getRecord(int id) {
		dbtbInfo i = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from gen_info where infoID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery(); 
	        while(reSet.next()){  
	        	i = new dbtbInfo();
	        	i.setinfoID(reSet.getInt("infoID"));
				i.setInformationType(reSet.getString("InformationType"));
				i.setInformationName(reSet.getString("InformationName"));
				i.setDescription(reSet.getString("Description"));
				i.setStatus(reSet.getString("Status"));
				i.setSeverity(reSet.getString("Severity"));
				i.setInformationSource(reSet.getString("InformationSource"));
				i.setOnset(reSet.getDate("Onset"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return i;}
}
