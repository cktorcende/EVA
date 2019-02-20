
package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;

import dbtb.dbtbp_allergy;

public class AllergyDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	
	public static void String_setter(dbtbp_allergy a,String Substance,String Reaction,String Category,String Status,String Severity,String InformationSource,String Comments, Date Onset, int P_ID) {
		a.setSubstance(Substance);
		a.setReaction(Reaction);
		a.setCategory(Category);
		a.setStatus(Status);
		a.setSeverity(Severity);
		a.setInformationSource(InformationSource);
		a.setComments(Comments);
		a.setOnset(Onset);
		a.setP_ID(P_ID);
	} 
	
	public static void id_setter(dbtbp_allergy a, int Allergy_ID) {
		a.setAllergy_ID(Allergy_ID);
		
	}
	
	public static int save(dbtbp_allergy a) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO p_allergy (P_ID,Substance,Reaction,Category,Stat,Severity,InformationSource,Comments,Onset)"
					+ "VALUES(?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, a.getP_ID());
			preState.setString(2, a.getSubstance());
			preState.setString(3, a.getReaction());
			preState.setString(4, a.getCategory());
			preState.setString(5, a.getStatus());
			preState.setString(6, a.getSeverity());
			preState.setString(7, a.getInformationSource());
			preState.setString(8, a.getComments());
			preState.setDate(9, a.getOnset());
			
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static int update(dbtbp_allergy a) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE p_allergy SET Substance=?,Reaction=?,Category=?,Stat=?,Severity=?,InformationSource=?,Comments=?,Onset=?  WHERE Allergy_ID=?");
			preState.setString(1, a.getSubstance());
			preState.setString(2, a.getReaction());
			preState.setString(3, a.getCategory());
			preState.setString(4, a.getStatus());
			preState.setString(5, a.getSeverity());
			preState.setString(6, a.getInformationSource());
			preState.setString(7, a.getComments());
			preState.setDate(8, a.getOnset());
			preState.setInt(9, a.getAllergy_ID());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete(dbtbp_allergy a) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM p_allergy WHERE Allergy_ID=?");
			preState.setInt(1, a.getAllergy_ID());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbp_allergy> getAllRecords(){
		List<dbtbp_allergy> list=new ArrayList<dbtbp_allergy>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from p_allergy");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbp_allergy a = new dbtbp_allergy();
				a.setAllergy_ID(reSet.getInt("Allergy_ID"));
				a.setP_ID(reSet.getInt("P_ID"));
				a.setSubstance(reSet.getString("Substance"));
				a.setReaction(reSet.getString("Reaction"));
				a.setCategory(reSet.getString("Category"));
				a.setStatus(reSet.getString("Stat"));
				a.setSeverity(reSet.getString("Substance"));
				a.setInformationSource(reSet.getString("InformationSource"));
				a.setComments(reSet.getString("Comments"));
				a.setOnset(reSet.getDate("Onset"));
				list.add(a);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	
	public static dbtbp_allergy getRecord(int id) {
		dbtbp_allergy a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from p_allergy where Allergy_ID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	a = new dbtbp_allergy();
				a.setAllergy_ID(reSet.getInt("Allergy_ID"));
				a.setP_ID(reSet.getInt("P_ID"));
				a.setSubstance(reSet.getString("Substance"));
				a.setReaction(reSet.getString("Reaction"));
				a.setCategory(reSet.getString("Category"));
				a.setStatus(reSet.getString("Stat"));
				a.setSeverity(reSet.getString("Substance"));
				a.setInformationSource(reSet.getString("InformationSource"));
				a.setComments(reSet.getString("Comments"));
				a.setOnset(reSet.getDate("Onset"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return a;}
		
}
