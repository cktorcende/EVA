package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;

public class ch_ratingsDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setterCH(dbtbch_ratings a,int CHR_ChefID,Date Date, String Name,String Comment,String Rating) {
		a.setCHR_ChefID(CHR_ChefID);
		a.setDate(Date);
		a.setName(Name);
		a.setComment(Comment);
		a.setRating(Rating);
	}
	
	public static void id_setterCH(dbtbch_ratings a,int ch_RatingsID) {
		a.setch_RatingsID(ch_RatingsID);
	}
	public static int saveCH(dbtbch_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO ch_ratings(CHR_ChefID,Date,Name,Comment,Rating)"
					+"VALUES(?,?,?,?,?)");
			preState.setInt(1,a.getCHR_ChefID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;}
	
	public static int updateCH(dbtbch_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE ch_ratings SET CHR_ChefID=?,Date=?,Name=?,Comment=?,Rating=? WHERE ch_RatingsID=?");
			preState.setInt(1,a.getCHR_ChefID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			preState.setInt(6,a.getch_RatingsID());	
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int deleteCH(dbtbch_ratings a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM ch_ratings WHERE ch_RatingsID=?");
			preState.setInt(1,a.getch_RatingsID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbch_ratings> getAllRecordsCH(){
		List<dbtbch_ratings> list=new ArrayList<dbtbch_ratings>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_ratings");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbch_ratings a = new dbtbch_ratings();
				a.setch_RatingsID(reSet.getInt("ch_RatingsID"));
				a.setCHR_ChefID(reSet.getInt("CHR_ChefID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			} 
	
	public static dbtbch_ratings getRecordCH(int id){
		dbtbch_ratings a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_ratings WHERE ch_RatingsID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				a = new dbtbch_ratings();
				a.setch_RatingsID(reSet.getInt("ch_RatingsID"));
				a.setCHR_ChefID(reSet.getInt("CHR_ChefID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
			} 
	
	//CS
	
	public static void String_setterCS(dbtbcs_ratings a,int CSR_CashierID,Date Date, String Name,String Comment,String Rating) {
		a.setCSR_CashierID(CSR_CashierID);
		a.setDate(Date);
		a.setName(Name);
		a.setComment(Comment);
		a.setRating(Rating);
	}
	
	public static void id_setterCS(dbtbcs_ratings a,int cs_RatingsID) {
		a.setcs_RatingsID(cs_RatingsID);
	}
	
	public static int saveCS(dbtbcs_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cs_ratings(CSR_CashierID,Date,Name,Comment,Rating)"
					+"VALUES(?,?,?,?,?)");
			preState.setInt(1,a.getCSR_CashierID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;}
	
	public static int updateCS(dbtbcs_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cs_ratings SET CSR_CashierID=?,Date=?,Name=?,Comment=?,Rating=? WHERE cs_RatingsID=?");
			preState.setInt(1,a.getCSR_CashierID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			preState.setInt(6,a.getcs_RatingsID());
			Stat=preState.executeUpdate();
			
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int deleteCS(dbtbcs_ratings a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cs_ratings WHERE cs_RatingsID=?");
			preState.setInt(1,a.getcs_RatingsID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcs_ratings> getAllRecordsCS(){
		List<dbtbcs_ratings> list=new ArrayList<dbtbcs_ratings>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_ratings");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbcs_ratings a = new dbtbcs_ratings();
				a.setcs_RatingsID(reSet.getInt("cs_RatingsID"));
				a.setCSR_CashierID(reSet.getInt("CSR_CashierID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			} 
	
	public static dbtbcs_ratings getRecordCS(int id){
		dbtbcs_ratings a= null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_ratings WHERE cs_RatingsID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				a  = new dbtbcs_ratings();
				a.setcs_RatingsID(reSet.getInt("cs_RatingsID"));
				a.setCSR_CashierID(reSet.getInt("CSR_CashierID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
			}
	
	//CR
	public static void String_setterCR(dbtbcr_ratings a,int CRR_CaregiverID,Date Date, String Name,String Comment,String Rating) {
		a.setCRR_CaregiverID(CRR_CaregiverID);
		a.setDate(Date);
		a.setName(Name);
		a.setComment(Comment);
		a.setRating(Rating);
	}
	
	public static void id_setterCR(dbtbcr_ratings a,int cr_RatingsID) {
		a.setcr_RatingsID(cr_RatingsID);
	}
	public static int saveCR(dbtbcr_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cr_ratings(CRR_CaregiverID,Date,Name,Comment,Rating)"
					+"VALUES(?,?,?,?,?)");
			preState.setInt(1,a.getCRR_CaregiverID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;}
	
	public static int updateCR(dbtbcr_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE ch_ratings SET CRR_CaregiverID=?,Date=?,Name=?,Comment=?,Rating=? WHERE cr_RatingsID=?");
			preState.setInt(1,a.getCRR_CaregiverID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			preState.setInt(6,a.getcr_RatingsID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int deleteCR(dbtbcr_ratings a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cr_ratings WHERE cr_RatingsID=?");
			preState.setInt(1,a.getcr_RatingsID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcr_ratings> getAllRecordsCR(){
		List<dbtbcr_ratings> list=new ArrayList<dbtbcr_ratings>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_ratings");  
			reSet=preState.executeQuery();
			while(reSet.next()) {	
				dbtbcr_ratings a = new dbtbcr_ratings();
				a.setcr_RatingsID(reSet.getInt("cr_RatingsID"));
				a.setCRR_CaregiverID(reSet.getInt("CRR_CaregiverID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			} 
	
	public static dbtbcr_ratings getRecordCR(int id){
		dbtbcr_ratings a =null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_ratings WHERE cr_RatingsID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {	
				a = new dbtbcr_ratings();
				a.setcr_RatingsID(reSet.getInt("cr_RatingsID"));
				a.setCRR_CaregiverID(reSet.getInt("CRR_CaregiverID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
			}
	
	//D
	public static void String_setterD(dbtbd_ratings a,int DR_DoctorID,Date Date, String Name,String Comment,String Rating) {
		a.setDR_DoctorID(DR_DoctorID);
		a.setDate(Date);
		a.setName(Name);
		a.setComment(Comment);
		a.setRating(Rating);
	}
	
	public static void id_setterD(dbtbd_ratings a,int d_RatingsID) {
		a.setd_RatingsID(d_RatingsID);
	}
	public static int saveD(dbtbd_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO d_ratings(DR_DoctorID,Date,Name,Comment,Rating)"
					+"VALUES(?,?,?,?,?)");
			preState.setInt(1,a.getDR_DoctorID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;}
	
	public static int updateD(dbtbd_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE d_ratings SET DR_DoctorID=?,Date=?,Name=?,Comment=?,Rating=? WHERE d_RatingsID=?");
			preState.setInt(1,a.getDR_DoctorID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			preState.setInt(6,a.getd_RatingsID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int deleteD(dbtbd_ratings a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM d_ratings WHERE d_RatingsID=?");
			preState.setInt(1,a.getd_RatingsID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbd_ratings> getAllRecordsD(){
		List<dbtbd_ratings> list=new ArrayList<dbtbd_ratings>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_ratings");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbd_ratings a = new dbtbd_ratings();
				a.setd_RatingsID(reSet.getInt("d_RatingsID"));
				a.setDR_DoctorID(reSet.getInt("DR_DoctorID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			} 
	
	public static dbtbd_ratings getRecordD(int id){
		dbtbd_ratings a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_ratings WHERE d_RatingsID=?");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				a = new dbtbd_ratings();
				a.setd_RatingsID(reSet.getInt("d_RatingsID"));
				a.setDR_DoctorID(reSet.getInt("DR_DoctorID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
			} 
	
	//N
	
	public static void String_setterN(dbtbn_ratings a,int NR_NurseID,Date Date,String Name,String Comment,String Rating) {
		a.setNR_NurseID(NR_NurseID);
		a.setDate(Date);
		a.setName(Name);
		a.setComment(Comment);
		a.setRating(Rating);
	}
	
	public static void id_setterN(dbtbn_ratings a,int n_RatingsID) {
		a.setn_RatingsID(n_RatingsID);
		
	}
	
	public static int saveN(dbtbn_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO n_ratings(NR_NurseID,Date,Name,Comment,Rating)"
					+"VALUES(?,?,?,?,?)");
			preState.setInt(1,a.getNR_NurseID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;}
	
	public static int updateN(dbtbn_ratings a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE n_ratings SET NR_NurseID=?,Date=?,Name=?,Comment=?,Rating=?  WHERE n_RatingsID=?");
			preState.setInt(1,a.getNR_NurseID());
			preState.setDate(2,a.getDate());
			preState.setString(3,a.getName());
			preState.setString(4,a.getComment());
			preState.setString(5,a.getRating());
			preState.setInt(6,a.getn_RatingsID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int deleteN(dbtbn_ratings a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM ch_ratings WHERE n_RatingsID=?");
			preState.setInt(1,a.getn_RatingsID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbn_ratings> getAllRecordsN(){
		List<dbtbn_ratings> list=new ArrayList<dbtbn_ratings>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM n_ratings");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbn_ratings a = new dbtbn_ratings();
				a.setn_RatingsID(reSet.getInt("n_RatingsID"));
				a.setNR_NurseID(reSet.getInt("NR_NurseID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			} 
	
	public static dbtbn_ratings getRecordN(int id){
		dbtbn_ratings a=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM n_ratings  WHERE n_RatingsID=?"); 
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				a= new dbtbn_ratings();
				a.setn_RatingsID(reSet.getInt("n_RatingsID"));
				a.setNR_NurseID(reSet.getInt("NR_NurseID"));
				a.setDate(reSet.getDate("Date"));
				a.setName(reSet.getString("Name"));
				a.setComment(reSet.getString("Comment"));
				a.setRating(reSet.getString("Rating"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
			} 

}
