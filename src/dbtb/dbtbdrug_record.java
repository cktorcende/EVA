package dbtb;

import java.sql.*;


public class dbtbdrug_record {
	private String DrugDescription,ProductID,ControlClass,DrugType,GenericDrug,MedicaidNo,WarningCode,GenericAvailable,MedicareNo,SigCodes,SigCodes1,SigCodes2,CompoundDrug,ProductIDQualifier,DrugColor,ReferenceQualifier,NYDVSCode,CategoryofService,Manufacturer,DrugInRobot,UnitOfMeasure,Drug340B,DrugAWP,ActiveDrug,TXR,TXRExtention,SpecialtyDrug;
	private int Drug_ID,RecNo,PackageSize,QuickCode,MedicaidPackageSize,MaximumRefills,LotNo,MinimumQtyOnHand,CurrentQtyOnHand;
	private Date Expiration,LotExpDate,LastPriceUpdate;
	private Double DirectPrice,FedMacPrice,AcquisitionCost;
	
	public int getDrug_ID() {
		return Drug_ID;
	}
	public void setDrug_ID(int dp) {
		this.Drug_ID = dp;
	}
	public int getRecNo() {
		return RecNo;
	}
	public void setRecNo(int pi) {
		this.RecNo = pi;
	}
	public int getPackageSize() {
		return PackageSize;
	}
	public void setPackageSize(int ac) {
		this.PackageSize = ac;
	}
	public int getQuickCode() {
		return QuickCode;
	}
	public void setQuickCode(int qc) {
		this.QuickCode = qc;
	}
	public int getMedicaidPackageSize() {
		return MedicaidPackageSize;
	}
	public void setMedicaidPackageSize(int pi) {
		this.MedicaidPackageSize = pi;
	}
	public int getMaximumRefills() {
		return MaximumRefills;
	}
	public void setMaximumRefills(int ac) {
		this.MaximumRefills = ac;
	}
	public int getLotNo() {
		return LotNo;
	}
	public void setLotNo(int dp) {
		this.LotNo = dp;
	}
	public int getMinimumQtyOnHand() {
		return MinimumQtyOnHand;
	}
	public void setMinimumQtyOnHand(int pi) {
		this.MinimumQtyOnHand = pi;
	}
	public int getCurrentQtyOnHand() {
		return CurrentQtyOnHand;
	}
	public void setCurrentQtyOnHand(int ac) {
		this.CurrentQtyOnHand = ac;
	}
	
	
	public Double getDirectPrice() {
		return DirectPrice;
	}
	public void setDirectPrice(Double dp) {
		this.DirectPrice = dp;
	}
	public Double getFedMacPrice() {
		return FedMacPrice;
	}
	public void setFedMacPrice(Double pi) {
		this.FedMacPrice = pi;
	}
	public Double getAcquisitionCost() {
		return AcquisitionCost;
	}
	public void setAcquisitionCost(Double ac) {
		this.AcquisitionCost = ac;
	}
	
	
	
	public String getDrugDescription() {
		return DrugDescription;
	}
	public void setDrugDescription(String dd) {
		this.DrugDescription = dd;
	}
	public String getProductID() {
		return ProductID;
	}
	public void setProductID(String pi) {
		this.ProductID = pi;
	}
	public String getControlClass() {
		return ControlClass;
	}
	public void setControlClass(String cc) {
		this.ControlClass = cc;
	}
	public String getDrugType() {
		return DrugType;
	}
	public void setDrugType(String dt) {
		this.DrugType = dt;
	}
	public String getGenericDrug() {
		return GenericDrug;
	}
	public void setGenericDrug(String gd) {
		this.GenericDrug = gd;
	}
	public String getMedicaidNo() {
		return MedicaidNo;
	}
	public void setMedicaidNo(String mn) {
		this.MedicaidNo = mn;
	}
	public String getWarningCode() {
		return WarningCode;
	}
	public void setWarningCode(String wc) {
		this.WarningCode = wc;
	}
	public String getGenericAvailable() {
		return GenericAvailable;
	}
	public void setGenericAvailable(String g) {
		this.GenericAvailable = g;
	}
	public String getMedicareNo() {
		return MedicareNo;
	}
	public void setMedicareNo(String mn) {
		this.MedicareNo = mn;
	}
	public String getSigCodes() {
		return SigCodes;
	}
	public void setSigCodes(String sc) {
		this.SigCodes = sc;
	}
	public String getSigCodes1() {
		return SigCodes1;
	}
	public void setSigCodes1(String sc1) {
		this.SigCodes1 = sc1;
	}
	public String getSigCodes2() {
		return SigCodes2;
	}
	public void setSigCodes2(String sc2) {
		this.SigCodes2 = sc2;
	}
	public String getCompoundDrug() {
		return CompoundDrug;
	}
	public void setCompoundDrug(String cd) {
		this.CompoundDrug = cd;
	}
	public String getProductIDQualifier() {
		return ProductIDQualifier;
	}
	public void setProductIDQualifier(String dd) {
		this.ProductIDQualifier = dd;
	}
	public String getDrugColor() {
		return DrugColor;
	}
	public void setDrugColor(String dc) {
		this.DrugColor = dc;
	}
	public String getReferenceQualifier() {
		return ReferenceQualifier;
	}
	public void setReferenceQualifier(String rq) {
		this.ReferenceQualifier = rq;
	}
	public String getNYDVSCode() {
		return NYDVSCode;
	}
	public void setNYDVSCode(String dd) {
		this.NYDVSCode = dd;
	}
	public String getCategoryofService() {
		return CategoryofService;
	}
	public void setCategoryofService(String cos) {
		this.CategoryofService = cos;
	}
	public String getManufacturer() {
		return Manufacturer;
	}
	public void setManufacturer(String m) {
		this.Manufacturer = m;
	}
	public String getDrugInRobot() {
		return DrugInRobot;
	}
	public void setDrugInRobot(String dd) {
		this.DrugInRobot = dd;
	}
	public String getUnitOfMeasure() {
		return UnitOfMeasure;
	}
	public void setUnitOfMeasure(String dd) {
		this.UnitOfMeasure = dd;
	}
	
	public String getDrug340B() {
		return Drug340B;
	}
	public void setDrug340B(String dd) {
		this.Drug340B = dd;
	}
	public String getDrugAWP() {
		return DrugAWP;
	}
	public void setDrugAWP(String dd) {
		this.DrugAWP = dd;
	}
	public String getActiveDrug() {
		return ActiveDrug;
	}
	public void setActiveDrug(String ad) {
		this.ActiveDrug = ad;
	}
	public String getTXR() {
		return TXR;
	}
	public void setTXR(String t) {
		this.TXR = t;
	}
	public String getTXRExtention() {
		return TXRExtention;
	}
	public void setTXRExtention(String dd) {
		this.TXRExtention = dd;
	}
	public String getSpecialtyDrug() {
		return SpecialtyDrug;
	}
	public void setSpecialtyDrug(String dd) {
		this.SpecialtyDrug = dd;
	}
	
	
	//Date
	public Date getExpiration() {
		return Expiration;
	}
	public void setExpiration(Date e) {
		this.Expiration = e;
	}
	public Date getLotExpDate() {
		return LotExpDate;
	}
	public void setLotExpDate(Date led) {
		this.LotExpDate = led;
	}
	public Date getLastPriceUpdate() {
		return LastPriceUpdate;
	}
	public void setLastPriceUpdate(Date e) {
		this.LastPriceUpdate = e;
	}
}
