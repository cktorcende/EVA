package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbtranferd_record;

public class Tranferd_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbtranferd_record f,int DrugTID,int QTYTransferred,int D_NursingHomeID,Date DateofShipping,Date ExpectedArrivalDate,Date ExpirationDate,String ProductKey,String PackageSize,String UnitOfMeasure) {
		f.setDrugTID(DrugTID);
		f.setQTYTransferred(QTYTransferred);
		f.setD_NursingHomeID(D_NursingHomeID);
		f.setDateofShipping(DateofShipping);
		f.setExpectedArrivalDate(ExpectedArrivalDate);
		f.setExpirationDate(ExpirationDate);
		f.setProductKey(ProductKey);
		f.setPackageSize(PackageSize);
		f.setUnitOfMeasure(UnitOfMeasure);
	}
	public static void id_setter(dbtbtranferd_record f,int D_TransferID) {
		f.setD_TransferID(D_TransferID);
	}
	
	public static int save(dbtbtranferd_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO transferd_record(D_NursingHomeID,DrugTID,DateofShipping,ExpectedArrivalDate,QTYTransferred,ExpirationDate,ProductKey,PackageSize,UnitOfMeasure)"
					+  "VALUES(?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getD_NursingHomeID());
			preState.setInt(2, f.getDrugTID());
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
	
	public static int update(dbtbtranferd_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE transferd_record SET D_NursingHomeID=?,DrugTID=?,DateofShipping=?,ExpectedArrivalDate=?,QTYTransferred=?,ExpirationDate=?,ProductKey=?,PackageSize=?,UnitOfMeasure=? WHERE D_TransferID=?");
			preState.setInt(1, f.getD_NursingHomeID());
			preState.setInt(2, f.getDrugTID());
			preState.setDate(3, f.getDateofShipping());
			preState.setDate(4, f.getExpectedArrivalDate());
			preState.setInt(5, f.getQTYTransferred());
			preState.setDate(6, f.getExpirationDate());
			preState.setString(7, f.getProductKey());
			preState.setString(8, f.getPackageSize());
			preState.setString(9, f.getUnitOfMeasure());
			preState.setInt(10, f.getD_TransferID());
			Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static int delete(dbtbtranferd_record f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM transferd_record  WHERE D_TransferID=?");
		preState.setInt(1, f.getD_TransferID());
		Stat= preState.executeUpdate();
		}
		catch (Exception ex) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbtranferd_record> getAllRecords(){
		List<dbtbtranferd_record> list=new ArrayList<dbtbtranferd_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transfers_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbtranferd_record f = new dbtbtranferd_record();
				f.setD_TransferID(reSet.getInt("S_TransferID"));
				f.setDrugTID(reSet.getInt("DrugTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setD_NursingHomeID(reSet.getInt("S_NursingHomeID"));
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
	
	public static dbtbtranferd_record getRecord(int id){
		dbtbtranferd_record f=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from transferd_record WHERE D_TransferID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				 f = new dbtbtranferd_record();
				f.setD_TransferID(reSet.getInt("D_TransferID"));
				f.setDrugTID(reSet.getInt("DrugTID"));
				f.setQTYTransferred(reSet.getInt("QTYTransferred"));
				f.setD_NursingHomeID(reSet.getInt("D_NursingHomeID"));
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
