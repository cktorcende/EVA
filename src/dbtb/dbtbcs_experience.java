package dbtb;

import java.sql.Date;

public class dbtbcs_experience {
	private int CS_ExperienceID,CashierID;
	private String ExperienceName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCS_ExperienceID() {
		return CS_ExperienceID;
	}
	public void setCS_ExperienceID(int an) {
		this.CS_ExperienceID = an;
	}
	public int getCashierID() {
		return CashierID;
	}
	public void setCashierID(int d) {
		this.CashierID = d;
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
