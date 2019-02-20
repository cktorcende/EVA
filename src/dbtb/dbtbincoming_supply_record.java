package dbtb;

import java.sql.*;

public class dbtbincoming_supply_record {
	private String SupplyDescription,Remark;
	private int SupplyID,S_SupplierID,VendorItem,ProductKey,InvoiceNumber,QTYonhand,QTYPurchased;
	private Date PurchaseDate;
	private double AcqCost;
	
	public String getSupplyDescription() {
		return SupplyDescription;
	}
	public void setSupplyDescription(String dd) {
		this.SupplyDescription = dd;
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
	
	
	public int getSupplyID() {
		return SupplyID;
	} 
	public void setSupplyID(int rc) {
		this.SupplyID = rc;
	}
	public int getS_SupplierID() {
		return S_SupplierID;
	} 
	public void setS_SupplierID(int rc) {
		this.S_SupplierID = rc;
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
