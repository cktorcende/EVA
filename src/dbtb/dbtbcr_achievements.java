package dbtb;

import java.sql.Date;

public class dbtbcr_achievements {
	private int CR_AchievementID,CRA_CaregiverID;
	private String AchievementName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCR_AchievementID() {
		return CR_AchievementID;
	}
	public void setCR_AchievementID(int an) {
		this.CR_AchievementID = an;
	}
	public int getCRA_CaregiverID() {
		return CRA_CaregiverID;
	}
	public void setCRA_CaregiverID(int d) {
		this.CRA_CaregiverID = d;
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
