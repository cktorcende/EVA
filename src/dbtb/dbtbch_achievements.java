package dbtb;

import java.sql.*;

public class dbtbch_achievements {
	private int CH_AchievementID,A_ChefID;
	private String AchievementName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getCH_AchievementID() {
		return CH_AchievementID;
	}
	public void setCH_AchievementID(int an) {
		this.CH_AchievementID = an;
	}
	public int getA_ChefID() {
		return A_ChefID;
	}
	public void setA_ChefID(int d) {
		this.A_ChefID = d;
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
