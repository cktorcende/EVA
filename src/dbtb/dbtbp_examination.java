package dbtb;

import java.sql.Date;

public class dbtbp_examination {
	private int Examination_ID,Pa_ID;
	private String ExaminationType,ExaminationName,ExaminationDetails,ExaminerName,ExaminationPlace,ExaminationResult;
	private Date ExaminationDate;
	
	public int getExamination_ID() {
		return Examination_ID;
	}
	public void setExamination_ID(int an) {
		this.Examination_ID = an;
	}
	public int getPa_ID() {
		return Pa_ID;
	}
	public void setPa_ID(int d) {
		this.Pa_ID = d;
	}
	
	public String getExaminationResult() {
		return ExaminationResult;
	}
	public void setExaminationResult(String an) {
		this.ExaminationResult = an;
	}

	public String getExaminationType() {
		return ExaminationType;
	}
	public void setExaminationType(String an) {
		this.ExaminationType = an;
	}
	public String getExaminationName() {
		return ExaminationName;
	}
	public void setExaminationName(String an) {
		this.ExaminationName = an;
	}
	public String getExaminationDetails() {
		return ExaminationDetails;
	}
	public void setExaminationDetails(String d) {
		this.ExaminationDetails = d;
	}
	public String getExaminerName() {
		return ExaminerName;
	}
	public void setExaminerName(String s) {
		this.ExaminerName = s;
	}
	public String getExaminationPlace() {
		return ExaminationPlace;
	}
	public void setExaminationPlace(String ca) {
		this.ExaminationPlace = ca;
	}
	public Date getExaminationDate() {
		return ExaminationDate;
	}
	public void setExaminationDate(Date ds) {
		this.ExaminationDate = ds;
	}
}
