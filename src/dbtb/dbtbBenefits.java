package dbtb;

public class dbtbBenefits {
	private int BPatientID,BGuarantorID,BenefitsID;
	private String SSSno,PhilHealthNo,GSIS,SCSID;
	private double SSSDeductible, PhilHealthDeductible,GSISDeductible;
	
	public int getBPatientID() {
		return BPatientID;
	}
	public void setBPatientID(int i) {
		this.BPatientID = i;
	}
	public int getBenefitsID() {
		return BenefitsID;
	}
	public void setBenefitsID(int i) {
		this.BenefitsID = i;
	}
	public int getBGuarantorID() {
		return BGuarantorID;
	}
	public void setBGuarantorID(int i) {
		this.BGuarantorID = i;
	}
	
	public double getSSSDeductible() {
		return SSSDeductible;
	}
	public void setSSSDeductible(double i) {
		this.SSSDeductible = i;
	}
	public double getPhilHealthDeductible() {
		return PhilHealthDeductible;
	}
	public void setPhilHealthDeductible(double i) {
		this.PhilHealthDeductible = i;
	}
	public double getGSISDeductible() {
		return GSISDeductible;
	}
	public void setGSISDeductible(double i) {
		this.GSISDeductible = i;
	}
	
	public String getSSSno() {
		return SSSno;
	}
	public void setSSSno(String i) {
		this.SSSno = i;
	}
	public String getPhilHealthNo() {
		return PhilHealthNo;
	}
	public void setPhilHealthNo(String i) {
		this.PhilHealthNo = i;
	}
	public String getGSIS() {
		return GSIS;
	}
	public void setGSIS(String i) {
		this.GSIS = i;
	}
	public String getSCSID() {
		return SCSID;
	}
	public void setSCSID(String i) {
		this.SCSID = i;
	}
	
}
