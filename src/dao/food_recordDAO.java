package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;

import dbtb.dbtbfood_record;

public class food_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbfood_record f,String FoodDescription,String CasePack,String Brand,String CaseSubBreak,String Barcode,String UnitOfMeasure,String ActiveIngridient,String LotNo,int VendorID,int CaseWeight,int MaximumRefills,int CurrentQtyOnHand,int MinimumQtyOnHand) {
		f.setFoodDescription(FoodDescription);
		f.setCasePack(CasePack);
		f.setBrand(Brand);
		f.setCaseSubBreak(CaseSubBreak);
		f.setBarcode(Barcode);
		f.setUnitOfMeasure(UnitOfMeasure);
		f.setActiveIngridient(ActiveIngridient);
		f.setLotNo(LotNo);
		f.setVendorID(VendorID);
		f.setCaseWeight(CaseWeight);
		f.setMaximumRefills(MaximumRefills);
		f.setMinimumQtyOnHand(MinimumQtyOnHand);
		f.setCurrentQtyOnHand(CurrentQtyOnHand);
	
	}
	
	public static void date_setter(dbtbfood_record f,double DirectPrice,Date Expiration,Date LotExpDate) {
		f.setDirectPrice(DirectPrice);
		f.setExpiration(Expiration);
		f.setLotExpDate(LotExpDate);
	
		}
	
	public static void id_setter(dbtbfood_record f,int FoodID) {
		f.setFoodID(FoodID);
	}
	
	
	public static int save(dbtbfood_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO food_record(FoodDescription,CasePack,VendorID,Brand,CaseWeight,CaseSubBreak,Barcode,UnitOfMeasure,MaximumRefills,Expiration,ActiveIngridient,DirectPrice,LotExpDate,LotNo,MinimumQtyOnHand,CurrentQtyOnHand)"
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1, f.getFoodDescription());
			preState.setString(2, f.getCasePack());
			preState.setInt(3, f.getVendorID());
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
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int update(dbtbfood_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE food_record SET(FoodDescription=?,CasePack=?,VendorID=?,Brand=?,CaseWeight=?,CaseSubBreak=?,Barcode=?,UnitOfMeasure=?,MaximumRefills=?,Expiration=?,ActiveIngridient=?,DirectPrice=?,LotExpDate=?,LotNo=?,MinimumQtyOnHand=?,CurrentQtyOnHand=?) WHERE FoodID=?");  
			preState.setString(1, f.getFoodDescription());
			preState.setString(2, f.getCasePack());
			preState.setInt(3, f.getVendorID());
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
			preState.setInt(17, f.getFoodID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
			
	public static int delete(dbtbfood_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM food_record WHERE FoodID=?");
			preState.setInt(1, f.getFoodID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbfood_record> getAllRecords(){
		List<dbtbfood_record> list=new ArrayList<dbtbfood_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM food_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbfood_record f = new dbtbfood_record();
				f.setFoodID(reSet.getInt("FoodID"));
				f.setFoodDescription(reSet.getString("FoodDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setVendorID(reSet.getInt("VendorID"));
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
	
	public static List<dbtbfood_record> getMinimumRecords(){
		List<dbtbfood_record> list=new ArrayList<dbtbfood_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM food_record WHERE CurrentQtyOnHand<= MinimumQtyOnHand");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbfood_record f = new dbtbfood_record();
				f.setFoodID(reSet.getInt("FoodID"));
				f.setFoodDescription(reSet.getString("FoodDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setVendorID(reSet.getInt("VendorID"));
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
	
	public static dbtbfood_record getRecord(int id){
		dbtbfood_record f=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM food_record WHERE FoodID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbfood_record();
				f.setFoodID(reSet.getInt("FoodID"));
				f.setFoodDescription(reSet.getString("FoodDescription"));
				f.setCasePack(reSet.getString("CasePack"));
				f.setBrand(reSet.getString("Brand"));
				f.setCaseSubBreak(reSet.getString("CaseSubBreak"));
				f.setBarcode(reSet.getString("Barcode"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				f.setActiveIngridient(reSet.getString("ActiveIngridient"));
				f.setLotNo(reSet.getString("LotNo"));
				f.setVendorID(reSet.getInt("VendorID"));
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
