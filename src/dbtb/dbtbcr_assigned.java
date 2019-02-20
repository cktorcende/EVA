package dbtb;

import java.sql.Date;

public class dbtbcr_assigned {
	private int CR_AssignedID,CRAS_CaregiverID, CR_AssignedPatientID;
	private String Description,Status,AssignedTime;
	private Date DateStarted;
	
	public int getCR_AssignedID() {
		return CR_AssignedID;
	}
	public void setCR_AssignedID(int an) {
		this.CR_AssignedID = an;
	}
	public int getCRAS_CaregiverID() {
		return CRAS_CaregiverID;
	}
	public void setCRAS_CaregiverID(int d) {
		this.CRAS_CaregiverID = d;
	}
	public int getCR_AssignedPatientID() {
		return  CR_AssignedPatientID;
	}
	public void setCR_AssignedPatientID(int apd) {
		this. CR_AssignedPatientID = apd;
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
