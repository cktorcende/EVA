package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;

import dbtb.dbtbContact_person;

public class Contact_personDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_Setter(dbtbContact_person c, String ContactPerson,String Relationship,String PrimaryAddress,String PCity,String SecondaryAddress,String SCity,String Mobile,String Work,String WorkPhone,String WorkAddress,int Age,int Phone,int ContactNo) {
		c.setContactPerson(ContactPerson);
		c.setRelationship(Relationship);
		c.setPrimaryAddress(PrimaryAddress);
		c.setPCity(PCity);
		c.setSecondaryAddress(SecondaryAddress);
		c.setSCity(SCity);
		c.setMobile(Mobile);
		c.setWork(Work);
		c.setWorkPhone(WorkPhone);
		c.setWorkAddress(WorkAddress);
		c.setAge(Age);
		c.setPhone(Phone);
		c.setContactNo(ContactNo);
	}
	
	public static void id_Setter(dbtbContact_person c,int ContactID,int PTContactID) {
		c.setContactID(ContactID);
		c.setPTContactID(PTContactID);
	}
	
	public static int save(dbtbContact_person c) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO contact_person(ContactPerson,Relationship,Age,PrimaryAddress,PCity,SecondaryAddress,SCity,Mobile,Phone,ContactNo,Work,WorkPhone,WorkAddress)"
												+"VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");			
			preState.setString(1, c.getContactPerson());
			preState.setString(2, c.getRelationship());
			preState.setInt(3, c.getAge());
			preState.setString(4, c.getPrimaryAddress());
			preState.setString(5, c.getPCity());
			preState.setString(6, c.getSecondaryAddress());
			preState.setString(7, c.getSCity());
			preState.setString(8, c.getMobile());
			preState.setInt(9, c.getPhone());
			preState.setInt(10, c.getContactNo());
			preState.setString(11, c.getWork());
			preState.setString(12, c.getWorkPhone());
			preState.setString(13, c.getWorkAddress());
			Stat = preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int update(dbtbContact_person c) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE contact_person SET ContactPerson=?,Relationship=?,Age=?,PrimaryAddress=?,PCity=?,SecondaryAddress=?,SCity=?,Mobile=?,Phone=?,ContactNo=?,Work=?,WorkPhone=?,WorkAddress=? WHERE ContactID=?");

			preState.setString(1, c.getContactPerson());
			preState.setString(2, c.getRelationship());
			preState.setInt(3, c.getAge());
			preState.setString(4, c.getPrimaryAddress());
			preState.setString(5, c.getPCity());
			preState.setString(6, c.getSecondaryAddress());
			preState.setString(7, c.getSCity());
			preState.setString(8, c.getMobile());
			preState.setInt(9, c.getPhone());
			preState.setInt(10, c.getContactNo());
			preState.setString(11, c.getWork());
			preState.setString(12, c.getWorkPhone());
			preState.setString(13, c.getWorkAddress());
			preState.setInt(14,c.getContactID());
			Stat = preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int delete(dbtbContact_person c) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM contact_person WHERE ContactID=?");
			preState.setInt(1,c.getContactID());
			Stat = preState.executeUpdate();
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
		
	public static List<dbtbContact_person> getAllRecords(){
		List<dbtbContact_person> list=new ArrayList<dbtbContact_person>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM contact_person");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbContact_person c = new dbtbContact_person();
				c.setContactID(reSet.getInt("ContactID"));
				c.setPTContactID(reSet.getInt("PTContactID"));
				c.setContactPerson(reSet.getString("ContactPerson"));
				c.setRelationship(reSet.getString("Relationship"));
				c.setAge(reSet.getInt("Age"));
				c.setPrimaryAddress(reSet.getString("PrimaryAddress"));
				c.setPCity(reSet.getString("PCity"));
				c.setSecondaryAddress(reSet.getString("SecondaryAddress"));
				c.setSCity(reSet.getString("SCity"));
				c.setMobile(reSet.getString("Mobile"));
				c.setPhone(reSet.getInt("Phone"));
				c.setContactNo(reSet.getInt("ContactNo"));
				c.setWork(reSet.getString("Work"));
				c.setWorkPhone(reSet.getString("WorkPhone"));
				c.setWorkAddress(reSet.getString("WorkAddress"));
				list.add(c);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
		
	public static dbtbContact_person getRecord(int id) {
		dbtbContact_person c =null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from p_allergy where ContactID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	c= new dbtbContact_person();
	        	c.setContactID(reSet.getInt("ContactID"));
				c.setPTContactID(reSet.getInt("PTContactID"));
				c.setContactPerson(reSet.getString("ContactPerson"));
				c.setRelationship(reSet.getString("Relationship"));
				c.setAge(reSet.getInt("Age"));
				c.setPrimaryAddress(reSet.getString("PrimaryAddress"));
				c.setPCity(reSet.getString("PCity"));
				c.setSecondaryAddress(reSet.getString("SecondaryAddress"));
				c.setSCity(reSet.getString("SCity"));
				c.setMobile(reSet.getString("Mobile"));
				c.setPhone(reSet.getInt("Phone"));
				c.setContactNo(reSet.getInt("ContactNo"));
				c.setWork(reSet.getString("Work"));
				c.setWorkPhone(reSet.getString("WorkPhone"));
				c.setWorkAddress(reSet.getString("WorkAddress"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return c;
	}
}
