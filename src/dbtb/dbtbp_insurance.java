package dbtb;

import java.sql.*;

public class dbtbp_insurance {
	private int insurance_id,Subscriber_ID,GroupNo,SubscriberNo,Zip,Insurance;
	private String Plan,Coverage,Relationship,Copay,Deductible,CoInsurance,Address,City,State,Country;
	private Date From,To;
	
	public int getinsurance_id() {
		return insurance_id;
	} 
	public void setinsurance_id(int i) {
		this.insurance_id= i;
	}
	public int getSubscriber_ID() {
		return Subscriber_ID;
	} 
	public void setSubscriber_ID(int si) {
		this.Subscriber_ID= si;
	}
	public int getGroupNo() {
		return GroupNo;
	} 
	public void setGroupNo(int g) {
		this.GroupNo= g;
	}
	public int getSubscriberNo() {
		return SubscriberNo;
	} 
	public void setSubscriberNo(int i) {
		this.SubscriberNo= i;
	}
	public int getZip() {
		return Zip;
	} 
	public void setZip(int i) {
		this.Zip= i;
	}
	
	
	
	public int getInsurance() {
		return Insurance;
	} 
	public void setInsurance(int i) {
		this.Insurance=i;
	}
	public String getPlan() {
		return Plan;
	} 
	public void setPlan(String p) {
		this.Plan=p;
	}
	public String getCoverage() {
		return Coverage;
	} 
	public void setCoverage(String c) {
		this.Coverage=c;
	}
	public String getRelationship() {
		return Relationship;
	} 
	public void setRelationship(String r) {
		this.Relationship=r;
	}
	public String getCopay() {
		return Copay;
	} 
	public void setCopay(String c) {
		this.Copay=c;
	}
	public String getDeductible() {
		return Deductible;
	} 
	public void setDeductible(String i) {
		this.Deductible=i;
	}
	public String getCoInsurance() {
		return CoInsurance;
	} 
	public void setCoInsurance(String i) {
		this.CoInsurance=i;
	}
	public String getAddress() {
		return Address;
	} 
	public void setAddress(String a) {
		this.Address=a;
	}
	public String getCity() {
		return City;
	} 
	public void setCity(String c) {
		this.City=c;
	}
	public String getState() {
		return State;
	} 
	public void setState(String S) {
		this.State=S;
	}
	public String getCountry() {
		return Country;
	} 
	public void setCountry(String C) {
		this.Country=C;
	}
	
	
	//Date
	public Date getFrom() {
		return From;
	} 
	public void setFrom(Date i) {
		this.From= i;
	}
	public Date getTo() {
		return To;
	} 
	public void setTo(Date i) {
		this.To= i;
	}
	
}
