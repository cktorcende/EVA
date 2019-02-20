package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;

public class FeeMDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static double sumM(int id) {
		double total  =0;
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerItem * AmountUsed) FROM eva.drug_fee WHERE CoveredByPlan =0 AND DRPatientID="+ id);
       		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	
	
	public static double sumF(int id) {
		double total  =0;
		
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerMonth) FROM eva.food_fee WHERE CoveredByPlan =0 AND FPatientID=" +id);
    		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	
	public static double sumFD(int id) {
		double total  =0;
		
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerMonth-(ratePerMonth*((30-DaysRendered) *.10) )) FROM eva.food_fee WHERE CoveredByPlan =0 AND DaysRendered < 30  AND FPatientID=" +id);
    		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	
	public static double sumS(int id) {
		double total  =0;
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerItem * AmountUsed) FROM eva.supply_fee WHERE CoveredByPlan =0 AND SPatientID="+id);
    		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	public static void string_setterM(dbtbdrug_fee f,int DPatientID,int BDrugID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan) {
		
		f.setDRPatientID(DPatientID);
		f.setBDrugID(BDrugID);
		f.setratePerHour(ratePerHour);
		f.setHoursRendered(HoursRendered);
		f.setDateStarted(DateStarted);
		f.setDateEnded(DateEnded);
		f.setDueDate(DueDate);
		f.setCoveredByPlan(CoveredByPlan);
	}
	
	public static void id_setterM(dbtbdrug_fee f,int DRFeeID, int AppPayID) {
		f.setDRFeeID(DRFeeID);
		f.setAppPayID(AppPayID);
	}
	
	public static int  saveM(dbtbdrug_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO drug_fee (DRPatientID,BDrugID,ratePerItem,AmountUsed,DateStarted,DateEnded,DueDate,CoveredByPlan)" +
											"VALUES(?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getDRPatientID());
			preState.setInt(2, f.getBDrugID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
		
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int updateM(dbtbdrug_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE drug_fee SET DRPatientID=?,BDrugID=?,ratePerHour=?,AmountUsed=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,AppPayID=? WHERE DRFeeID=?"); 
			preState.setInt(1, f.getDRPatientID());
			preState.setInt(2, f.getBDrugID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setInt(9, f.getAppPayID());
			preState.setInt(10, f.getDRFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static int deleteM(dbtbdrug_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM drug_fee WHERE DRFeeID=?");
			preState.setInt(1, f.getDRFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static List<dbtbdrug_fee> getAllRecordsM(){
		List<dbtbdrug_fee> list=new ArrayList<dbtbdrug_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from drug_fee");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbdrug_fee f = new dbtbdrug_fee();
				f.setDRFeeID(reSet.getInt("DRFeeID"));
				f.setDRPatientID(reSet.getInt("DRPatientID"));
				f.setBDrugID(reSet.getInt("BDrugID"));
				f.setratePerHour(reSet.getDouble("ratePerItem"));
				f.setHoursRendered(reSet.getInt("AmountUsed"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	
	public static dbtbdrug_fee getRecordM(int id) {
		dbtbdrug_fee f = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from drug_fee WHERE DRFeeID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbdrug_fee();
				f.setDRFeeID(reSet.getInt("DRFeeID"));
				f.setDRPatientID(reSet.getInt("DRPatientID"));
				f.setBDrugID(reSet.getInt("BDrugID"));
				f.setratePerHour(reSet.getDouble("ratePerItem"));
				f.setHoursRendered(reSet.getInt("AmountUsed"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setAppPayID(reSet.getInt("AppPayID"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return f;
	}
	
	
	//food
	public static void string_setterF(dbtbfood_fee f,int FPatientID,int BFoodID, double ratePerMonth,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan) {
		
		f.setFPatientID(FPatientID);
		f.setBFoodID(BFoodID);
		f.setratePerMonth(ratePerMonth);
		f.setHoursRendered(HoursRendered);
		f.setDateStarted(DateStarted);
		f.setDateEnded(DateEnded);
		f.setDueDate(DueDate);
		f.setCoveredByPlan(CoveredByPlan);
	}
	
	public static void id_setterF(dbtbfood_fee f,int FFeeID, int AppPayID) {
		f.setFFeeID(FFeeID);
		f.setAppPayID(AppPayID);
	}
	
	public static int  saveF(dbtbfood_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO food_fee (FPatientID,BFoodID,ratePerMonth,DaysRendered,DateStarted,DateEnded,DueDate,CoveredByPlan)" +
											"VALUES(?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getFPatientID());
			preState.setInt(2, f.getBFoodID());
			preState.setDouble(3, f.getratePerMonth());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int updateF(dbtbfood_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE food_fee SET FPatientID=?,BFoodID=?,ratePerMonth=?,DaysRendered=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,AppPayID=? WHERE FFeeID=?"); 
			preState.setInt(1, f.getFPatientID());
			preState.setInt(2, f.getBFoodID());
			preState.setDouble(3, f.getratePerMonth());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setInt(9, f.getAppPayID());
			preState.setInt(10, f.getFFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static int deleteF(dbtbfood_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM food_fee WHERE FFeeID=?");
			preState.setInt(1, f.getFFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static List<dbtbfood_fee> getAllRecordsF(){
		List<dbtbfood_fee> list=new ArrayList<dbtbfood_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from food_fee");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbfood_fee f = new dbtbfood_fee();
				f.setFFeeID(reSet.getInt("FFeeID"));
				f.setFPatientID(reSet.getInt("FPatientID"));
				f.setBFoodID(reSet.getInt("BFoodID"));
				f.setratePerMonth(reSet.getDouble("ratePerMonth"));
				f.setHoursRendered(reSet.getInt("DaysRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	
	public static dbtbfood_fee getRecordF(int id) {
		dbtbfood_fee f = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from food_fee WHERE FFeeID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbfood_fee();
				f.setFFeeID(reSet.getInt("FFeeID"));
				f.setFPatientID(reSet.getInt("FPatientID"));
				f.setBFoodID(reSet.getInt("BFoodID"));
				f.setratePerMonth(reSet.getDouble("ratePerMonth"));
				f.setHoursRendered(reSet.getInt("DaysRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setAppPayID(reSet.getInt("AppPayID"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return f;
	}
	
	
	//Supply
		public static void string_setterS(dbtbsupply_fee f,int SPatientID,int BSupplyID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan) {
			
			f.setSPatientID(SPatientID);
			f.setBSupplyID(BSupplyID);
			f.setratePerHour(ratePerHour);
			f.setHoursRendered(HoursRendered);
			f.setDateStarted(DateStarted);
			f.setDateEnded(DateEnded);
			f.setDueDate(DueDate);
			f.setCoveredByPlan(CoveredByPlan);
		}
		
		public static void id_setterS(dbtbsupply_fee f,int SFeeID, int AppPayID) {
			f.setSFeeID(SFeeID);
			f.setAppPayID(AppPayID);
		}
		
		public static int  saveS(dbtbsupply_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("INSERT INTO supply_fee (SPatientID,BSupplyID,ratePerItem,AmountUsed,DateStarted,DateEnded,DueDate,CoveredByPlan)" +
												"VALUES(?,?,?,?,?,?,?,?)");
				preState.setInt(1, f.getSPatientID());
				preState.setInt(2, f.getBSupplyID());
				preState.setDouble(3, f.getratePerHour());
				preState.setInt(4, f.getHoursRendered());
				preState.setDate(5, f.getDateStarted());
				preState.setDate(6, f.getDateEnded());
				preState.setDate(7, f.getDueDate());
				preState.setBoolean(8, f.getCoveredByPlan());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		}
		
		public static int updateS(dbtbsupply_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE supply_fee SET SPatientID=?,BSupplyID=?,ratePerItem=?,AmountUsed=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,AppPayID=? WHERE SFeeID=?"); 
				preState.setInt(1, f.getSPatientID());
				preState.setInt(2, f.getBSupplyID());
				preState.setDouble(3, f.getratePerHour());
				preState.setInt(4, f.getHoursRendered());
				preState.setDate(5, f.getDateStarted());
				preState.setDate(6, f.getDateEnded());
				preState.setDate(7, f.getDueDate());
				preState.setBoolean(8, f.getCoveredByPlan());
				preState.setInt(9, f.getAppPayID());
				preState.setInt(10, f.getSFeeID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		} 
		
		public static int deleteS(dbtbsupply_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("DELETE FROM supply_fee WHERE SFeeID=?");
				preState.setInt(1, f.getSFeeID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		} 
		
		public static List<dbtbsupply_fee> getAllRecordsS(){
			List<dbtbsupply_fee> list=new ArrayList<dbtbsupply_fee>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from supply_fee");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtbsupply_fee f = new dbtbsupply_fee();
					f.setSFeeID(reSet.getInt("SFeeID"));
					f.setSPatientID(reSet.getInt("SPatientID"));
					f.setBSupplyID(reSet.getInt("BSupplyID"));
					f.setratePerHour(reSet.getDouble("ratePerItem"));
					f.setHoursRendered(reSet.getInt("AmountUsed"));
					f.setDateStarted(reSet.getDate("DateStarted"));
					f.setDateEnded(reSet.getDate("DateEnded"));
					f.setDueDate(reSet.getDate("DueDate"));
					f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
					f.setAppPayID(reSet.getInt("AppPayID"));
					
					list.add(f);
				}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
				}
		
		public static dbtbsupply_fee getRecordS(int id) {
			dbtbsupply_fee f = null;
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from supply_fee WHERE SFeeID=?");
				preState.setInt(1, id);
				reSet=preState.executeQuery();
				while(reSet.next()) {
					f = new dbtbsupply_fee();
					f.setSFeeID(reSet.getInt("SFeeID"));
					f.setSPatientID(reSet.getInt("SPatientID"));
					f.setBSupplyID(reSet.getInt("BSupplyID"));
					f.setratePerHour(reSet.getDouble("ratePerItem"));
					f.setHoursRendered(reSet.getInt("AmountUsed"));
					f.setDateStarted(reSet.getDate("DateStarted"));
					f.setDateEnded(reSet.getDate("DateEnded"));
					f.setDueDate(reSet.getDate("DueDate"));
					f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
					f.setAppPayID(reSet.getInt("AppPayID"));
				}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return f;
		}
}
