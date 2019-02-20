package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import dbtb.*;
import conn.DbCon;

public class EmployeeRecordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
		
	
	//Doctor
	public static void string_setter(dbtbDoctor_record c,String PlaceOfBirth,String LastName,String FirstName,String MiddleName,String Address,String City,String State,String Country,String Mobile,String Email,String Designation,String Specialization,String RegistrationNo,String RegistrationCode,String HospitalAffiliation) {
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
		
	public static void int_setter(dbtbDoctor_record c,int Age,int PinCode,int Phone,Date DateBirth,Date JoiningDate,Date RegistrationDate) {
		c.setDateBirth(DateBirth);
		c.setJoiningDate(JoiningDate);
		c.setRegistrationDate(RegistrationDate);
		c.setAge(Age);
		c.setPinCode(PinCode);
		c.setPhone(Phone);}
	
	public static void id_setter(dbtbDoctor_record c, int Doctor_ID) {
		c.setDoctor_ID(Doctor_ID);
	}
	
	public static int saveD(dbtbDoctor_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO doctor_record (LastName,FirstName,MiddleName,DateBirth,PlaceOfBirth,Age,Address,City,PinCode,State,Country,Phone,Mobile,Email,Designation,JoiningDate,Specialization,RegistrationNo,RegistrationCode,RegistrationDate,HospitalAffiliation)"
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
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	public static int updateD(dbtbDoctor_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE doctor_record set LastName=?,FirstName=?,MiddleName=?,DateBirth=?,PlaceOfBirth=?,Age=?,Address=?,City=?,PinCode=?,State=?,Country=?,Phone=?,Mobile=?,Mobile=?,Designation=?,JoiningDate=?,Specialization=?,RegistrationNo=?,RegistrationCode=?,RegistrationDate=?,HospitalAffiliation=? WHERE Doctor_ID=?");
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
			preState.setInt(22, d.getDoctor_ID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	public static int deleteD(dbtbDoctor_record d) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM doctor_record WHERE Doctor_ID=?");
		preState.setInt(1,d.getDoctor_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static List<dbtbDoctor_record> getAllRecordsD(){
		List<dbtbDoctor_record> list=new ArrayList<dbtbDoctor_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from doctor_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbDoctor_record d = new  dbtbDoctor_record();
				d.setDoctor_ID(reSet.getInt("Doctor_ID"));
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
	public static dbtbDoctor_record getRecordD(int id) {
		dbtbDoctor_record d= null;
		try{  
	    	conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from doctor_record where Doctor_ID=?");  
	        preState.setInt(1,id);  
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	            d=new dbtbDoctor_record();  
	            d.setDoctor_ID(reSet.getInt("Doctor_ID"));
				d.setEmployee_ID(reSet.getInt("Employee_ID"));
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
	
	public static  List<dbtbNurse_record> getAllRecordsN(){
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

	public static dbtbNurse_record getRecordN(int id) {
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
	
	//Caregiver
		public static void string_setterC(dbtbcaregiver_record c,String PlaceOfBirth,String LastName,String FirstName,String MiddleName,String Address,String City,String State,String Country,String Mobile,String Email,String Designation,byte Qualification,String Specialization,String RegistrationNo,String RegistrationCode,String HospitalAffiliation) {
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
			
		public static void int_setterC(dbtbcaregiver_record c,int Age,int PinCode,int Phone,Date DateBirth,Date JoiningDate,Date RegistrationDate) {
			c.setDateBirth(DateBirth);
			c.setJoiningDate(JoiningDate);
			c.setRegistrationDate(RegistrationDate);
			c.setAge(Age);
			c.setPinCode(PinCode);
			c.setPhone(Phone);}
		
		public static void id_setterC(dbtbcaregiver_record c, int Caregiver_ID) {
			c.setCaregiver_ID(Caregiver_ID);
		}
		
		public static int saveC(dbtbcaregiver_record n) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("INSERT INTO caregiver_record (LastName,FirstName,MiddleName,DateBirth,PlaceOfBirth,Age,Address,City,PinCode,State,Country,Phone,Mobile,Email,Designation,JoiningDate,Specialization,RegistrationNo,RegistrationCode,RegistrationDate,HospitalAffiliation)"
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
		
		public static int updateN(dbtbcaregiver_record n) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE caregiver_record set LastName=?,FirstName=?,MiddleName=?,DateBirth=?,PlaceOfBirth=?,Age=?,Address=?,City=?,PinCode=?,State=?,Country=?,Phone=?,Mobile=?,Mobile=?,Designation=?,JoiningDate=?,Specialization=?,RegistrationNo=?,RegistrationCode=?,RegistrationDate=?,HospitalAffiliation=? WHERE Caregiver_ID=?");
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
				preState.setInt(22, n.getCaregiver_ID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		
		public static int deleteC(dbtbcaregiver_record n) {
			int Stat =0;
			try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM caregiver_record WHERE Caregiver_ID=?");
			preState.setInt(1,n.getCaregiver_ID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
		}
		
		public static  List<dbtbcaregiver_record> getAllRecordsC(){
			List<dbtbcaregiver_record> list=new ArrayList<dbtbcaregiver_record>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from caregiver_record");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtbcaregiver_record d = new  dbtbcaregiver_record();
					d.setCaregiver_ID(reSet.getInt("Caregiver_ID"));
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

		public static dbtbcaregiver_record getRecordC(int id) {
			dbtbcaregiver_record d= null;
			try{  
		    	conn=DbCon.getCon();  
		        preState=conn.prepareStatement("select * from caregiver_record where Caregiver_ID=?");  
		        preState.setInt(1,id);  
		        reSet=preState.executeQuery();  
		        while(reSet.next()){  
		            d=new dbtbcaregiver_record();  
		            d.setCaregiver_ID(reSet.getInt("Caregiver_ID"));
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
