package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbIncoming_drug_record;


public class Incoming_drug_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbIncoming_drug_record i,String DrugDescription,int Supplier,int VendorItem,int ProductKey,int InvoiceNumber,int QTYonhand,Date PurchaseDate,int QTYPurchased,double AcqCost,String Remark) {
		i.setDrugDescription(DrugDescription);
		i.setSupplier(Supplier);
		i.setVendorItem(VendorItem);
		i.setProductKey(ProductKey);
		i.setInvoiceNumber(InvoiceNumber);
		i.setQTYonhand(QTYonhand);
		i.setPurchaseDate(PurchaseDate);
		i.setQTYPurchased(QTYPurchased);
		i.setAcqCost(AcqCost);
		i.setRemark(Remark);
		
	}
	
	public static void id_setter(dbtbIncoming_drug_record i,int RecNo) {
		i.setRecNo(RecNo);
	}
	
	public static int save(dbtbIncoming_drug_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO incoming_drug_record(DrugDescription,Supplier,VendorItem,ProductKey,InvoiceNumber,QTYonhand,PurchaseDate,QTYPurchased,AcqCost,Remark)"
					+"VALUES(?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,i.getDrugDescription());
			preState.setInt(2,i.getSupplier());
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
	
	public static int update(dbtbIncoming_drug_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE incoming_drug_record SET DrugDescription=?,Supplier=?,VendorItem=?,ProductKey=?,InvoiceNumber=?,QTYonhand=?,PurchaseDate=?,QTYPurchased=?,AcqCost=?,Remark=?  WHERE RecNo=?");
			preState.setString(1,i.getDrugDescription());
			preState.setInt(2,i.getSupplier());
			preState.setInt(3,i.getVendorItem());
			preState.setInt(4,i.getProductKey());
			preState.setInt(5,i.getInvoiceNumber());
			preState.setInt(6,i.getQTYonhand());
			preState.setDate(7,i.getPurchaseDate());
			preState.setInt(8,i.getQTYPurchased());
			preState.setDouble(9,i.getAcqCost());
			preState.setString(10,i.getRemark());
			preState.setInt(11, i.getRecNo());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete (dbtbIncoming_drug_record i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM incoming_drug_record WHERE RecNo=?");
			preState.setInt(1, i.getRecNo());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbIncoming_drug_record> getAllRecords(){
		List<dbtbIncoming_drug_record> list=new ArrayList<dbtbIncoming_drug_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM incoming_drug_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbIncoming_drug_record i =  new dbtbIncoming_drug_record();
				i.setRecNo(reSet.getInt("RecNo"));
				i.setDrugDescription(reSet.getString("DrugDescription"));
				i.setSupplier(reSet.getInt("Supplier"));
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
	public static dbtbIncoming_drug_record getRecord(int id){
		dbtbIncoming_drug_record i=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM incoming_drug_record WHERE RecNo=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				i =  new dbtbIncoming_drug_record();
				i.setRecNo(reSet.getInt("RecNo"));
				i.setDrugDescription(reSet.getString("DrugDescription"));
				i.setSupplier(reSet.getInt("Supplier"));
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
