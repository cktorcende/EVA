package dbtb;

import java.sql.*;

public class dbtbIncoming_drug_record {
	private String DrugDescription,Remark;
	private int RecNo,Supplier,VendorItem,ProductKey,InvoiceNumber,QTYonhand,QTYPurchased;
	private Date PurchaseDate;
	private double AcqCost;
	
	public String getDrugDescription() {
		return DrugDescription;
	}
	public void setDrugDescription(String dd) {
		this.DrugDescription = dd;
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
	
	
	public int getRecNo() {
		return RecNo;
	} 
	public void setRecNo(int rc) {
		this.RecNo = rc;
	}
	public int getSupplier() {
		return Supplier;
	} 
	public void setSupplier(int rc) {
		this.Supplier = rc;
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
