package dbtb;

import java.sql.Date;

public class dbtbch_ratings {
	private int ch_RatingsID,CHR_ChefID;
	private String Name,Comment,Rating;
	private Date Date;
	
	public int getch_RatingsID() {
		return ch_RatingsID;
	}
	public void setch_RatingsID(int an) {
		this.ch_RatingsID = an;
	}
	public int getCHR_ChefID() {
		return CHR_ChefID;
	}
	public void setCHR_ChefID(int d) {
		this.CHR_ChefID = d;
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
