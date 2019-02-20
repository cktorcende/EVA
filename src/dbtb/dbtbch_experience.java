package dbtb;

import java.sql.Date;

public class dbtbch_experience {
	private int CH_ExperienceID,ChefID;
	private String ExperienceName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCH_ExperienceID() {
		return CH_ExperienceID;
	}
	public void setCH_ExperienceID(int an) {
		this.CH_ExperienceID = an;
	}
	public int getChefID() {
		return ChefID;
	}
	public void setChefID(int d) {
		this.ChefID = d;
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
