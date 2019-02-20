package dbtb;

import java.sql.Date;

public class dbtborderf {
	private int Food_OrderID,FoodID,FO_SupplierID,QTYPurchased;
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
	public int getFood_OrderID() {
		return Food_OrderID;
	}
	public void setFood_OrderID(int s) {
		this.Food_OrderID = s;
		}
	public int getFoodID() {
		return FoodID;
	}
	public void setFoodID(int s) {
		this.FoodID = s;
	}
	public int getFO_SupplierID() {
		return FO_SupplierID;
	}
	public void setFO_SupplierID(int s) {
		this.FO_SupplierID = s;
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
