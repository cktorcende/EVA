package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;

import dbtb.dbtbtransferf_record;
public class Tranferf_recordDao {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbtransferf_record f,int FoodTID,int QTYTransferred,int F_NursingHomeID,Date DateofShipping,Date ExpectedArrivalDate,Date ExpirationDate,String ProductKey,String PackageSize,String UnitOfMeasure) {
		f.setFoodTID(FoodTID);
		f.setQTYTransferred(QTYTransferred);
		f.setF_NursingHomeID(F_NursingHomeID);
		f.setDateofShipping(DateofShipping);
		f.setExpectedArrivalDate(ExpectedArrivalDate);
		f.setExpirationDate(ExpirationDate);
		f.setProductKey(ProductKey);
		f.setPackageSize(PackageSize);
		f.setUnitOfMeasure(UnitOfMeasure);
	}
	public static void id_setter(dbtbtransferf_record f,int F_TransferID) {
		f.setF_TransferID(F_TransferID);
	}
	
	public static int save(dbtbtransferf_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO transferf_record(F_NursingHomeID,FoodTID,DateofShipping,ExpectedArrivalDate,QTYTransferred,ExpirationDate,ProductKey,PackageSize,UnitOfMeasure)"
					+  "VALUES(?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getF_NursingHomeID());
			preState.setInt(2, f.getFoodTID());
			preState.setDate(3, f.getDateofShipping());
			preState.setDate(4, f.getExpectedArrivalDate());
			preState.setInt(5, f.getQTYTransferred());
			preState.setDate(6, f.getExpirationDate());
			preState.setString(7, f.getProductKey());
			preState.setString(8, f.getPackageSize());
			preState.setString(9, f.getUnitOfMeasure());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
				
	}
	
	public static int update(dbtbtransferf_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE transferf_record SET F_NursingHomeID=?,FoodTID=?,DateofShipping=?,ExpectedArrivalDate=?,QTYTransferred=?,ExpirationDate=?,ProductKey=?,PackageSize=?,UnitOfMeasure=? WHERE F_TransferID=?");
			preState.setInt(1, f.getF_NursingHomeID());
			preState.setInt(2, f.getFoodTID());
			preState.setDate(3, f.getDateofShipping());
			preState.setDate(4, f.getExpectedArrivalDate());
			preState.setInt(5, f.getQTYTransferred());
			preState.setDate(6, f.getExpirationDate());
			preState.setString(7, f.getProductKey());
			preState.setString(8, f.getPackageSize());
			preState.setString(9, f.getUnitOfMeasure());
			preState.setInt(10, f.getF_TransferID());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static int delete(dbtbtransferf_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM transferf_record  WHERE F_TransferID=?");
		preState.setInt(1, f.getF_TransferID());
		Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbtransferf_record> getAllRecords(){
		List<dbtbtransferf_record> list=new ArrayList<dbtbtransferf_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transferf_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbtransferf_record f = new dbtbtransferf_record();
				f.setF_TransferID(reSet.getInt("F_TransferID"));
				f.setFoodTID(reSet.getInt("FoodTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setF_NursingHomeID(reSet.getInt("F_NursingHomeID"));
				f.setDateofShipping(reSet.getDate("DateofShipping"));
				f.setExpectedArrivalDate(reSet.getDate("ExpectedArrivalDate"));
				f.setExpirationDate(reSet.getDate("ExpirationDate"));
				f.setProductKey(reSet.getString("ProductKey"));
				f.setPackageSize(reSet.getString("PackageSize"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				list.add(f);
			}}
		catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
			return list;
			}
	
	public static dbtbtransferf_record getRecord(int id){
		dbtbtransferf_record f=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transferf_record WHERE F_TransferID=?");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				 f = new dbtbtransferf_record();
				f.setF_TransferID(reSet.getInt("F_TransferID"));
				f.setFoodTID(reSet.getInt("FoodTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setF_NursingHomeID(reSet.getInt("F_NursingHomeID"));
				f.setDateofShipping(reSet.getDate("DateofShipping"));
				f.setExpectedArrivalDate(reSet.getDate("ExpectedArrivalDate"));
				f.setExpirationDate(reSet.getDate("ExpirationDate"));
				f.setProductKey(reSet.getString("ProductKey"));
				f.setPackageSize(reSet.getString("PackageSize"));
				f.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				
			}}
		catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
			return f;
			}
}
