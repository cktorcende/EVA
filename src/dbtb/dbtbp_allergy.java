package dbtb;

import java.sql.Date;

public class dbtbp_allergy {
	private int Allergy_ID,P_ID;
	private String Substance,Reaction,Category,Status,Severity,InformationSource,Comments,PatientName;
	private Date Onset;
	
	public int getAllergy_ID() {
		return Allergy_ID;
	}
	public void setAllergy_ID(int an) {
		this.Allergy_ID = an;
	}
	public int getP_ID() {
		return P_ID;
	}
	public void setP_ID(int d) {
		this.P_ID = d;
	}
	
	public String getPatientName() {
		return PatientName;
	}
	public void setPatientName(String an) {
		this.PatientName = an;
	}
	public String getSubstance() {
		return Substance;
	}
	public void setSubstance(String an) {
		this.Substance = an;
	}
	public String getReaction() {
		return Reaction;
	}
	public void setReaction(String an) {
		this.Reaction = an;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String d) {
		this.Category = d;
	}
	public String getSeverity() {
		return Severity;
	}
	public void setSeverity(String s) {
		this.Severity = s;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String s) {
		this.Status = s;
	}
	public String getInformationSource() {
		return InformationSource;
	}
	public void setInformationSource(String ca) {
		this.InformationSource = ca;
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
