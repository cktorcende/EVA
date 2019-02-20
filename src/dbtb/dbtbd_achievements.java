package dbtb;

import java.sql.Date;

public class dbtbd_achievements {
	private int D_AchievementID,DA_DoctorID;
	private String AchievementName,Description,Status,CommendableActs;
	private Date DateStarted;
	
	public int getD_AchievementID() {
		return D_AchievementID;
	}
	public void setD_AchievementID(int an) {
		this.D_AchievementID = an;
	}
	public int getDA_DoctorID() {
		return DA_DoctorID;
	}
	public void setDA_DcotorID(int d) {
		this.DA_DoctorID = d;
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
