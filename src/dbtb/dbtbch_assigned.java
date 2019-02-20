package dbtb;

import java.sql.*;

public class dbtbch_assigned {
	private int CH_AssignedID,CHAS_ChefID, AssignedPatientID;
	private String Description,Status,AssignedTime;
	private Date DateStarted;
	
	public int getCH_AssignedID() {
		return CH_AssignedID;
	}
	public void setCH_AssignedID(int an) {
		this.CH_AssignedID = an;
	}
	public int getCHAS_ChefID() {
		return CHAS_ChefID;
	}
	public void setCHAS_ChefID(int d) {
		this.CHAS_ChefID = d;
	}
	public int getAssignedPatientID() {
		return  AssignedPatientID;
	}
	public void setAssignedPatientID(int apd) {
		this. AssignedPatientID = apd;
	}
	
	public String getDescription() {
		return Description;
	}
	public void setDescription(String d) {
		this.Description = d;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String s) {
		this.Status = s;
	}
	public String getAssignedTime() {
		return AssignedTime;
	}
	public void setAssignedTime(String at) {
		this.AssignedTime = at;
	}
	public Date getDateStarted() {
		return DateStarted;
	}
	public void setDateStarted(Date ds) {
		this.DateStarted = ds;
	}
}
