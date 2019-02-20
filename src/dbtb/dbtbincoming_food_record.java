package dbtb;

import java.sql.*;

public class dbtbincoming_food_record {
	private String FoodDescription,Remark;
	private int FoodID,F_SupplierID,VendorItem,ProductKey,InvoiceNumber,QTYonhand,QTYPurchased;
	private Date PurchaseDate;
	private double AcqCost;
	
	public String getFoodDescription() {
		return FoodDescription;
	}
	public void setFoodDescription(String dd) {
		this.FoodDescription = dd;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String r) {
		this.Remark = r;
	}
	
	//Date
	public Date getPurchaseDate() {
		return PurchaseDate;
	}
	public void setPurchaseDate(Date pd) {
		this.PurchaseDate = pd;
	}
	
	//Double
	public double getAcqCost() {
		return AcqCost;
	}
	public void setAcqCost(double ac) {
		this.AcqCost = ac;
	}
	
	
	public int getFoodID() {
		return FoodID;
	} 
	public void setFoodID(int rc) {
		this.FoodID = rc;
	}
	public int getF_SupplierID() {
		return F_SupplierID;
	} 
	public void setF_SupplierID(int rc) {
		this.F_SupplierID = rc;
	}
	public int getVendorItem() {
		return VendorItem;
	} 
	public void setVendorItem(int rc) {
		this.VendorItem = rc;
	}
	public int getProductKey() {
		return ProductKey;
	} 
	public void setProductKey(int rc) {
		this.ProductKey = rc;
	}
	public int getInvoiceNumber() {
		return InvoiceNumber;
	} 
	public void setInvoiceNumber(int in) {
		this.InvoiceNumber = in;
	}
	public int getQTYonhand() {
		return QTYonhand;
	} 
	public void setQTYonhand(int rc) {
		this.QTYonhand = rc;
	}
	public int getQTYPurchased() {
		return QTYPurchased;
	} 
	public void setQTYPurchased(int rc) {
		this.QTYPurchased = rc;
	}
}
