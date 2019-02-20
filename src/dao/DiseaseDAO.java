package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbp_disease;

public class DiseaseDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_Setter(dbtbp_disease d,String DiseaseType,String DiseaseName,String PrecautionsPracticed,String Status,String Severity,String InformationSource,Date Onset,String Comments,int Pat_ID) {
		d.setDiseaseType(DiseaseType);
		d.setDiseaseName(DiseaseName);
		d.setPrecautionsPracticed(PrecautionsPracticed);
		d.setStatus(Status);
		d.setSeverity(Severity);
		d.setInformationSource(InformationSource);
		d.setOnset(Onset);
		d.setComments(Comments);
		d.setPat_ID(Pat_ID);
	}
	
	public static void id_setter(dbtbp_disease d,int Disease_ID) {
		d.setDisease_ID(Disease_ID);
		
	}
	
	public static int save(dbtbp_disease d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO p_disease(DiseaseType,DiseaseName,PrecautionsPracticed,Status,Severity,InformationSource,Onset,Comments)"
					+ "VALUES(?,?,?,?,?,?,?,?)");
			preState.setString(1, d.getDiseaseType());
			preState.setString(2, d.getDiseaseName());
			preState.setString(3, d.getPrecautionsPracticed());
			preState.setString(4, d.getStatus());
			preState.setString(5, d.getSeverity());
			preState.setString(6, d.getInformationSource());
			preState.setDate(7, d.getOnset());
			preState.setString(8, d.getComments());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static int update(dbtbp_disease d) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE p_disease SET DiseaseType=?,DiseaseName=?,PrecautionsPracticed=?,Status=?,Severity=?,InformationSource=?,Onset=?,Comments=? WHERE Disease_ID=?");
				preState.setString(1, d.getDiseaseType());
				preState.setString(2, d.getDiseaseName());
				preState.setString(3, d.getPrecautionsPracticed());
				preState.setString(4, d.getStatus());
				preState.setString(5, d.getSeverity());
				preState.setString(6, d.getInformationSource());
				preState.setDate(7, d.getOnset());
				preState.setString(8, d.getComments());
				preState.setInt(9, d.getDisease_ID());
				Stat= preState.executeUpdate();
			}
			catch (Exception ex) {System.out.print("Fail");}
			return Stat;
	}
		
	public static int delete(dbtbp_disease d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM p_disease WHERE Disease_ID=?");
			preState.setInt(1, d.getDisease_ID());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static List<dbtbp_disease> getAllRecords(){
		List<dbtbp_disease> list=new ArrayList<dbtbp_disease>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from p_disease");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbp_disease d = new dbtbp_disease();
				d.setDisease_ID(reSet.getInt("Disease_ID"));
				d.setPat_ID(reSet.getInt("Pat_ID"));
				d.setDiseaseType(reSet.getString("DiseaseType"));
				d.setDiseaseName(reSet.getString("DiseaseName"));
				d.setPrecautionsPracticed(reSet.getString("PrecautionsPracticed"));
				d.setStatus(reSet.getString("Status"));
				d.setSeverity(reSet.getString("Severity"));
				d.setInformationSource(reSet.getString("InformationSource"));
				d.setOnset(reSet.getDate("Onset"));
				d.setComments(reSet.getString("Comments"));
				list.add(d);
			}}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
			}
	
	public static dbtbp_disease getRecord(int id) {
		dbtbp_disease d = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from p_disease where Disease_ID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){ 
	        	d = new dbtbp_disease();
	        	d.setDisease_ID(reSet.getInt("Disease_ID"));
				d.setPat_ID(reSet.getInt("Pat_ID"));
				d.setDiseaseType(reSet.getString("DiseaseType"));
				d.setDiseaseName(reSet.getString("DiseaseName"));
				d.setPrecautionsPracticed(reSet.getString("PrecautionsPracticed"));
				d.setStatus(reSet.getString("Status"));
				d.setSeverity(reSet.getString("Severity"));
				d.setInformationSource(reSet.getString("InformationSource"));
				d.setOnset(reSet.getDate("Onset"));
				d.setComments(reSet.getString("Comments"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return d;
	}
}

