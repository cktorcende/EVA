package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbincoming_supply_record;

public class Incoming_supply_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbincoming_supply_record i,String SupplyDescription,int S_SupplierID,int VendorItem,int ProductKey,int InvoiceNumber,int QTYonhand,Date PurchaseDate,int QTYPurchased,double AcqCost,String Remark) {
		i.setSupplyDescription(SupplyDescription);
		i.setS_SupplierID(S_SupplierID);
		i.setVendorItem(VendorItem);
		i.setProductKey(ProductKey);
		i.setInvoiceNumber(InvoiceNumber);
		i.setQTYonhand(QTYonhand);
		i.setPurchaseDate(PurchaseDate);
		i.setQTYPurchased(QTYPurchased);
		i.setAcqCost(AcqCost);
		i.setRemark(Remark);
		
	}
	
	public static void id_setter(dbtbincoming_supply_record i,int SupplyID) {
		i.setSupplyID(SupplyID);
	}
	
	public static int save(dbtbincoming_supply_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO incoming_supply_record(SupplyDescription,S_SupplierID,VendorItem,ProductKey,InvoiceNumber,QTYonhand,PurchaseDate,QTYPurchased,AcqCost,Remark)"
					+"VALUES(?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,i.getSupplyDescription());
			preState.setInt(2,i.getS_SupplierID());
			preState.setInt(3,i.getVendorItem());
			preState.setInt(4,i.getProductKey());
			preState.setInt(5,i.getInvoiceNumber());
			preState.setInt(6,i.getQTYonhand());
			preState.setDate(7,i.getPurchaseDate());
			preState.setInt(8,i.getQTYPurchased());
			preState.setDouble(9,i.getAcqCost());
			preState.setString(10,i.getRemark());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int update(dbtbincoming_supply_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE incoming_food_record SET SupplyDescription=?,S_SupplierID=?,VendorItem=?,ProductKey=?,InvoiceNumber=?,QTYonhand=?,PurchaseDate=?,QTYPurchased=?,AcqCost=?,Remark=?  WHERE SupplyID=?");
			preState.setString(1,i.getSupplyDescription());
			preState.setInt(2,i.getS_SupplierID());
			preState.setInt(3,i.getVendorItem());
			preState.setInt(4,i.getProductKey());
			preState.setInt(5,i.getInvoiceNumber());
			preState.setInt(6,i.getQTYonhand());
			preState.setDate(7,i.getPurchaseDate());
			preState.setInt(8,i.getQTYPurchased());
			preState.setDouble(9,i.getAcqCost());
			preState.setString(10,i.getRemark());
			preState.setInt(11, i.getSupplyID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete (dbtbincoming_supply_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM incoming_food_record WHERE SupplyID=?");
			preState.setInt(1, i.getSupplyID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbincoming_supply_record> getAllRecords(){
		List<dbtbincoming_supply_record> list=new ArrayList<dbtbincoming_supply_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM incoming_food_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbincoming_supply_record i =  new dbtbincoming_supply_record();
				i.setSupplyID(reSet.getInt("SupplyID"));
				i.setSupplyDescription(reSet.getString("SupplyDescription"));
				i.setS_SupplierID(reSet.getInt("S_SupplierID"));
				i.setVendorItem(reSet.getInt("VendorItem"));
				i.setProductKey(reSet.getInt("ProductKey"));
				i.setInvoiceNumber(reSet.getInt("setInvoiceNumber"));
				i.setQTYonhand(reSet.getInt("QTYonhand"));
				i.setPurchaseDate(reSet.getDate("PurchaseDate"));
				i.setQTYPurchased(reSet.getInt("QTYPurchased"));
				i.setAcqCost(reSet.getInt("AcqCost"));
				i.setRemark(reSet.getString("Remark"));
				
				list.add(i);
			}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
					return list;
			}
	public static dbtbincoming_supply_record getRecord(int id){
		dbtbincoming_supply_record i=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM incoming_food_record WHERE SupplyID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				i =  new dbtbincoming_supply_record();
				i.setSupplyID(reSet.getInt("SupplyID"));
				i.setSupplyDescription(reSet.getString("SupplyDescription"));
				i.setS_SupplierID(reSet.getInt("S_SupplierID"));
				i.setVendorItem(reSet.getInt("VendorItem"));
				i.setProductKey(reSet.getInt("ProductKey"));
				i.setInvoiceNumber(reSet.getInt("setInvoiceNumber"));
				i.setQTYonhand(reSet.getInt("QTYonhand"));
				i.setPurchaseDate(reSet.getDate("PurchaseDate"));
				i.setQTYPurchased(reSet.getInt("QTYPurchased"));
				i.setAcqCost(reSet.getInt("AcqCost"));
				i.setRemark(reSet.getString("Remark"));
				
				
			}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
					return i;
			}
}
