package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbVendor_record;


public class vendor_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbVendor_record v,String VendorName,int RecordNumber,String ContactName,String AddressLine1,String AddressLine2,String City,String State,int Zip,String Phone,String Fax) {
		v.setVendorName(VendorName);
		v.setRecordNumber(RecordNumber);
		v.setContactName(ContactName);
		v.setAddressLine1(AddressLine1);
		v.setAddressLine2(AddressLine2);
		v.setCity(City);
		v.setState(State);
		v.setZip(Zip);
		v.setPhone(Phone);
		v.setFax(Fax);
	}
	
	public static void id_setter(dbtbVendor_record v,int VendorID) {
		v.setVendorID(VendorID);
	}
	
	public static int save(dbtbVendor_record v) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO vendor_record(VendorName,RecordNumber,ContactName,AddressLine1,AddressLine2,City,State,Zip,Phone,Fax)"+
								"VALUES (?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1, v.getVendorName());
			preState.setInt(2, v.getRecordNumber());
			preState.setString(3, v.getContactName());
			preState.setString(4, v.getAddressLine1());
			preState.setString(5, v.getAddressLine2());
			preState.setString(6, v.getCity());
			preState.setString(7, v.getState());
			preState.setInt(8, v.getZip());
			preState.setString(9, v.getPhone());
			preState.setString(10, v.getFax());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
			
	}
	
	public static int update (dbtbVendor_record v) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE vendor_record SET VendorName=?,RecordNumber=?,ContactName=?,AddressLine1=?,AddressLine2=?,City=?,State=?,Zip=?,Phone=?,Fax=? WHERE VendorID=?");
				preState.setString(1, v.getVendorName());
				preState.setInt(2, v.getRecordNumber());
				preState.setString(3, v.getContactName());
				preState.setString(4, v.getAddressLine1());
				preState.setString(5, v.getAddressLine2());
				preState.setString(6, v.getCity());
				preState.setString(7, v.getState());
				preState.setInt(8, v.getZip());
				preState.setString(9, v.getPhone());
				preState.setString(10, v.getFax());
				preState.setInt(11, v.getVendorID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
	}
	
	public static int delete(dbtbVendor_record v) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM vendor_record WHERE VendorID=?");
			preState.setInt(1, v.getVendorID());
			Stat = preState.executeUpdate();
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
			return Stat;
	}
	
	public static  List<dbtbVendor_record> getAllRecords(){
		List<dbtbVendor_record> list=new ArrayList<dbtbVendor_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM vendor_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbVendor_record v = new dbtbVendor_record();
				v.setVendorID(reSet.getInt("VendorID"));
				v.setVendorName(reSet.getString("VendorName"));
				v.setRecordNumber(reSet.getInt("RecordNumber"));
				v.setContactName(reSet.getString("ContactName"));
				v.setAddressLine1(reSet.getString("AddressLine1"));
				v.setAddressLine2(reSet.getString("AddressLine2"));
				v.setCity(reSet.getString("City"));
				v.setState(reSet.getString("State"));
				v.setZip(reSet.getInt("Zip"));
				v.setPhone(reSet.getString("Phone"));
				v.setFax(reSet.getString("Fax"));
				list.add(v);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static  dbtbVendor_record getRecord(int id){
		dbtbVendor_record v=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM vendor_record WHERE VendorID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				v = new dbtbVendor_record();
				v.setVendorID(reSet.getInt("VendorID"));
				v.setVendorName(reSet.getString("VendorName"));
				v.setRecordNumber(reSet.getInt("RecordNumber"));
				v.setContactName(reSet.getString("ContactName"));
				v.setAddressLine1(reSet.getString("AddressLine1"));
				v.setAddressLine2(reSet.getString("AddressLine2"));
				v.setCity(reSet.getString("City"));
				v.setState(reSet.getString("State"));
				v.setZip(reSet.getInt("Zip"));
				v.setPhone(reSet.getString("Phone"));
				v.setFax(reSet.getString("Fax"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return v;
			}
}
