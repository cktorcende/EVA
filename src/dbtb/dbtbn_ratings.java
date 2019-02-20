package dbtb;

import java.sql.Date;

public class dbtbn_ratings {
	private int n_RatingsID,NR_NurseID;
	private String Name,Comment,Rating;
	private Date Date;
	
	public int getn_RatingsID() {
		return n_RatingsID;
	}
	public void setn_RatingsID(int an) {
		this.n_RatingsID = an;
	}
	public int getNR_NurseID() {
		return NR_NurseID;
	}
	public void setNR_NurseID(int d) {
		this.NR_NurseID = d;
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
