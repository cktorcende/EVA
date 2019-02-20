package dbtb;

import java.sql.Date;

public class dbtbn_experience {
	private int N_ExperienceID,NurseID;
	private String ExperienceName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getN_ExperienceID() {
		return N_ExperienceID;
	}
	public void setN_ExperienceID(int an) {
		this.N_ExperienceID = an;
	}
	public int getNurseID() {
		return NurseID;
	}
	public void setNurseID(int d) {
		this.NurseID = d;
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
