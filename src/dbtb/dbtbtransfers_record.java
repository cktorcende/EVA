package dbtb;

import java.sql.Date;

public class dbtbtransfers_record {
	private int S_TransferID,S_NursingHomeID,SupplyTID,QTYTransferred;
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
	
	
	public int getS_TransferID() {
		return S_TransferID;
	}
	public void setS_TransferID(int i) {
		this.S_TransferID = i;
	}
	public int getS_NursingHomeID() {
		return S_NursingHomeID;
	}
	public void setS_NursingHomeID(int i) {
		this.S_NursingHomeID = i;
	}
	public int getSupplyTID() {
		return SupplyTID;
	}
	public void setSupplyTID(int i) {
		this.SupplyTID = i;
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
