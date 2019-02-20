package dao;

import java.sql.*;


import dbtb.dbtbp_insurance;
import conn.DbCon;

import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;


public class P_InsuranceDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbp_insurance i,int Subscriber_ID,int Insurance,String Plan,Date From, Date To,String Coverage,int SubscriberNo,String Relationship,int GroupNo,String Copay,String Deductible,String CoInsurance,String Address,String City,String State,int Zip,String Country) {
		i.setSubscriber_ID(Subscriber_ID);
		i.setInsurance(Insurance);
		i.setPlan(Plan);
		i.setFrom(From);
		i.setTo(To);
		i.setCoverage(Coverage);
		i.setSubscriberNo(SubscriberNo);
		i.setRelationship(Relationship);
		i.setGroupNo(GroupNo);
		i.setCopay(Copay);
		i.setDeductible(Deductible);
		i.setCoInsurance(CoInsurance);
		i.setAddress(Address);
		i.setCity(City);
		i.setState(State);
		i.setZip(Zip);
		i.setCountry(Country);
	}
	
	public static void id_setter(dbtbp_insurance i,int insurance_id) {
		i.setinsurance_id(insurance_id);
	}
	
	public static int save(dbtbp_insurance i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO p_insurance (Subscriber_ID,Insuranceid,Plan,From,To,Coverage,SubscriberNo,Relationship,GroupNo,Copay,Deductible,CoInsurance,Address,City,State,Zip,Country)"
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setInt(1,i.getSubscriber_ID());
			preState.setInt(2,i.getInsurance());
			preState.setString(3,i.getPlan());
			preState.setDate(4,i.getFrom());
			preState.setDate(5,i.getTo());
			preState.setString(6,i.getCoverage());
			preState.setInt(7,i.getSubscriberNo());
			preState.setString(8,i.getRelationship());
			preState.setInt(9,i.getGroupNo());
			preState.setString(10,i.getCopay());
			preState.setString(11,i.getDeductible());
			preState.setString(12,i.getCoInsurance());
			preState.setString(13,i.getAddress());
			preState.setString(14,i.getCity());
			preState.setString(15,i.getState());
			preState.setInt(16,i.getZip());
			preState.setString(17,i.getCountry());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int update(dbtbp_insurance i) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE p_insurance SET Subscriber_ID=?,Insuranceid=?,Plan=?,From=?,To=?,Coverage=?,SubscriberNo=?,Relationship=?,GroupNo=?,Copay=?,Deductible=?,CoInsurance=?,Address=?,City=?,State=?,Zip=?,Country=? WHERE insurance_id=?");
			preState.setInt(1,i.getSubscriber_ID());
			preState.setInt(2,i.getInsurance());
			preState.setString(3,i.getPlan());
			preState.setDate(4,i.getFrom());
			preState.setDate(5,i.getTo());
			preState.setString(6,i.getCoverage());
			preState.setInt(7,i.getSubscriberNo());
			preState.setString(8,i.getRelationship());
			preState.setInt(9,i.getGroupNo());
			preState.setString(10,i.getCopay());
			preState.setString(11,i.getDeductible());
			preState.setString(12,i.getCoInsurance());
			preState.setString(13,i.getAddress());
			preState.setString(14,i.getCity());
			preState.setString(15,i.getState());
			preState.setInt(16,i.getZip());
			preState.setString(17,i.getCountry());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete(dbtbp_insurance i) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM p_insurance WHERE insurance_id=?");
		preState.setInt(1,i.getinsurance_id());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static  List<dbtbp_insurance> getAllRecords(){
		List<dbtbp_insurance> list=new ArrayList<dbtbp_insurance>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM p_insurance");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbp_insurance i = new dbtbp_insurance();
				i.setinsurance_id(reSet.getInt("insurance_id"));
				i.setSubscriber_ID(reSet.getInt("Subscriber_ID"));
				i.setInsurance(reSet.getInt("Insuranceid"));
				i.setPlan(reSet.getString("Plan"));
				i.setFrom(reSet.getDate("From"));
				i.setTo(reSet.getDate("To"));
				i.setCoverage(reSet.getString("Coverage"));
				i.setSubscriberNo(reSet.getInt("SubscriberNo"));
				i.setRelationship(reSet.getString("Relationship"));
				i.setGroupNo(reSet.getInt("GroupNo"));
				i.setCopay(reSet.getString("Copay"));
				i.setDeductible(reSet.getString("Deductible"));
				i.setCoInsurance(reSet.getString("CoInsurance"));
				i.setAddress(reSet.getString("Address"));
				i.setCity(reSet.getString("City"));
				i.setState(reSet.getString("State"));
				i.setZip(reSet.getInt("Zip"));
				i.setCountry(reSet.getString("Country"));
				list.add(i);
				}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
				}
	
	public static dbtbp_insurance getRecord(int id) {
		dbtbp_insurance i= null;
		try{  
	    	conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from p_insurance where insurance_id=?");  
	        preState.setInt(1,id);  
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	i= new dbtbp_insurance();
	        	i.setinsurance_id(reSet.getInt("insurance_id"));
	        	i.setSubscriber_ID(reSet.getInt("Subscriber_ID"));
				i.setInsurance(reSet.getInt("Insuranceid"));
				i.setPlan(reSet.getString("Plan"));
				i.setFrom(reSet.getDate("From"));
				i.setTo(reSet.getDate("To"));
				i.setCoverage(reSet.getString("Coverage"));
				i.setSubscriberNo(reSet.getInt("SubscriberNo"));
				i.setRelationship(reSet.getString("Relationship"));
				i.setGroupNo(reSet.getInt("GroupNo"));
				i.setCopay(reSet.getString("Copay"));
				i.setDeductible(reSet.getString("Deductible"));
				i.setCoInsurance(reSet.getString("CoInsurance"));
				i.setAddress(reSet.getString("Address"));
				i.setCity(reSet.getString("City"));
				i.setState(reSet.getString("State"));
				i.setZip(reSet.getInt("Zip"));
				i.setCountry(reSet.getString("Country"));
	        	
	        }  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return i;
	}
}
