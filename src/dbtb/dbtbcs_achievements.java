package dbtb;

import java.sql.Date;

public class dbtbcs_achievements {
	private int CS_AchievementID,CSA_CashierID;
	private String AchievementName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCS_AchievementID() {
		return CS_AchievementID;
	}
	public void setCS_AchievementID(int an) {
		this.CS_AchievementID = an;
	}
	public int getCSA_CashierID() {
		return CSA_CashierID;
	}
	public void setCSA_CashierID(int d) {
		this.CSA_CashierID = d;
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
