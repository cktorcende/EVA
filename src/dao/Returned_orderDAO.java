package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbreturned_order;

public class Returned_orderDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbreturned_order r,int SupplierID,int DrugID,int VendorItemNO,int DrugRecNO,int QTYReturned,int LotNO,Date ReturnedDate,Date LotExpirationDate,String DrugNDC,String Remarks,double CreditAmount) {
		r.setDrugID(DrugID);
		r.setVendorItemNO(VendorItemNO);
		r.setDrugRecNO(DrugRecNO);
		r.setQTYReturned(QTYReturned);
		r.setLotNO(LotNO);
		r.setReturnedDate(ReturnedDate);
		r.setLotExpirationDate(LotExpirationDate);
		r.setDrugNDC(DrugNDC);
		r.setRemarks(Remarks);
		r.setCreditAmount(CreditAmount);
		
	}
	
	public static void id_setter(dbtbreturned_order r,int ROrderID) {
		r.setROrderID(ROrderID);
	}
	
	public static int save(dbtbreturned_order r) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO returned_order(ReturnedDate,SupplierID,DrugID,VendorItemNO,DrugNDC,QTYReturned,CreditAmount,LotNO,LotExpirationDate,Remarks)"
							+ "VALUES(?,?,?,?,?,?,?,?,?,?)");
			preState.setDate(1, r.getReturnedDate());
			preState.setInt(2, r.getSupplierID());
			preState.setInt(3, r.getDrugID());
			preState.setInt(4, r.getVendorItemNO());
			preState.setString(5, r.getDrugNDC());
			preState.setInt(6, r.getQTYReturned());
			preState.setDouble(7, r.getCreditAmount());
			preState.setInt(8, r.getLotNO());
			preState.setDate(9, r.getLotExpirationDate());
			preState.setString(10, r.getRemarks());
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static int update(dbtbreturned_order r) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE returned_order SET ReturnedDate=?,SupplierID=?,DrugID=?,VendorItemNO=?,DrugNDC=?,QTYReturned=?,CreditAmount=?,LotNO=?,LotExpirationDate=?,Remarks=? WHERE ROrderID =?");
			preState.setDate(1, r.getReturnedDate());
			preState.setInt(2, r.getSupplierID());
			preState.setInt(3, r.getDrugID());
			preState.setInt(4, r.getVendorItemNO());
			preState.setString(5, r.getDrugNDC());
			preState.setInt(6, r.getQTYReturned());
			preState.setDouble(7, r.getCreditAmount());
			preState.setInt(8, r.getLotNO());
			preState.setDate(9, r.getLotExpirationDate());
			preState.setString(10, r.getRemarks());
			preState.setInt(11,r.getROrderID());
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static int delete(dbtbreturned_order r) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM returned_order WHERE ROrderID =?");
			preState.setInt(1,r.getROrderID());
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static List<dbtbreturned_order> getAllRecords(){
		List<dbtbreturned_order> list=new ArrayList<dbtbreturned_order>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from returned_order");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbreturned_order r = new dbtbreturned_order();
				r.setROrderID(reSet.getInt("ROrderID"));
				r.setDrugID(reSet.getInt("DrugID"));
				r.setVendorItemNO(reSet.getInt("VendorItemNO"));
				r.setDrugRecNO(reSet.getInt("DrugRecNO"));
				r.setQTYReturned(reSet.getInt("QTYReturned"));
				r.setLotNO(reSet.getInt("LotNO"));
				r.setReturnedDate(reSet.getDate("ReturnedDate"));
				r.setLotExpirationDate(reSet.getDate("LotExpirationDate"));
				r.setDrugNDC(reSet.getString("DrugNDC"));
				r.setRemarks(reSet.getString("Remarks"));
				r.setCreditAmount(reSet.getDouble("CreditAmount"));
				list.add(r);
			}}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	public static dbtbreturned_order getRecord(int id){
		dbtbreturned_order r=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from returned_order WHERE ROrderID =?");  
			preState.setInt(1,id); 
			reSet=preState.executeQuery();
			while(reSet.next()) {
				r = new dbtbreturned_order();
				r.setROrderID(reSet.getInt("ROrderID"));
				r.setDrugID(reSet.getInt("DrugID"));
				r.setVendorItemNO(reSet.getInt("VendorItemNO"));
				r.setDrugRecNO(reSet.getInt("DrugRecNO"));
				r.setQTYReturned(reSet.getInt("QTYReturned"));
				r.setLotNO(reSet.getInt("LotNO"));
				r.setReturnedDate(reSet.getDate("ReturnedDate"));
				r.setLotExpirationDate(reSet.getDate("LotExpirationDate"));
				r.setDrugNDC(reSet.getString("DrugNDC"));
				r.setRemarks(reSet.getString("Remarks"));
				r.setCreditAmount(reSet.getDouble("CreditAmount"));
				
			}}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return r;
				
			}
	
}
