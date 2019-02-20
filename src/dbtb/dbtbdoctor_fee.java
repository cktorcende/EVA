package dbtb;

import java.sql.Date;

public class dbtbdoctor_fee {
	private int DFeeID,DPatientID,BDoctorID,HoursRendered, AppPayID;
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
	public int getDFeeID() {
		return DFeeID;
	}
	public void setDFeeID(int i) {
		this.DFeeID = i;
	}
	public int getDPatientID() {
		return DPatientID;
	}
	public void setDPatientID(int i) {
		this.DPatientID = i;
	}
	public int getBDoctorID() {
		return BDoctorID;
	}
	public void setBDoctorID(int i) {
		this.BDoctorID = i;
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
