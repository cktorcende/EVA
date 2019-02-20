package dbtb;

import java.sql.*;

public class dbtbreturned_order {
	private int DrugID,VendorItemNO,DrugRecNO,QTYReturned,ROrderID,SupplierID,LotNO;
	private String DrugNDC,Remarks;
	private Date ReturnedDate,LotExpirationDate;
	private double CreditAmount;
	
	public String getDrugNDC() {
		return DrugNDC;
	}
	public void setDrugNDC(String i) {
		this.DrugNDC = i;
	}
	public String getRemarks() {
		return Remarks;
	}
	public void setRemarks(String i) {
		this.Remarks = i;
	}
	public double getCreditAmount() {
		return CreditAmount;
	}
	public void setCreditAmount(double i) {
		this.CreditAmount = i;
	}
	
	public Date getReturnedDate() {
		return ReturnedDate;
	}
	public void setReturnedDate(Date i) {
		this.ReturnedDate = i;
	}
	public Date getLotExpirationDate() {
		return LotExpirationDate;
	}
	public void setLotExpirationDate(Date i) {
		this.LotExpirationDate = i;
	}
	
	
	//int
	
	public int getSupplierID() {
		return SupplierID;
	}
	public void setSupplierID(int i) {
		this.SupplierID = i;
	}
	public int getDrugID() {
		return DrugID;
	}
	public void setDrugID(int i) {
		this.DrugID = i;
	}
	public int getVendorItemNO() {
		return VendorItemNO;
	}
	public void setVendorItemNO(int i) {
		this.VendorItemNO = i;
	}
	public int getDrugRecNO() {
		return DrugRecNO;
	}
	public void setDrugRecNO(int i) {
		this.DrugRecNO = i;
	}
	public int getQTYReturned() {
		return QTYReturned;
	}
	public void setQTYReturned(int i) {
		this.QTYReturned = i;
	}
	public int getROrderID() {
		return ROrderID;
	}
	public void setROrderID(int i) {
		this.ROrderID = i;
	}
	public int getLotNO() {
		return LotNO;
	}
	public void setLotNO(int i) {
		this.LotNO = i;
	}
	
}
