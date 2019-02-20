package dbtb;

import java.sql.Date;

public class dbtbd_experience {
	private int D_ExperienceID,DoctorID;
	private String ExperienceName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getD_ExperienceID() {
		return D_ExperienceID;
	}
	public void setD_ExperienceID(int an) {
		this.D_ExperienceID = an;
	}
	public int getDoctorID() {
		return DoctorID;
	}
	public void setDoctorID(int d) {
		this.DoctorID = d;
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
