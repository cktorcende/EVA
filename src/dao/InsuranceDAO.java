package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbInsurance;



public class InsuranceDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbInsurance i,String InsurancePlanCode,int RecordNO,String Name,String HelpDeskNO,String AddressLine1,String AddressLine2,String PlanBinNO,String City,int ProcessorControlNO,String State,int ZipNo,String SoftwareVendorID,String AlternatePhone,String Fax,String Remarks,String Email,String PharmacyIdQualifier,int PharmacyID,String CashPlan,String NCPDPVersion) {
		i.setInsurancePlanCode(InsurancePlanCode);
		i.setRecordNO(RecordNO);
		i.setName(Name);
		i.setHelpDeskNO(HelpDeskNO);
		i.setAddressLine1(AddressLine1);
		i.setAddressLine2(AddressLine2);
		i.setPlanBinNO(PlanBinNO);
		i.setCity(City);
		i.setProcessorControlNO(ProcessorControlNO);
		i.setState(State);
		i.setZipNo(ZipNo);
		i.setSoftwareVendorID(SoftwareVendorID);
		i.setAlternatePhone(AlternatePhone);
		i.setFax(Fax);
		i.setRemarks(Remarks);
		i.setEmail(Email);
		i.setPharmacyIdQualifier(PharmacyIdQualifier);
		i.setPharmacyID(PharmacyID);
		i.setCashPlan(CashPlan);

		i.setNCPDPVersion(NCPDPVersion);
	}
	public static void id_setter(dbtbInsurance i,int insurance_id) {
		i.setinsurance_id(insurance_id);
	}
	
	public static int save(dbtbInsurance i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO insurance (InsurancePlanCode,RecordNO,Name,HelpDeskNO,AddressLine1,AddressLine2,PlanBinNO,City,ProcessorControlNO,State,ZipNo,SoftwareVendorID,AlternatePhone,Fax,Remarks,Email,PharmacyIdQualifier,PharmacyID,CashPlan,NCPDPVersion) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,i.getInsurancePlanCode());
			preState.setInt(2,i.getRecordNO());
			preState.setString(3,i.getName());
			preState.setString(4,i.getHelpDeskNO());
			preState.setString(5,i.getAddressLine1());
			preState.setString(6,i.getAddressLine2());
			preState.setString(7,i.getPlanBinNO());
			preState.setString(8,i.getCity());
			preState.setInt(9,i.getProcessorControlNO());
			preState.setString(10,i.getState());
			preState.setInt(11,i.getZipNo());
			preState.setString(12,i.getSoftwareVendorID());
			preState.setString(13,i.getAlternatePhone());
			preState.setString(14,i.getFax());
			preState.setString(15,i.getRemarks());
			preState.setString(16,i.getEmail());
			preState.setString(17,i.getPharmacyIdQualifier());
			preState.setInt(18,i.getPharmacyID());
			preState.setString(19,i.getCashPlan());
			preState.setString(20,i.getNCPDPVersion());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static int update(dbtbInsurance i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE insurance SET InsurancePlanCode=?,RecordNO=?,Name=?,HelpDeskNO=?,AddressLine1=?,AddressLine2=?,PlanBinNO=?,City=?,ProcessorControlNO=?,State=?,ZipNo=?,SoftwareVendorID=?,AlternatePhone=?,Fax=?,Remarks=?,Email=?,PharmacyIdQualifier=?,PharmacyID=?,CashPlan=?,NCPDPVersion=?  WHERE insurance_id=?");
			preState.setString(1,i.getInsurancePlanCode());
			preState.setInt(2,i.getRecordNO());
			preState.setString(3,i.getName());
			preState.setString(4,i.getHelpDeskNO());
			preState.setString(5,i.getAddressLine1());
			preState.setString(6,i.getAddressLine2());
			preState.setString(7,i.getPlanBinNO());
			preState.setString(8,i.getCity());
			preState.setInt(9,i.getProcessorControlNO());
			preState.setString(10,i.getState());
			preState.setInt(11,i.getZipNo());
			preState.setString(12,i.getSoftwareVendorID());
			preState.setString(13,i.getAlternatePhone());
			preState.setString(14,i.getFax());
			preState.setString(15,i.getRemarks());
			preState.setString(16,i.getEmail());
			preState.setString(17,i.getPharmacyIdQualifier());
			preState.setInt(18,i.getPharmacyID());
			preState.setString(19,i.getCashPlan());
			preState.setString(20,i.getNCPDPVersion());
			preState.setInt(21, i.getinsurance_id());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	
	public static int delete (dbtbInsurance i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM insurance WHERE insurance_id=?");
			preState.setInt(1, i.getinsurance_id());
			Stat= preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbInsurance> getAllRecords(){
		List<dbtbInsurance> list=new ArrayList<dbtbInsurance>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM insurance");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbInsurance i = new dbtbInsurance();
				i.setinsurance_id(reSet.getInt("insurance_id"));
				i.setInsurancePlanCode(reSet.getString("InsurancePlanCode"));
				i.setRecordNO(reSet.getInt("RecordNO"));
				i.setName(reSet.getString("Name"));
				i.setHelpDeskNO(reSet.getString("HelpDeskNO"));
				i.setAddressLine1(reSet.getString("AddressLine1"));
				i.setAddressLine2(reSet.getString("AddressLine2"));
				i.setPlanBinNO(reSet.getString("PlanBinNO"));
				i.setCity(reSet.getString("City"));
				i.setProcessorControlNO(reSet.getInt("ProcessorControlNO"));
				i.setState(reSet.getString("State"));
				i.setZipNo(reSet.getInt("ZipNo"));
				i.setSoftwareVendorID(reSet.getString("SoftwareVendorID"));
				i.setAlternatePhone(reSet.getString("AlternatePhone"));
				i.setFax(reSet.getString("Fax"));
				i.setRemarks(reSet.getString("Remarks"));
				i.setEmail(reSet.getString("Email"));
				i.setPharmacyIdQualifier(reSet.getString("PharmacyIdQualifier"));
				i.setPharmacyID(reSet.getInt("PharmacyID"));
				i.setCashPlan(reSet.getString("CashPlan"));
				i.setNCPDPVersion(reSet.getString("NCPDPVersion"));
				list.add(i);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	
	public static dbtbInsurance getRecord(int id) {
		dbtbInsurance i = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from insurance where insurance_id=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	i = new dbtbInsurance();
	        	i.setinsurance_id(reSet.getInt("insurance_id"));
				i.setInsurancePlanCode(reSet.getString("InsurancePlanCode"));
				i.setRecordNO(reSet.getInt("RecordNO"));
				i.setName(reSet.getString("Name"));
				i.setHelpDeskNO(reSet.getString("HelpDeskNO"));
				i.setAddressLine1(reSet.getString("AddressLine1"));
				i.setAddressLine2(reSet.getString("AddressLine2"));
				i.setPlanBinNO(reSet.getString("PlanBinNO"));
				i.setCity(reSet.getString("City"));
				i.setProcessorControlNO(reSet.getInt("ProcessorControlNO"));
				i.setState(reSet.getString("State"));
				i.setZipNo(reSet.getInt("ZipNo"));
				i.setSoftwareVendorID(reSet.getString("SoftwareVendorID"));
				i.setAlternatePhone(reSet.getString("AlternatePhone"));
				i.setFax(reSet.getString("Fax"));
				i.setRemarks(reSet.getString("Remarks"));
				i.setEmail(reSet.getString("Email"));
				i.setPharmacyIdQualifier(reSet.getString("PharmacyIdQualifier"));
				i.setPharmacyID(reSet.getInt("PharmacyID"));
				i.setCashPlan(reSet.getString("CashPlan"));
				i.setNCPDPVersion(reSet.getString("NCPDPVersion"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return i;
	}
		
}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
