package dbtb;

import java.sql.*;

public class dbtbClient_record {
	private int Patient_ID, Client_ID,ReferredBy,Telephone,LocationCode,ResidenceCode,Age;
	private Date  DateAdmitted,BirthDate,DeceasedDate;
	private String NickName,Sex, Surname,FirstName,MiddleName,BirthPlace,Address,City,Province,Country,Mobile,Email,PatientStatus,Remarks,Marital,Language,SexualOr,AcctType;
	
	
	
	
	//Date
	public Date getDate_Admitted() {
		return DateAdmitted;
	}
	public void setDate_Admitted(Date da) {
		this.DateAdmitted = da;
	}
	public Date getBirthDate() {
		return BirthDate;
	}
	public void setBirthDate(Date da) {
		this.BirthDate = da;
	}
	public Date getDeceasedDate() {
		return DeceasedDate;
	}
	public void setDeceasedDate(Date da) {
		this.DeceasedDate = da;
	}
	
	
	public int getAge() {
		return Age;
	}
	public void setAge(int ci) {
		this.Age = ci;
	}
	public int getPatient_ID() {
		return Patient_ID;
	}
	public void setPatient_ID(int ci) {
		this.Patient_ID = ci;
	}
	public int getClient_ID() {
		return Client_ID;
	}
	public void setClient_ID(int sci) {
		this.Client_ID = sci;
	}
	public int getReferredBy() {
		return ReferredBy;
	}
	public void setReferredBy(int a) {
		this.ReferredBy = a;
	}
	public int getTelephone() {
		return Telephone;
	}
	public void setTelephone(int a) {
		this.Telephone = a;
	}
	public int getResidenceCode() {
		return ResidenceCode;
	}
	public void setResidenceCode(int c) {
		this.ResidenceCode = c;
	}
	public int getLocationCode() {
		return LocationCode;
	}
	public void setLocationCode(int c) {
		this.LocationCode = c;
	}
	
	//String
	
	
	public String getNickName() {
		return NickName;
	}
	public void setNickName(String ln) {
		this.NickName = ln;
	}
	
	public String getSex() {
		return Sex;
	}
	public void setSex(String ln) {
		this.Sex = ln;
	}
	public String getSurname() {
		return Surname;
	}
	public void setSurname(String ln) {
		this.Surname = ln;
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
	public String getBirthPlace() {
		return BirthPlace;
	}
	public void setBirthPlace(String a) {
		this.BirthPlace = a;
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
	public String getProvince() {
		return Province;
	}
	public void setProvince(String s) {
		this.Province = s;
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
	
	public String getPatientStatus() {
		return PatientStatus;
	}
	public void setPatientStatus(String e) {
		this.PatientStatus = e;
	}
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String c) {
		this.Remarks = c;
	}
	public String getMarital() {
		return Marital;
	}
	public void setMarital(String c) {
		this.Marital = c;
	}
	public String getLanguage() {
		return Language;
	}
	public void setLanguage(String m) {
		this.Language = m;
	}
	public String getSexualOr() {
		return SexualOr;
	}
	public void setSexualOr(String e) {
		this.SexualOr = e;
	}
	
	public String getAcctType() {
		return AcctType;
	}
	public void setAcctType(String e) {
		this.AcctType = e;
	}
}
