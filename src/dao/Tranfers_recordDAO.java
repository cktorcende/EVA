package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbtransfers_record;

public class Tranfers_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbtransfers_record f,int SupplyTID,int QTYTransferred,int S_NursingHomeID,Date DateofShipping,Date ExpectedArrivalDate,Date ExpirationDate,String ProductKey,String PackageSize,String UnitOfMeasure) {
		f.setSupplyTID(SupplyTID);
		f.setQTYTransferred(QTYTransferred);
		f.setS_NursingHomeID(S_NursingHomeID);
		f.setDateofShipping(DateofShipping);
		f.setExpectedArrivalDate(ExpectedArrivalDate);
		f.setExpirationDate(ExpirationDate);
		f.setProductKey(ProductKey);
		f.setPackageSize(PackageSize);
		f.setUnitOfMeasure(UnitOfMeasure);
	}
	public static void id_setter(dbtbtransfers_record f,int S_TransferID) {
		f.setS_TransferID(S_TransferID);
	}
	
	public static int save(dbtbtransfers_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO transfers_record(F_NursingHomeID,FoodTID,DateofShipping,ExpectedArrivalDate,QTYTransferred,ExpirationDate,ProductKey,PackageSize,UnitOfMeasure)"
					+  "VALUES(?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getS_NursingHomeID());
			preState.setInt(2, f.getSupplyTID());
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
	
	public static int update(dbtbtransfers_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE transfers_record SET F_NursingHomeID=?,FoodTID=?,DateofShipping=?,ExpectedArrivalDate=?,QTYTransferred=?,ExpirationDate=?,ProductKey=?,PackageSize=?,UnitOfMeasure=? WHERE S_TransferID=?");
			preState.setInt(1, f.getS_NursingHomeID());
			preState.setInt(2, f.getSupplyTID());
			preState.setDate(3, f.getDateofShipping());
			preState.setDate(4, f.getExpectedArrivalDate());
			preState.setInt(5, f.getQTYTransferred());
			preState.setDate(6, f.getExpirationDate());
			preState.setString(7, f.getProductKey());
			preState.setString(8, f.getPackageSize());
			preState.setString(9, f.getUnitOfMeasure());
			preState.setInt(10, f.getS_TransferID());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static int delete(dbtbtransfers_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM transfers_record  WHERE S_TransferID=?");
		preState.setInt(1, f.getS_TransferID());
		Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbtransfers_record> getAllRecords(){
		List<dbtbtransfers_record> list=new ArrayList<dbtbtransfers_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transfers_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbtransfers_record f = new dbtbtransfers_record();
				f.setS_TransferID(reSet.getInt("S_TransferID"));
				f.setSupplyTID(reSet.getInt("SupplyTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setS_NursingHomeID(reSet.getInt("S_NursingHomeID"));
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
	
	public static dbtbtransfers_record getRecord(int id){
		dbtbtransfers_record f=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transfers_record WHERE S_TransferID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				 f = new dbtbtransfers_record();
				f.setS_TransferID(reSet.getInt("S_TransferID"));
				f.setSupplyTID(reSet.getInt("SupplyTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setS_NursingHomeID(reSet.getInt("S_NursingHomeID"));
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
