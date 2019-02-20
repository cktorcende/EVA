package dbtb;

import java.sql.Date;

public class dbtbOrders {
	private int Supply_OrderID,SupplyID,SO_SupplierID,QTYPurchased;
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
	public int getSupply_OrderID() {
		return Supply_OrderID;
	}
	public void setSupply_OrderID(int s) {
		this.Supply_OrderID = s;
		}
	public int getSupplyID() {
		return SupplyID;
	}
	public void setSupplyID(int s) {
		this.SupplyID = s;
	}
	public int getSO_SupplierID() {
		return SO_SupplierID;
	}
	public void setSO_SupplierID(int s) {
		this.SO_SupplierID = s;
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
