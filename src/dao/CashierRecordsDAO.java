package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;

public class CashierRecordsDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void string_setter(dbtbcashier_record c,String PlaceOfBirth,String LastName,String FirstName,String MiddleName,String Address,String City,String State,String Country,String Mobile,String Email,String Designation,String Specialization,String RegistrationNo,String RegistrationCode,String HospitalAffiliation) {
		c.setPlaceOfBirth(PlaceOfBirth);
		c.setLastName(LastName);
		c.setFirstName(FirstName);
		c.setMiddleName(MiddleName);
		c.setAddress(Address);
		c.setCity(City);
		c.setState(State);
		c.setCountry(Country);
		c.setMobile(Mobile);
		c.setEmail(Email);
		c.setDesignation(Designation);
		c.setSpecialization(Specialization);
		c.setRegistrationNo(RegistrationNo);
		c.setRegistrationCode(RegistrationCode);
		c.setHospitalAffiliation(HospitalAffiliation);}
		
	public static void int_setter(dbtbcashier_record c,int Age,int PinCode,int Phone,Date DateBirth,Date JoiningDate,Date RegistrationDate) {
		c.setDateBirth(DateBirth);
		c.setJoiningDate(JoiningDate);
		c.setRegistrationDate(RegistrationDate);
		c.setAge(Age);
		c.setPinCode(PinCode);
		c.setPhone(Phone);
				
	
	}
	public static void id_setter(dbtbcashier_record c,int Cashier_ID, int employeeCS_ID){
		c.setCashier_ID(Cashier_ID);
		c.setemployeeCS_ID(employeeCS_ID);
	}
		
	
	public static int save(dbtbcashier_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cashier_record(LastName,FirstName,MiddleName,DateBirth,PlaceOfBirth,Age,Address,City,PinCode,State,Country,Phone,Mobile,Email,Designation,JoiningDate,Specialization,RegistrationNo,RegistrationCode,RegistrationDate,HospitalAffiliation)"
					+"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,d.getLastName());
			preState.setString(2,d.getFirstName());
			preState.setString(3,d.getMiddleName());
			preState.setDate(4,d.getDateBirth());
			preState.setString(5,d.getPlaceOfBirth());
			preState.setInt(6,d.getAge());
			preState.setString(7,d.getAddress());
			preState.setString(8,d.getCity());
			preState.setInt(9,d.getPinCode());
			preState.setString(10,d.getState());
			preState.setString(11,d.getCountry());
			preState.setInt(12,d.getPhone());
			preState.setString(13,d.getMobile());
			preState.setString(14,d.getEmail());
			preState.setString(15,d.getDesignation());
			preState.setDate(16,d.getJoiningDate());
			preState.setString(17,d.getSpecialization());
			preState.setString(18,d.getRegistrationNo());
			preState.setString(19,d.getRegistrationCode());
			preState.setDate(20,d.getRegistrationDate());
			preState.setString(21,d.getHospitalAffiliation());	
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	public static int update(dbtbcashier_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cashier_record SET LastName=?,FirstName=?,MiddleName=?,DateBirth=?,PlaceOfBirth=?,Age=?,Address=?,City=?,PinCode=?,State=?,Country=?,Phone=?,Mobile=?,Mobile=?,Designation=?,JoiningDate=?,Qualification=?,Specialization=?,RegistrationNo=?,RegistrationCode=?,RegistrationDate=?,HospitalAffiliation=? WHERE Cashier_ID=?");
			preState.setString(1,d.getLastName());
			preState.setString(2,d.getFirstName());
			preState.setString(3,d.getMiddleName());
			preState.setDate(4,d.getDateBirth());
			preState.setString(5,d.getPlaceOfBirth());
			preState.setInt(6,d.getAge());
			preState.setString(7,d.getAddress());
			preState.setString(8,d.getCity());
			preState.setInt(9,d.getPinCode());
			preState.setString(10,d.getState());
			preState.setString(11,d.getCountry());
			preState.setInt(12,d.getPhone());
			preState.setString(13,d.getMobile());
			preState.setString(14,d.getEmail());
			preState.setString(15,d.getDesignation());
			preState.setDate(16,d.getJoiningDate());
			preState.setString(17,d.getSpecialization());
			preState.setString(18,d.getRegistrationNo());
			preState.setString(19,d.getRegistrationCode());
			preState.setDate(20,d.getRegistrationDate());
			preState.setString(21,d.getHospitalAffiliation());	
			preState.setInt(22,d.getCashier_ID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	public static int delete(dbtbcashier_record d) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM cashier_record WHERE Cashier_ID=?");
		preState.setInt(1,d.getCashier_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static List<dbtbcashier_record> getAllRecords(){
		List<dbtbcashier_record> list=new ArrayList<dbtbcashier_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cashier_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcashier_record d = new dbtbcashier_record();
				d.setCashier_ID(reSet.getInt("Cashier_ID"));
				d.setemployeeCS_ID(reSet.getInt("employeeCS_ID"));
				d.setLastName(reSet.getString("LastName"));
				d.setFirstName(reSet.getString("FirstName"));
				d.setMiddleName(reSet.getString("MiddleName"));
				d.setDateBirth(reSet.getDate("DateBirth"));
				d.setPlaceOfBirth(reSet.getString("PlaceOfBirth"));
				d.setAge(reSet.getInt("Age"));
				d.setAddress(reSet.getString("Address"));
				d.setCity(reSet.getString("City"));
				d.setPinCode(reSet.getInt("PinCode"));
				d.setState(reSet.getString("State"));
				d.setCountry(reSet.getString("Country"));
				d.setPhone(reSet.getInt("Phone"));
				d.setMobile(reSet.getString("Mobile"));
				d.setEmail(reSet.getString("Email"));
				d.setDesignation(reSet.getString("Designation"));
				d.setJoiningDate(reSet.getDate("JoiningDate"));
				d.setSpecialization(reSet.getString("Specialization"));
				d.setRegistrationNo(reSet.getString("RegistrationNo"));
				d.setRegistrationCode(reSet.getString("RegistrationCode"));
				d.setRegistrationDate(reSet.getDate("RegistrationDate"));
				d.setHospitalAffiliation(reSet.getString("HospitalAffiliation"));
				list.add(d);
				}}
	catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
    return list;
	}
	public static dbtbcashier_record getRecord(int id) {
		dbtbcashier_record d= null;
		try{  
	    	conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from cashier_record where Cashier_ID=?");  
	        preState.setInt(1,id);  
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	            d=new dbtbcashier_record();  
	            d.setCashier_ID(reSet.getInt("Doctor_ID"));
				d.setemployeeCS_ID(reSet.getInt("employeeCS_ID"));
				d.setLastName(reSet.getString("LastName"));
				d.setFirstName(reSet.getString("FirstName"));
				d.setMiddleName(reSet.getString("MiddleName"));
				d.setDateBirth(reSet.getDate("DateBirth"));
				d.setPlaceOfBirth(reSet.getString("PlaceOfBirth"));
				d.setAge(reSet.getInt("Age"));
				d.setAddress(reSet.getString("Address"));
				d.setCity(reSet.getString("City"));
				d.setPinCode(reSet.getInt("PinCode"));
				d.setState(reSet.getString("State"));
				d.setCountry(reSet.getString("Country"));
				d.setPhone(reSet.getInt("Phone"));
				d.setMobile(reSet.getString("Mobile"));
				d.setEmail(reSet.getString("Email"));
				d.setDesignation(reSet.getString("Designation"));
				d.setJoiningDate(reSet.getDate("JoiningDate"));
				d.setSpecialization(reSet.getString("Specialization"));
				d.setRegistrationNo(reSet.getString("RegistrationNo"));
				d.setRegistrationCode(reSet.getString("RegistrationCode"));
				d.setRegistrationDate(reSet.getDate("RegistrationDate"));
				d.setHospitalAffiliation(reSet.getString("HospitalAffiliation"));
				
	        }  
	    }catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return d;
	}
}
