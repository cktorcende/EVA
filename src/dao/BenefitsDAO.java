package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbBenefits;

public class BenefitsDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbBenefits b,int BPatientID,int BGuarantorID,String SSSno,String PhilHealthNo,String GSIS,String SCSID,double SSSDeductible,double PhilHealthDeductible,double GSISDeductible) {
		b.setBPatientID(BPatientID);
		b.setBGuarantorID(BGuarantorID);
		b.setSSSno(SSSno);
		b.setPhilHealthNo(PhilHealthNo);
		b.setGSIS(GSIS);
		b.setSCSID(SCSID);
		b.setSSSDeductible(SSSDeductible);
		b.setPhilHealthDeductible(PhilHealthDeductible);
		b.setGSISDeductible(GSISDeductible);
	}
	public static void id_setter(dbtbBenefits b,int BenefitsID) {
		b.setBenefitsID(BenefitsID);
	}
	
	public static int save(dbtbBenefits b) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("INSERT INTO benefits (BPatientID,BGuarantorID,SSSno,SSSDeductible,PhilHealthNo,PhilHealthDeductible,GSIS,GSISDeductible,SCSID)" +
					"VALLUES(?,?,?,?,?,?,?,?,?)");
		preState.setInt(1, b.getBPatientID());
		preState.setInt(2, b.getBGuarantorID());
		preState.setString(3, b.getSSSno());
		preState.setDouble(4, b.getSSSDeductible());
		preState.setString(5, b.getPhilHealthNo());
		preState.setDouble(6, b.getPhilHealthDeductible());
		preState.setString(7, b.getGSIS());
		preState.setDouble(8, b.getGSISDeductible());
		preState.setString(9, b.getSCSID());
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
		
	}
	
	public static int update(dbtbBenefits b) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("UPDATE benefits SET BPatientID=?,BGuarantorID=?,SSSno=?,SSSDeductible=?,PhilHealthNo=?,PhilHealthDeductible=?,GSIS=?,GSISDeductible=?,SCSID=? WHERE BenefitsID=?");
		preState.setInt(1, b.getBPatientID());
		preState.setInt(2, b.getBGuarantorID());
		preState.setString(3, b.getSSSno());
		preState.setDouble(4, b.getSSSDeductible());
		preState.setString(5, b.getPhilHealthNo());
		preState.setDouble(6, b.getPhilHealthDeductible());
		preState.setString(7, b.getGSIS());
		preState.setDouble(8, b.getGSISDeductible());
		preState.setString(9, b.getSCSID());
		preState.setInt(10, b.getBenefitsID());
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;	
	}
	
	public static int delete(dbtbBenefits b) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM benefits WHERE BenefitsID=?");
		preState.setInt(1, b.getBenefitsID());
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static  List<dbtbBenefits> getAllRecords(){
		List<dbtbBenefits> list=new ArrayList<dbtbBenefits>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM benefits");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbBenefits b = new dbtbBenefits();
				b.setBPatientID(reSet.getInt("BPatientID"));
				b.setBGuarantorID(reSet.getInt("BGuarantorID"));
				b.setSSSno(reSet.getString("SSSno"));
				b.setPhilHealthNo(reSet.getString("PhilHealthNo"));
				b.setGSIS(reSet.getString("GSIS"));
				b.setSCSID(reSet.getString("SCSID"));
				b.setSSSDeductible(reSet.getDouble("SSSDeductible"));
				b.setPhilHealthDeductible(reSet.getDouble("PhilHealthDeductible"));
				b.setGSISDeductible(reSet.getDouble("GSISDeductible"));
				list.add(b);
			}}
	catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return list;
			}
	
	public static  dbtbBenefits getRecord(int id){
		dbtbBenefits b =null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM benefits WHERE BenefitsID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				b = new dbtbBenefits();
				b.setBPatientID(reSet.getInt("BPatientID"));
				b.setBGuarantorID(reSet.getInt("BGuarantorID"));
				b.setSSSno(reSet.getString("SSSno"));
				b.setPhilHealthNo(reSet.getString("PhilHealthNo"));
				b.setGSIS(reSet.getString("GSIS"));
				b.setSCSID(reSet.getString("SCSID"));
				b.setSSSDeductible(reSet.getDouble("SSSDeductible"));
				b.setPhilHealthDeductible(reSet.getDouble("PhilHealthDeductible"));
				b.setGSISDeductible(reSet.getDouble("GSISDeductible"));
				
			}}
	catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return b;
			}
}
