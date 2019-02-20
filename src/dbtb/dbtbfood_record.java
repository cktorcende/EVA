package dbtb;

import java.sql.*;

public class dbtbfood_record {
	private int FoodID,VendorID,CaseWeight,MaximumRefills,CurrentQtyOnHand,MinimumQtyOnHand;
	private String FoodDescription,CasePack,Brand,CaseSubBreak,Barcode,UnitOfMeasure,ActiveIngridient,LotNo;
	private double DirectPrice;
	private Date Expiration,LotExpDate;
	
	
	public Date getExpiration() {
		return Expiration;
	}
	public void setExpiration(Date i) {
		this.Expiration = i;
	}
	public Date getLotExpDate() {
		return LotExpDate;
	}
	public void setLotExpDate(Date i) {
		this.LotExpDate = i;
	}
	
	
	
	public int getCurrentQtyOnHand() {
		return CurrentQtyOnHand;
	}
	public void setCurrentQtyOnHand(int i) {
		this.CurrentQtyOnHand = i;
	}
	public int getMinimumQtyOnHand() {
		return MinimumQtyOnHand;
	}
	public void setMinimumQtyOnHand(int i) {
		this.MinimumQtyOnHand = i;
	}
	public int getFoodID() {
		return FoodID;
	}
	public void setFoodID(int i) {
		this.FoodID = i;
	}
	
	public int getVendorID() {
		return VendorID;
	}
	public void setVendorID(int i) {
		this.VendorID = i;
	}
	public int getCaseWeight() {
		return CaseWeight;
	}
	public void setCaseWeight(int i) {
		this.CaseWeight = i;
	}
	public int getMaximumRefills() {
		return MaximumRefills;
	}
	public void setMaximumRefills(int i) {
		this.MaximumRefills = i;
	}
	public double getDirectPrice() {
		return DirectPrice;
	}
	public void setDirectPrice(double i) {
		this.DirectPrice = i;
	}
	
	
	
	public String getFoodDescription() {
		return FoodDescription;
	}
	public void setFoodDescription(String s) {
		this.FoodDescription = s;
	}
	public String getCasePack() {
		return CasePack;
	}
	public void setCasePack(String s) {
		this.CasePack = s;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String s) {
		this.Brand = s;
	}
	public String getCaseSubBreak() {
		return CaseSubBreak;
	}
	public void setCaseSubBreak(String s) {
		this.CaseSubBreak = s;
	}
	public String getBarcode() {
		return Barcode;
	}
	public void setBarcode(String s) {
		this.Barcode = s;
	}
	public String getUnitOfMeasure() {
		return UnitOfMeasure;
	}
	public void setUnitOfMeasure(String s) {
		this.UnitOfMeasure = s;
	}
	public String getActiveIngridient() {
		return ActiveIngridient;
	}
	public void setActiveIngridient(String s) {
		this.ActiveIngridient = s;
	}
	public String getLotNo() {
		return LotNo;
	}
	public void setLotNo(String s) {
		this.LotNo = s;
	}
	
	
	
}
