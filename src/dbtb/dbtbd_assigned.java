package dbtb;

import java.sql.Date;

public class dbtbd_assigned {
	private int D_AssignedID,DAS_DoctorID, D_AssignedPatientID;
	private String Description,Status,AssignedTime;
	private Date DateStarted;
	
	public int getD_AssignedID() {
		return D_AssignedID;
	}
	public void setD_AssignedID(int an) {
		this.D_AssignedID = an;
	}
	public int getDAS_DoctorID() {
		return DAS_DoctorID;
	}
	public void setDAS_DoctorID(int d) {
		this.DAS_DoctorID = d;
	}
	public int getD_AssignedPatientID() {
		return  D_AssignedPatientID;
	}
	public void setD_AssignedPatientID(int apd) {
		this. D_AssignedPatientID = apd;
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
