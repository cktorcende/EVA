package dbtb;

public class dbtbVendor_record {
	private int VendorID,RecordNumber,Zip;
	private String VendorName,ContactName,AddressLine1,AddressLine2,City,State,Phone,Fax;
	
	public String getVendorName() {
		return VendorName;
	}
	public void setVendorName(String vi) {
		this.VendorName = vi;
	}
	public String getContactName() {
		return ContactName;
	}
	public void setContactName(String cn) {
		this.ContactName = cn;
	}
	public String getAddressLine1() {
		return AddressLine1;
	}
	public void setAddressLine1(String ad) {
		this.AddressLine1 = ad;
	}
	public String getAddressLine2() {
		return AddressLine2;
	}
	public void setAddressLine2(String ad) {
		this.AddressLine1 = ad;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String c) {
		this.City = c;
	}
	public String getState() {
		return State;
	}
	public void setState(String s) {
		this.State = s;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String p) {
		this.Phone = p;
	}
	public String getFax() {
		return Fax;
	}
	public void setFax(String f) {
		this.Fax = f;
	}
	public int getVendorID() {
		return VendorID;
	}
	public void setVendorID(int vi) {
		this.VendorID = vi;
	}
	public int getRecordNumber() {
		return RecordNumber;
	}
	public void setRecordNumber(int vi) {
		this.RecordNumber = vi;
	}
	public int getZip() {
		return Zip;
	}
	public void setZip(int z) {
		this.Zip = z;
	}
	
	 
}
