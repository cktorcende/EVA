package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbNurse_record;

public class NurseDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
		
	//Nurse
		public static void string_setterN(dbtbNurse_record c,String PlaceOfBirth,String LastName,String FirstName,String MiddleName,String Address,String City,String State,String Country,String Mobile,String Email,String Designation,byte Qualification,String Specialization,String RegistrationNo,String RegistrationCode,String HospitalAffiliation) {
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
			c.setQualification(Qualification);
			c.setSpecialization(Specialization);
			c.setRegistrationNo(RegistrationNo);
			c.setRegistrationCode(RegistrationCode);
			c.setHospitalAffiliation(HospitalAffiliation);}
			
		public static void int_setterN(dbtbNurse_record c,int Age,int PinCode,int Phone,Date DateBirth,Date JoiningDate,Date RegistrationDate) {
			c.setDateBirth(DateBirth);
			c.setJoiningDate(JoiningDate);
			c.setRegistrationDate(RegistrationDate);
			c.setAge(Age);
			c.setPinCode(PinCode);
			c.setPhone(Phone);}
		
		public static void id_setterN(dbtbNurse_record c, int Nurse_ID) {
			c.setNurse_ID(Nurse_ID);
		}
		
		public static int saveN(dbtbNurse_record n) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("INSERT INTO nurse_record (LastName,FirstName,MiddleName,DateBirth,PlaceOfBirth,Age,Address,City,PinCode,State,Country,Phone,Mobile,Email,Designation,JoiningDate,Specialization,RegistrationNo,RegistrationCode,RegistrationDate,HospitalAffiliation)"
						+"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				preState.setString(1,n.getLastName());
				preState.setString(2,n.getFirstName());
				preState.setString(3,n.getMiddleName());
				preState.setDate(4,n.getDateBirth());
				preState.setString(5,n.getPlaceOfBirth());
				preState.setInt(6,n.getAge());
				preState.setString(7,n.getAddress());
				preState.setString(8,n.getCity());
				preState.setInt(9,n.getPinCode());
				preState.setString(10,n.getState());
				preState.setString(11,n.getCountry());
				preState.setInt(12,n.getPhone());
				preState.setString(13,n.getMobile());
				preState.setString(14,n.getEmail());
				preState.setString(15,n.getDesignation());
				preState.setDate(16,n.getJoiningDate());
				preState.setString(17,n.getSpecialization());
				preState.setString(18,n.getRegistrationNo());
				preState.setString(19,n.getRegistrationCode());
				preState.setDate(20,n.getRegistrationDate());
				preState.setString(21,n.getHospitalAffiliation());	
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		
		public static int updateN(dbtbNurse_record n) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE nurse_record set LastName=?,FirstName=?,MiddleName=?,DateBirth=?,PlaceOfBirth=?,Age=?,Address=?,City=?,PinCode=?,State=?,Country=?,Phone=?,Mobile=?,Mobile=?,Designation=?,JoiningDate=?,Specialization=?,RegistrationNo=?,RegistrationCode=?,RegistrationDate=?,HospitalAffiliation=? WHERE Nurse_ID=?");
				preState.setString(1,n.getLastName());
				preState.setString(2,n.getFirstName());
				preState.setString(3,n.getMiddleName());
				preState.setDate(4,n.getDateBirth());
				preState.setString(5,n.getPlaceOfBirth());
				preState.setInt(6,n.getAge());
				preState.setString(7,n.getAddress());
				preState.setString(8,n.getCity());
				preState.setInt(9,n.getPinCode());
				preState.setString(10,n.getState());
				preState.setString(11,n.getCountry());
				preState.setInt(12,n.getPhone());
				preState.setString(13,n.getMobile());
				preState.setString(14,n.getEmail());
				preState.setString(15,n.getDesignation());
				preState.setDate(16,n.getJoiningDate());
				preState.setString(17,n.getSpecialization());
				preState.setString(18,n.getRegistrationNo());
				preState.setString(19,n.getRegistrationCode());
				preState.setDate(20,n.getRegistrationDate());
				preState.setString(21,n.getHospitalAffiliation());
				preState.setInt(22, n.getNurse_ID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		
		public static int deleteN(dbtbNurse_record n) {
			int Stat =0;
			try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM nurse_record WHERE Nurse_ID=?");
			preState.setInt(1,n.getNurse_ID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
		}
		
		public static  List<dbtbNurse_record> getAllRecords(){
			List<dbtbNurse_record> list=new ArrayList<dbtbNurse_record>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from nurse_record");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtbNurse_record d = new  dbtbNurse_record();
					d.setNurse_ID(reSet.getInt("Nurse_ID"));
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

		public static dbtbNurse_record getRecords(int id) {
			dbtbNurse_record d= null;
			try{  
				
		    	conn=DbCon.getCon();  
		        preState=conn.prepareStatement("select * from nurse_record where Nurse_ID=?");  
		        preState.setInt(1,id);  
		        reSet=preState.executeQuery();  
		        while(reSet.next()){  
		            d=new dbtbNurse_record();  
		            d.setNurse_ID(reSet.getInt("Nurse_ID"));
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
