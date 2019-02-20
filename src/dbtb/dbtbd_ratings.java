package dbtb;

import java.sql.Date;

public class dbtbd_ratings {
	private int d_RatingsID,DR_DoctorID;
	private String Name,Comment,Rating;
	private Date Date;
	
	public int getd_RatingsID() {
		return d_RatingsID;
	}
	public void setd_RatingsID(int an) {
		this.d_RatingsID = an;
	}
	public int getDR_DoctorID() {
		return DR_DoctorID;
	}
	public void setDR_DoctorID(int d) {
		this.DR_DoctorID = d;
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
