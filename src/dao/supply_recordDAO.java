package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;
import dbtb.dbtbsupply_record;
import conn.DbCon;

public class supply_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbsupply_record f,String SupplyDescription,String CasePack,String Brand,String CaseSubBreak,String Barcode,String UnitOfMeasure,String ActiveIngridient,String LotNo,int S_VendorID,int CaseWeight,int MaximumRefills,int CurrentQtyOnHand,int MinimumQtyOnHand) {
		f.setSupplyDescription(SupplyDescription);
		f.setCasePack(CasePack);
		f.setBrand(Brand);
		f.setCaseSubBreak(CaseSubBreak);
		f.setBarcode(Barcode);
		f.setUnitOfMeasure(UnitOfMeasure);
		f.setActiveIngridient(ActiveIngridient);
		f.setLotNo(LotNo);
		f.setS_VendorID(S_VendorID);
		f.setCaseWeight(CaseWeight);
		f.setMaximumRefills(MaximumRefills);
		f.setMinimumQtyOnHand(MinimumQtyOnHand);
		f.setCurrentQtyOnHand(CurrentQtyOnHand);
	
	}
	
	public static void date_setter(dbtbsupply_record f,double DirectPrice,Date Expiration,Date LotExpDate) {
		f.setDirectPrice(DirectPrice);
		f.setExpiration(Expiration);
		f.setLotExpDate(LotExpDate);
	
		}
	
	public static void id_setter(dbtbsupply_record f,int SupplyID) {
		f.setSupplyID(SupplyID);
	}
	
	
	public static int save(dbtbsupply_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO supply_record(SupplyDescription,CasePack,S_VendorID,Brand,CaseWeight,CaseSubBreak,Barcode,UnitOfMeasure,MaximumRefills,Expiration,ActiveIngridient,DirectPrice,LotExpDate,LotNo,MinimumQtyOnHand,CurrentQtyOnHand)"
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1, f.getSupplyDescription());
			preState.setString(2, f.getCasePack());
			preState.setInt(3, f.getS_VendorID());
			preState.setString(4, f.getBrand());
			preState.setInt(5, f.getCaseWeight());
			preState.setString(6, f.getCaseSubBreak());
			preState.setString(7, f.getBarcode());
			preState.setString(8, f.getUnitOfMeasure());
			preState.setInt(9, f.getMaximumRefills());
			preState.setDate(10, f.getExpiration());
			preState.setString(11, f.getActiveIngridient());
			preState.setDouble(12, f.getDirectPrice());
			preState.setDate(13, f.getLotExpDate());
			preState.setString(14, f.getLotNo());
			preState.setInt(15,f.getMinimumQtyOnHand());
			preState.setInt(16,f.getCurrentQtyOnHand());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int update(dbtbsupply_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE supply_record SET(SupplyDescription=?,CasePack=?,S_VendorID=?,Brand=?,CaseWeight=?,CaseSubBreak=?,Barcode=?,UnitOfMeasure=?,MaximumRefills=?,Expiration=?,ActiveIngridient=?,DirectPrice=?,LotExpDate=?,LotNo=?,MinimumQtyOnHand=?,CurrentQtyOnHand=?) WHERE SupplyID=?");  
			preState.setString(1, f.getSupplyDescription());
			preState.setString(2, f.getCasePack());
			preState.setInt(3, f.getS_VendorID());
			preState.setString(4, f.getBrand());
			preState.setInt(5, f.getCaseWeight());
			preState.setString(6, f.getCaseSubBreak());
			preState.setString(7, f.getBarcode());
			preState.setString(8, f.getUnitOfMeasure());
			preState.setInt(9, f.getMaximumRefills());
			preState.setDate(10, f.getExpiration());
			preState.setString(11, f.getActiveIngridient());
			preState.setDouble(12, f.getDirectPrice());
			preState.setDate(13, f.getLotExpDate());
			preState.setString(14, f.getLotNo());
			preState.setInt(15,f.getMinimumQtyOnHand());
			preState.setInt(16,f.getCurrentQtyOnHand());
			preState.setInt(17, f.getSupplyID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
			
	public static int delete(dbtbsupply_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM supply_record WHERE SupplyID=?");
			preState.setInt(1, f.getSupplyID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbsupply_record> getAllRecords(){
		List<dbtbsupply_record> list=new ArrayList<dbtbsupply_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM supply_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbsupply_record f = new dbtbsupply_record();
				f.setSupplyID(reSet.getInt("SupplyID"));
				f.setSupplyDescription(reSet.getString("SupplyDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setS_VendorID(reSet.getInt("S_VendorID"));
				f.setCaseWeight(reSet.getInt("CaseWeight"));
				f.setMaximumRefills(reSet.getInt("MaximumRefills"));
				f.setDirectPrice(reSet.getDouble("DirectPrice"));
				f.setExpiration(reSet.getDate("Expiration"));
				f.setLotExpDate(reSet.getDate("LotExpDate"));
				f.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				f.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	
	public static List<dbtbsupply_record> getMinimumRecords(){
		List<dbtbsupply_record> list=new ArrayList<dbtbsupply_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM supply_record WHERE CurrentQtyOnHand<=MinimumQtyOnHand");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbsupply_record f = new dbtbsupply_record();
				f.setSupplyID(reSet.getInt("SupplyID"));
				f.setSupplyDescription(reSet.getString("SupplyDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setS_VendorID(reSet.getInt("S_VendorID"));
				f.setCaseWeight(reSet.getInt("CaseWeight"));
				f.setMaximumRefills(reSet.getInt("MaximumRefills"));
				f.setDirectPrice(reSet.getDouble("DirectPrice"));
				f.setExpiration(reSet.getDate("Expiration"));
				f.setLotExpDate(reSet.getDate("LotExpDate"));
				f.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				f.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	public static dbtbsupply_record getRecord(int id){
		dbtbsupply_record f=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM supply_record WHERE SupplyID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbsupply_record();
				f.setSupplyID(reSet.getInt("SupplyID"));
				f.setSupplyDescription(reSet.getString("SupplyDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setS_VendorID(reSet.getInt("S_VendorID"));
				f.setCaseWeight(reSet.getInt("CaseWeight"));
				f.setMaximumRefills(reSet.getInt("MaximumRefills"));
				f.setDirectPrice(reSet.getDouble("DirectPrice"));
				f.setExpiration(reSet.getDate("Expiration"));
				f.setLotExpDate(reSet.getDate("LotExpDate"));
				f.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				f.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return f;
			}
}
