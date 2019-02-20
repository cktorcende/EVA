package dbtb;

import java.sql.Date;

public class dbtbn_assigned {
	private int N_AssignedID,NAS_NurseID, N_AssignedPatientID;
	private String Description,Status,AssignedTime;
	private Date DateStarted;
	
	public int getN_AssignedID() {
		return N_AssignedID;
	}
	public void setN_AssignedID(int an) {
		this.N_AssignedID = an;
	}
	public int getNAS_NurseID() {
		return NAS_NurseID;
	}
	public void setNAS_NurseID(int d) {
		this.NAS_NurseID = d;
	}
	public int getN_AssignedPatientID() {
		return  N_AssignedPatientID;
	}
	public void setN_AssignedPatientID(int apd) {
		this. N_AssignedPatientID = apd;
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
