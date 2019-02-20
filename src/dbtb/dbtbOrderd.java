package dbtb;

import java.sql.*;

public class dbtbOrderd {
	private int Drug_OrderID,DrugID,DO_SupplierID,QTYPurchased;
	private String ProductKey,InvoiceNumber;
	private Date PurchaseDate;
	
	
	public String getProductKey() {
		return ProductKey;
	}
	public void setProductKey(String s) {
		this.ProductKey = s;
	}
	public String getInvoiceNumber() {
		return InvoiceNumber;
	}
	public void setInvoiceNumber(String s) {
		this.InvoiceNumber = s;
	}
	public int getDrug_OrderID() {
		return Drug_OrderID;
	}
	public void setDrug_OrderID(int s) {
		this.Drug_OrderID = s;
		}
	public int getDrugID() {
		return DrugID;
	}
	public void setDrugID(int s) {
		this.DrugID = s;
	}
	public int getDO_SupplierID() {
		return DO_SupplierID;
	}
	public void setDO_SupplierID(int s) {
		this.DO_SupplierID = s;
	}
	public int getQTYPurchased() {
		return QTYPurchased;
	}
	public void setQTYPurchased(int s) {
		this.QTYPurchased = s;
	}
	public Date getPurchaseDate() {
		return PurchaseDate;
	}
	public void setPurchaseDate(Date s) {
		this.PurchaseDate = s;
	}
	
}
