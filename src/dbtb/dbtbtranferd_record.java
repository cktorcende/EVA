package dbtb;

import java.sql.*; 

public class dbtbtranferd_record {
	private int D_TransferID,D_NursingHomeID,DrugTID,QTYTransferred;
	private String ProductKey,PackageSize,UnitOfMeasure;
	private Date DateofShipping,ExpectedArrivalDate,ExpirationDate;

	public Date getDateofShipping() {
		return DateofShipping;
	}
	public void setDateofShipping(Date i) {
		this.DateofShipping = i;
	}
	public Date getExpectedArrivalDate() {
		return ExpectedArrivalDate;
	}
	public void setExpectedArrivalDate(Date i) {
		this.ExpectedArrivalDate = i;
	}
	public Date getExpirationDate() {
		return ExpirationDate;
	}
	public void setExpirationDate(Date i) {
		this.ExpirationDate = i;
	}
	
	
	public int getD_TransferID() {
		return D_TransferID;
	}
	public void setD_TransferID(int i) {
		this.D_TransferID = i;
	}
	public int getD_NursingHomeID() {
		return D_NursingHomeID;
	}
	public void setD_NursingHomeID(int i) {
		this.D_NursingHomeID = i;
	}
	public int getDrugTID() {
		return DrugTID;
	}
	public void setDrugTID(int i) {
		this.DrugTID = i;
	}
	public int getQTYTransferred() {
		return QTYTransferred;
	}
	public void setQTYTransferred(int i) {
		this.QTYTransferred = i;
	}
	
	
	
	public String getProductKey() {
		return ProductKey;
	}
	public void setProductKey(String i) {
		this.ProductKey = i;
	}
	public String getPackageSize() {
		return PackageSize;
	}
	public void setPackageSize(String i) {
		this.PackageSize = i;
	}
	public String getUnitOfMeasure() {
		return UnitOfMeasure;
	}
	public void setUnitOfMeasure(String i) {
		this.UnitOfMeasure = i;
	}
	
}
