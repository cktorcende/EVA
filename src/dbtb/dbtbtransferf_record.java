package dbtb;

import java.sql.Date;

public class dbtbtransferf_record {
	private int F_TransferID,F_NursingHomeID,FoodTID,QTYTransferred;
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
	
	
	public int getF_TransferID() {
		return F_TransferID;
	}
	public void setF_TransferID(int i) {
		this.F_TransferID = i;
	}
	public int getF_NursingHomeID() {
		return F_NursingHomeID;
	}
	public void setF_NursingHomeID(int i) {
		this.F_NursingHomeID = i;
	}
	public int getFoodTID() {
		return FoodTID;
	}
	public void setFoodTID(int i) {
		this.FoodTID = i;
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
