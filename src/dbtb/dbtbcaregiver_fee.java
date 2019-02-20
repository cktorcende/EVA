package dbtb;

import java.sql.*;

public class dbtbcaregiver_fee {
	private int CFeeID,CPatientID,BCaregiverID,HoursRendered;
	private boolean CoveredByPlan;
	private Date DateStarted,DateEnded,DueDate;
	private double ratePerHour;
	private String Shift;
	private String status;
	private int AppPayID;
	
	
	public String getShift() {
		return Shift;
	}
	public void setShift(String i) {
		this.Shift = i;
	}
	public int getCFeeID() {
		return CFeeID;
	}
	public void setCFeeID(int i) {
		this.CFeeID = i;
	}
	public int getCPatientID() {
		return CPatientID;
	}
	public void setCPatientID(int i) {
		this.CPatientID = i;
	}
	public int getBCaregiverID() {
		return BCaregiverID;
	}
	public void setBCaregiverID(int i) {
		this.BCaregiverID = i;
	}
	public int getHoursRendered() {
		return HoursRendered;
	}
	public void setHoursRendered(int i) {
		this.HoursRendered = i;
	}
	public boolean getCoveredByPlan() {
		return CoveredByPlan;
	}
	public void setCoveredByPlan(boolean i) {
		this.CoveredByPlan = i;
	}
	public double getratePerHour() {
		return ratePerHour;
	}
	public void setratePerHour(double i) {
		this.ratePerHour = i;
	}
	public Date getDateStarted() {
		return DateStarted;
	}
	public void setDateStarted(Date i) {
		this.DateStarted = i;
	}
	public Date getDateEnded() {
		return DateEnded;
	}
	public void setDateEnded(Date i) {
		this.DateEnded = i;
	}
	public Date getDueDate() {
		return DueDate;
	}
	public void setDueDate(Date i) {
		this.DueDate = i;
	}
	public String getstatus() {
		return status;
	} 
	public void setstatus(String stat) {
		this.status = stat;
		
	}
	public int getAppPayID() {
		return AppPayID;
	}
	public void setAppPayID(int i) {
		this.AppPayID = i;
		
	}
	
}
