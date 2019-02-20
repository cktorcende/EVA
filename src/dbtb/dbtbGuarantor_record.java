package dbtb;

import java.sql.*;

public class dbtbGuarantor_record {
	private String Relationship,GuarantorName,Last,First,Middle,SSN,Gender,EmpStatus,Address,City,State,Country,Phone,Ext,CellphoneNo,Email,Fax;
	private Date DOB;
	private int EmpID,Zip,guarantorID;
	
	public String getRelationship() {
		return Relationship;
	}
	public void setRelationship(String g) {
		this.Relationship= g;
	}
	public String getGuarantorName() {
		return GuarantorName;
	}
	public void setGuarantorName(String g) {
		this.GuarantorName= g;
	}
	public String getLast() {
		return Last;
	}
	public void setLast(String g) {
		this.Last= g;
	}
	public String getFirst() {
		return First;
	}
	public void setFirst(String g) {
		this.First= g;
	}
	public String getMiddle() {
		return Middle;
	}
	public void setMiddle(String g) {
		this.Middle= g;
	}
	public String getSSN() {
		return SSN;
	}
	public void setSSN(String g) {
		this.SSN= g;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String g) {
		this.Gender= g;
	}
	public String getEmpStatus() {
		return EmpStatus;
	}
	public void setEmpStatus(String g) {
		this.EmpStatus= g;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String g) {
		this.Address= g;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String g) {
		this.Country= g;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String g) {
		this.City= g;
	}
	public String getState() {
		return State;
	}
	public void setState(String g) {
		this.State= g;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String g) {
		this.Phone= g;
	}
	public String getExt() {
		return Ext;
	}
	public void setExt(String g) {
		this.Ext= g;
	}
	public String getCellphoneNo() {
		return CellphoneNo;
	}
	public void setCellphoneNo(String g) {
		this.CellphoneNo= g;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String g) {
		this.Email= g;
	}
	public String getFax() {
		return Fax;
	}
	public void setFax(String g) {
		this.Fax= g;
	}
	
	
	public int getEmpID() {
		return EmpID; 
	}
	public void setEmpID(int i) {
		this.EmpID = i;
	}
	public int getZip() {
		return Zip; 
	}
	public void setZip(int i) {
		this.Zip = i;
	}
	public int getguarantorID() {
		return guarantorID; 
	}
	public void setguarantorID(int i) {
		this.guarantorID = i;
	}
	public Date getDOB() {
		return DOB; 
	}
	public void setDOB(Date i) {
		this.DOB = i;
	}
	
}
