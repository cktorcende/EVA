package dbtb;

import java.sql.Date;

public class dbtbcr_ratings {
	private int cr_RatingsID,CRR_CaregiverID;
	private String Name,Comment,Rating;
	private Date Date;
	
	public int getcr_RatingsID() {
		return cr_RatingsID;
	}
	public void setcr_RatingsID(int an) {
		this.cr_RatingsID = an;
	}
	public int getCRR_CaregiverID() {
		return CRR_CaregiverID;
	}
	public void setCRR_CaregiverID(int d) {
		this.CRR_CaregiverID = d;
	}
	public String getName() {
		return Name;
	}
	public void setName(String an) {
		this.Name = an;
	}
	
	public String getComment() {
		return Comment;
	}
	public void setComment(String d) {
		this.Comment = d;
	}
	public String getRating() {
		return Rating;
	}
	public void setRating(String s) {
		this.Rating = s;
	}
	
	public Date getDate() {
		return Date;
	}
	public void setDate(Date ds) {
		this.Date = ds;
	}
}
