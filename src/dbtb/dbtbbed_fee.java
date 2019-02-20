package dbtb;

import java.sql.Date;

public class dbtbbed_fee {
	private int BFeeID,BPatientID,BBedID,HoursRendered, AppPayID;
	private boolean CoveredByPlan;
	private Date DateStarted,DateEnded,DueDate;
	private double ratePerHour;
	private String Shift;
	private String status;
	
	
	public String getShift() {
		return Shift;
	}
	public void setShift(String i) {
		this.Shift = i;
	}
	public int getBFeeID() {
		return BFeeID;
	}
	public void setBFeeID(int i) {
		this.BFeeID = i;
	}
	public int getBPatientID() {
		return BPatientID;
	}
	public void setBPatientID(int i) {
		this.BPatientID = i;
	}
	public int getBBedID() {
		return BBedID;
	}
	public void setBBedID(int i) {
		this.BBedID = i;
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
	public void setstatus(String i) {
		this.status = i;
	}
	public int getAppPayID() {
		return AppPayID;
	}
	public void setAppPayID(int i) {
		this.AppPayID = i;
		
	}
}
