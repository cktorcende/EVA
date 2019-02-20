package dbtb;

import java.sql.Date;

public class dbtbchef_record {
	private String LastName,FirstName,MiddleName,PlaceOfBirth,Address,City,State,Country,Mobile,Email,Designation,Specialization,RegistrationNo,RegistrationCode,HospitalAffiliation;
	private Date DateBirth,JoiningDate,RegistrationDate;
	private int chef_ID,employeeC_id,Age,PinCode,Phone;
	private byte Qualification;
	
	public int getchef_ID() {
		return chef_ID;
	}
	public void setchef_ID(int ci) {
		this.chef_ID = ci;
	}
	public int getemployeeC_id() {
		return employeeC_id;
	}
	public void setemployeeC_id(int sci) {
		this.employeeC_id = sci;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int a) {
		this.Age = a;
	}
	public int getPinCode() {
		return PinCode;
	}
	public void setPinCode(int a) {
		this.PinCode = a;
	}
	public int getPhone() {
		return Phone;
	}
	public void setPhone(int c) {
		this.Phone = c;
	}
	
	//String info
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
	public String getPlaceOfBirth() {
		return PlaceOfBirth;
	}
	public void setPlaceOfBirth(String mn) {
		this.PlaceOfBirth = mn;
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
	public String getMobile() {
		return Mobile;
	}
	public void setMobile(String m) {
		this.Mobile = m;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String e) {
		this.Email = e;
	}
	public String getDesignation() {
		return Designation;
	}
	public void setDesignation(String d) {
		this.Designation = d;
	}
	public byte getQualification() {
		return Qualification;
	}
	public void setQualification(byte qualification2) {
		this.Qualification = qualification2;
	}
	public String getSpecialization() {
		return Specialization;
	}
	public void setSpecialization(String s) {
		this.Specialization = s;
	}
	public String getRegistrationNo() {
		return RegistrationNo;
	}
	public void setRegistrationNo(String rn) {
		this.RegistrationNo = rn;
	}
	public String getRegistrationCode() {
		return RegistrationCode;
	}
	public void setRegistrationCode(String rc) {
		this.RegistrationCode = rc;
	}
	public String getHospitalAffiliation() {
		return HospitalAffiliation;
	}
	public void setHospitalAffiliation(String ha) {
		this.HospitalAffiliation = ha;
	}
	//Date
	public Date getDateBirth() {
		return DateBirth;
	}
	public void setDateBirth(Date db) {
		this.DateBirth = db;
	}
	public Date getJoiningDate() {
		return JoiningDate;
	}
	public void setJoiningDate(Date jd) {
		this.JoiningDate = jd;
	}
	public Date getRegistrationDate() {
		return RegistrationDate;
	}
	public void setRegistrationDate(Date rd) {
		this.RegistrationDate = rd;
	}
}
