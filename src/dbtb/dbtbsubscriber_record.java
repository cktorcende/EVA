package dbtb;

import java.sql.*;
public class dbtbsubscriber_record {
	private String Gender,LastName,FirstName,MiddleName,Address,City,State,Country,Phone;
	private int Subscriber_Id,Zip,Patient_ID,SSNno;
	private Date DOB;
	
	
	public Date getDOB() {
		return DOB;
	}
	public void setDOB(Date d) {
		this.DOB = d;
	}
	
	public int getSubscriber_Id() {
		return Subscriber_Id;
	} 
	public void setSubscriber_Id(int si) {
		this.Subscriber_Id= si;
	}
	public int getPatient_ID() {
		return Patient_ID;
	} 
	public void setPatient_ID(int g) {
		this.Patient_ID= g;
	}
	public int getSSNno() {
		return SSNno;
	} 
	public void setSSNno(int i) {
		this.SSNno= i;
	}
	public int getZip() {
		return Zip;
	} 
	public void setZip(int i) {
		this.Zip= i;
	}
	
	
	//String
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String ln) {
		this.LastName = ln;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String fn) {
		this.FirstName = fn;
	}
	public String getMiddleName() {
		return MiddleName;
	}
	public void setMiddleName(String mn) {
		this.MiddleName = mn;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String a) {
		this.Address = a;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String c) {
		this.City = c;
	}
	public String getState() {
		return State;
	}
	public void setState(String s) {
		this.State = s;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String c) {
		this.Country = c;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String m) {
		this.Phone = m;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String e) {
		this.Gender = e;
	}
}
