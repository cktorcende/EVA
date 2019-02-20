package dao;


import conn.DbCon;

import java.sql.*;


import dbtb.dbtbUser;


public class UserDAO {
	
	
	static PreparedStatement preState= null;
	static ResultSet reSet = null;
	
	public static String filterUser(dbtbUser user) {
		char verify =user.getUsername().charAt(0);
		if(user.getUsername().equals("Admin")) {
			return "Admin"; }
		else if(Character.isAlphabetic(verify)) {
				 return "employee";}
				 
		else if (Character.isDigit(verify)){
				 return "patient";
			 }
		else {
			System.out.println("hereN");
			return "None";
		}
			 
	}
	public static int updateAttempt(dbtbUser user) {	
		int Stat = 0;
		try {
			getAttempt(user);
			System.out.println("NO:"+ user.getNumOfAttempts());
			Connection con =   DbCon.getCon();
			preState = con.prepareStatement("UPDATE " + Table(user.getUsername()) + " SET NumOfAttempts=? WHERE Username=?");
			preState.setInt(1, user.getNumOfAttempts()+1);
			preState.setString(2, user.getUsername());
			Stat=preState.executeUpdate();
			con.close();
		} catch (SQLException e) {
			System.out.print("here.");
			e.printStackTrace();
		}
		return Stat;
		
		
	}
	
	public static void getAttempt(dbtbUser u) {
		try {
			Connection con =   DbCon.getCon();
			u.setNumOfAttempts(0);
			preState = con.prepareStatement("SELECT NumOfAttempts FROM " + Table(u.getUsername()) + " WHERE Username=?");
			preState.setString(1, u.getUsername());
			reSet=preState.executeQuery();
			while (reSet.next()){
				u.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				
				}
			con.close();
			System.out.println(u.getNumOfAttempts());}
		catch (SQLException e) {
			System.out.print("herre.");
			
		}
		
	}
	
	public static boolean submit (dbtbUser user) {
		try {
			Connection con =DbCon.getCon();
			preState=con.prepareStatement("select * from "+ Table(user.getUsername())+ " where Username=? and pswrd=?");
			preState.setString(1, user.getUsername());
			preState.setString(2, user.getpswrd());
			reSet=preState.executeQuery();
			if (reSet.next()) {
				con.close();
				return true;
			}
			else {
				con.close();
				return false;
			}
		}
		catch(Exception e) {
			System.out.print("Fail"+ e);}
		return true;
		
	}
	
	public static String Table(String acc) {
		char validate= acc.charAt(0);
		if (Character.toString(validate).equals("D")  || Character.toString(validate).equals("N")) {
			return "employee_account";
		} 
		else{
			return "client_account";
		}
		
	}
	public static boolean submitAdmin(dbtbUser user) {
		if (user.getpswrd().equals("Admin")) {
			return true;}
		else {
			return false;
		}
	}
	
	
	
	
}
