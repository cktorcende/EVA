package dbtb;

import java.sql.Date;

public class dbtbcs_ratings {
	private int cs_RatingsID,CSR_CashierID;
	private String Name,Comment,Rating;
	private Date Date;
	
	public int getcs_RatingsID() {
		return cs_RatingsID;
	}
	public void setcs_RatingsID(int an) {
		this.cs_RatingsID = an;
	}
	public int getCSR_CashierID() {
		return CSR_CashierID;
	}
	public void setCSR_CashierID(int d) {
		this.CSR_CashierID = d;
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
