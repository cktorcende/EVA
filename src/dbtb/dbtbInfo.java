package dbtb;

import java.sql.*;


public class dbtbInfo {
	private int infoID,PGen_infoID;
	private String InformationType,InformationName,Description,Status,Severity,InformationSource;
	private Date Onset;
	
	
	public int getPGen_infoID() {
		return PGen_infoID;
	}
	public void setPGen_infoID(int i) {
		this.PGen_infoID = i;
	}
	public int getinfoID() {
		return infoID;
	}
	public void setinfoID(int i) {
		this.infoID = i;
	}
	public String getInformationType() {
		return InformationType;
	}
	public void setInformationType(String i) {
		this.InformationType = i;
	}
	public String getInformationName() {
		return InformationName;
	}
	public void setInformationName(String i) {
		this.InformationName = i;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String i) {
		this.Description = i;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String i) {
		this.Status = i;
	}
	public String getSeverity() {
		return Severity;
	}
	public void setSeverity(String i) {
		this.Severity = i;
	}
	public String getInformationSource() {
		return InformationSource;
	}
	public void setInformationSource(String i) {
		this.InformationSource = i;
	}
	public Date getOnset() {
		return Onset;
	}
	public void setOnset(Date i) {
		this.Onset=i;
	}
	
	
}

