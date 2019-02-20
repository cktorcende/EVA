package dbtb;

import java.sql.Date;

public class dbtbdrug_fee {
	private int DRFeeID,DRPatientID,BDrugID,HoursRendered, AppPayID;
	private boolean CoveredByPlan;
	private Date DateStarted,DateEnded,DueDate;
	private double ratePerHour;
	private String Shift;
	
	public String getShift() {
		return Shift;
	}
	public void setShift(String i) {
		this.Shift = i;
	}
	public int getDRFeeID() {
		return DRFeeID;
	}
	public void setDRFeeID(int i) {
		this.DRFeeID = i;
	}
	public int getDRPatientID() {
		return DRPatientID;
	}
	public void setDRPatientID(int i) {
		this.DRPatientID = i;
	}
	public int getBDrugID() {
		return BDrugID;
	}
	public void setBDrugID(int i) {
		this.BDrugID= i;
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
	public int getAppPayID() {
		return AppPayID;
	}
	public void setAppPayID(int i) {
		this.AppPayID = i;
		
	}
}
