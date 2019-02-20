package dbtb;

import java.sql.Date;

public class dbtbp_disease {
	private int Disease_ID,Pat_ID;
	private String DiseaseType,DiseaseName,PrecautionsPracticed,Status,Severity,InformationSource,Comments;
	private Date Onset;
	
	public int getDisease_ID() {
		return Disease_ID;
	}
	public void setDisease_ID(int an) {
		this.Disease_ID = an;
	}
	public int getPat_ID() {
		return Pat_ID;
	}
	public void setPat_ID(int d) {
		this.Pat_ID = d;
	}
	
	public String getDiseaseType() {
		return DiseaseType;
	}
	public void setDiseaseType(String an) {
		this.DiseaseType = an;
	}
	public String getDiseaseName() {
		return DiseaseName;
	}
	public void setDiseaseName(String an) {
		this.DiseaseName = an;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String d) {
		this.Status = d;
	}
	public String getPrecautionsPracticed() {
		return PrecautionsPracticed;
	}
	public void setPrecautionsPracticed(String s) {
		this.PrecautionsPracticed = s;
	}
	public String getSeverity() {
		return Severity;
	}
	public void setSeverity(String s) {
		this.Severity = s;
	}
	public String getInformationSource() {
		return InformationSource;
	}
	public void setInformationSource(String s) {
		this.InformationSource = s;
	}
	public String getComments() {
		return Comments;
	}
	public void setComments(String ca) {
		this.Comments = ca;
	}
	public Date getOnset() {
		return Onset;
	}
	public void setOnset(Date ds) {
		this.Onset = ds;
	}
}
