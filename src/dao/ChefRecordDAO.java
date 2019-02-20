package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;
public class ChefRecordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbchef_record d, String LastName,String FirstName,String MiddleName,Date DateBirth,String PlaceOfBirth,int Age,String Address,String City,int PinCode,String State,String Country,int Phone,String Mobile,String Email,String Designation,Date JoiningDate,String Specialization,String RegistrationNo,String RegistrationCode,Date RegistrationDate,String HospitalAffiliation) {
		d.setLastName(LastName);
		d.setFirstName(FirstName);
		d.setMiddleName(MiddleName);
		d.setDateBirth(DateBirth);
		d.setPlaceOfBirth(PlaceOfBirth);
		d.setAge(Age);
		d.setAddress(Address);
		d.setCity(City);
		d.setPinCode(PinCode);
		d.setState(State);
		d.setCountry(Country);
		d.setPhone(Phone);
		d.setMobile(Mobile);
		d.setEmail(Email);
		d.setDesignation(Designation);
		d.setJoiningDate(JoiningDate);
		
		d.setSpecialization(Specialization);
		d.setRegistrationNo(RegistrationNo);
		d.setRegistrationCode(RegistrationCode);
		d.setRegistrationDate(RegistrationDate);
		d.setHospitalAffiliation(HospitalAffiliation);
	}
	
	public static void id_setter(dbtbchef_record d,int chef_ID, int employeeC_id) {
		d.setchef_ID(chef_ID);
		d.setemployeeC_id(employeeC_id);
	}
	
	
	public static int save(dbtbchef_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO chef_record(LastName,FirstName,MiddleName,DateBirth,PlaceOfBirth,Age,Address,City,PinCode,State,Country,Phone,Mobile,Email,Designation,JoiningDate,Specialization,RegistrationNo,RegistrationCode,RegistrationDate,HospitalAffiliation)"
					+"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	public static int update(dbtbchef_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE chef_record set LastName=?,FirstName=?,MiddleName=?,DateBirth=?,PlaceOfBirth=?,Age=?,Address=?,City=?,PinCode=?,State=?,Country=?,Phone=?,Mobile=?,Mobile=?,Designation=?,JoiningDate=?,Specialization=?,RegistrationNo=?,RegistrationCode=?,RegistrationDate=?,HospitalAffiliation=? WHERE Chef_ID=?");
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
			preState.setInt(22,d.getchef_ID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	public static int delete(dbtbchef_record d) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM chef_record WHERE Chef_ID=?");
		preState.setInt(1,d.getchef_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static List<dbtbchef_record> getAllRecords(){
		List<dbtbchef_record> list=new ArrayList<dbtbchef_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM chef_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbchef_record d = new dbtbchef_record();
				d.setchef_ID(reSet.getInt("chef_ID"));
				d.setemployeeC_id(reSet.getInt("EChefID"));
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
				d.setQualification(reSet.getByte("Photo"));
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
	public static dbtbchef_record getRecord(int id) {
		dbtbchef_record d= null;
		try{  
	    	conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from chef_record where Chef_ID=?");  
	        preState.setInt(1,id);  
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	            d=new dbtbchef_record();  
	            d.setchef_ID(reSet.getInt("chef_ID"));
				d.setemployeeC_id(reSet.getInt("EChefID"));
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
				d.setQualification(reSet.getByte("Photo"));
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
