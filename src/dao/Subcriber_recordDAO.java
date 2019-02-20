package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbsubscriber_record;

public class Subcriber_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbsubscriber_record s,String LastName,String FirstName,String MiddleName,Date DOB,int  SSNno,String Gender,String Address,String City,String State,int  Zip,String Country,String Phone,int Patient_ID) {
		s.setLastName(LastName);
		s.setFirstName(FirstName);
		s.setMiddleName(MiddleName);
		s.setDOB(DOB);
		s.setSSNno(SSNno);
		s.setGender(Gender);
		s.setAddress(Address);
		s.setCity(City);
		s.setState(State);
		s.setZip(Zip);
		s.setCountry(Country);
		s.setPhone(Phone);
		s.setPatient_ID(Patient_ID);
	
	}
	public static void id_setter(dbtbsubscriber_record s,int Subscriber_Id) {
		s.setSubscriber_Id(Subscriber_Id);
	}
	
	public static int save(dbtbsubscriber_record s) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO subscriber_record(LastName,FirstName,MiddleName,DOB,SSNno,Gender,Address,City,State,Zip,Country,Phone,Patient_ID)"
					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,s.getLastName());
			preState.setString(2,s.getFirstName());
			preState.setString(3,s.getMiddleName());
			preState.setDate(4,s.getDOB());
			preState.setInt(5,s.getSSNno());
			preState.setString(6,s.getGender());
			preState.setString(7,s.getAddress());
			preState.setString(8,s.getCity());
			preState.setString(9,s.getState());
			preState.setInt(10,s.getZip());
			preState.setString(11,s.getCountry());
			preState.setString(12,s.getPhone());
			preState.setInt(13,s.getPatient_ID());
			
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
		
	public static int update(dbtbsubscriber_record s) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE subscriber_record SET LastName=?,FirstName=?,MiddleName=?,DOB=?,SSNno=?,Gender=?,Address=?,City=?,State=?,Zip=?,Country=?,Phone=?,Patient_ID=? WHERE Subscriber_Id=?");
			preState.setString(1,s.getLastName());
			preState.setString(2,s.getFirstName());
			preState.setString(3,s.getMiddleName());
			preState.setDate(4,s.getDOB());
			preState.setInt(5,s.getSSNno());
			preState.setString(6,s.getGender());
			preState.setString(7,s.getAddress());
			preState.setString(8,s.getCity());
			preState.setString(9,s.getState());
			preState.setInt(10,s.getZip());
			preState.setString(11,s.getCountry());
			preState.setString(12,s.getPhone());
			preState.setInt(13,s.getPatient_ID());
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete(dbtbsubscriber_record s) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM subscriber_record WHERE Subscriber_Id=?");
		preState.setInt(1, s.getSubscriber_Id());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static List<dbtbsubscriber_record> getAllRecords(){
		List<dbtbsubscriber_record> list=new ArrayList<dbtbsubscriber_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM subscriber_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbsubscriber_record s = new dbtbsubscriber_record();
				s.setSubscriber_Id(reSet.getInt("Subscriber_Id"));
				s.setLastName(reSet.getString("LastName"));
				s.setFirstName(reSet.getString("FirstName"));
				s.setMiddleName(reSet.getString("MiddleName"));
				s.setDOB(reSet.getDate("DOB"));
				s.setSSNno(reSet.getInt("SSNno"));
				s.setGender(reSet.getString("Gender"));
				s.setAddress(reSet.getString("Address"));
				s.setCity(reSet.getString("City"));
				s.setState(reSet.getString("State"));
				s.setZip(reSet.getInt("Zip"));
				s.setCountry(reSet.getString("Country"));
				s.setPhone(reSet.getString("Phone"));
				s.setPatient_ID(reSet.getInt("Patient_ID"));
				list.add(s);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	
	public static dbtbsubscriber_record getRecord(int id) {
		dbtbsubscriber_record s= null;
		try{  
	    	conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from subscriber_record where Subscriber_Id=?");  
	        preState.setInt(1,id);  
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	s = new dbtbsubscriber_record();
				s.setSubscriber_Id(reSet.getInt("Subscriber_Id"));
				s.setLastName(reSet.getString("LastName"));
				s.setFirstName(reSet.getString("FirstName"));
				s.setMiddleName(reSet.getString("MiddleName"));
				s.setDOB(reSet.getDate("DOB"));
				s.setSSNno(reSet.getInt("SSNno"));
				s.setGender(reSet.getString("Gender"));
				s.setAddress(reSet.getString("Address"));
				s.setCity(reSet.getString("City"));
				s.setState(reSet.getString("State"));
				s.setZip(reSet.getInt("Zip"));
				s.setCountry(reSet.getString("Country"));
				s.setPhone(reSet.getString("Phone"));
				s.setPatient_ID(reSet.getInt("Patient_ID"));
	        }  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return s;
	        }
}
