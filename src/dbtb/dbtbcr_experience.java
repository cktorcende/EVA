package dbtb;

import java.sql.Date;

public class dbtbcr_experience {
	private int CR_ExperienceID,CaregiverID;
	private String ExperienceName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCR_ExperienceID() {
		return CR_ExperienceID;
	}
	public void setCR_ExperienceID(int an) {
		this.CR_ExperienceID = an;
	}
	public int getCaregiverID() {
		return CaregiverID;
	}
	public void setCaregiverID(int d) {
		this.CaregiverID = d;
	}
	
	public String getExperienceName() {
		return ExperienceName;
	}
	public void setExperienceName(String d) {
		this.ExperienceName = d;
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
	public String getCommendableActs() {
		return CommendableActs;
	}
	public void setCommendableActs(String ca) {
		this.CommendableActs = ca;
	}
	public Date getDateStarted() {
		return DateStarted;
	}
	public void setDateStarted(Date ds) {
		this.DateStarted = ds;
	}
}
