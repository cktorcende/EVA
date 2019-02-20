package dbtb;

import java.sql.Date;

public class dbtbfood_fee {
	private int FFeeID,FPatientID,BFoodID,HoursRendered,AppPayID;
	private boolean CoveredByPlan;
	private Date DateStarted,DateEnded,DueDate;
	private double ratePerMonth;
	private String Shift;
	
	public String getShift() {
		return Shift;
	}
	public void setShift(String i) {
		this.Shift = i;
	}
	public int getFFeeID() {
		return FFeeID;
	}
	public void setFFeeID(int i) {
		this.FFeeID = i;
	}
	public int getFPatientID() {
		return FPatientID;
	}
	public void setFPatientID(int i) {
		this.FPatientID = i;
	}
	public int getBFoodID() {
		return BFoodID;
	}
	public void setBFoodID(int i) {
		this.BFoodID = i;
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
	public double getratePerMonth() {
		return ratePerMonth;
	}
	public void setratePerMonth(double i) {
		this.ratePerMonth = i;
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
	public int getAppPayID() {
		return AppPayID;
	}
	public void setAppPayID(int i) {
		this.AppPayID = i;
		
	}
}
