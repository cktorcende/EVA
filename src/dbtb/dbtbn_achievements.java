package dbtb;

import java.sql.Date;

public class dbtbn_achievements {
	private int N_AchievementID,NA_NurseID;
	private String AchievementName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getN_AchievementID() {
		return N_AchievementID;
	}
	public void setN_AchievementID(int an) {
		this.N_AchievementID = an;
	}
	public int getNA_NurseID() {
		return NA_NurseID;
	}
	public void setNA_NurseID(int d) {
		this.NA_NurseID = d;
	}
	
	public String getAchievementName() {
		return AchievementName;
	}
	public void setAchievementName(String an) {
		this.AchievementName = an;
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
