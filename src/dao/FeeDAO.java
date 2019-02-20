package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;
public class FeeDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static double sumD(int id) {
		double total  =0;
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerHour * HoursRendered) FROM eva.doctor_fee WHERE CoveredByPlan =0 AND DPatientID="+ id);
       		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	
	public static double sumC(int id) {
		double total  =0;
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerHour * HoursRendered) FROM eva.caregiver_fee WHERE CoveredByPlan =0 AND CPatientID="+id);
    		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	
	public static double sumN(int id) {
		double total  =0;
		try{
    		Connection con=DbCon.getCon();
    		Statement stmt = con.createStatement();
    		ResultSet rs = stmt.executeQuery("SELECT SUM(ratePerHour * HoursRendered) FROM eva.nurse_fee WHERE CoveredByPlan =0 AND NPatientID="+id);
    		while(rs.next()){ 
    			total += rs.getInt(1);
    		}con.close();
    	}catch(Exception e){System.out.println("Wrong Entry! " + e);}
		return total;
	}
	public static void string_setterC(dbtbcaregiver_fee f,int CPatientID,int BCaregiverID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan,String Shift,String status) {
		
		f.setCPatientID(CPatientID);
		f.setBCaregiverID(BCaregiverID);
		f.setratePerHour(ratePerHour);
		f.setHoursRendered(HoursRendered);
		f.setDateStarted(DateStarted);
		f.setDateEnded(DateEnded);
		f.setDueDate(DueDate);
		f.setCoveredByPlan(CoveredByPlan);
		f.setShift(Shift);
		f.setstatus(status);
		
	}
	
	public static void id_setterC(dbtbcaregiver_fee f,int CFeeID,int AppPayID) {
		f.setCFeeID(CFeeID);
		f.setAppPayID(AppPayID);
	}
	
	public static int  saveC(dbtbcaregiver_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO caregiver_fee (CPatientID,BCaregiverID,ratePerHour,HoursRendered,DateStarted,DateEnded,DueDate,CoveredByPlan,Shift,status)" +
											"VALUES(?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getCPatientID());
			preState.setInt(2, f.getBCaregiverID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setString(9, f.getShift());
			preState.setString(10, f.getstatus());
		
			
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int updateC(dbtbcaregiver_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE caregiver_fee SET CPatientID=?,BCaregiverID=?,ratePerHour=?,HoursRendered=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,Shift=?,status=?,AppPayID=? WHERE CFeeID=?"); 
			preState.setInt(1, f.getCPatientID());
			preState.setInt(2, f.getBCaregiverID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setString(9, f.getShift());
			preState.setString(10, f.getstatus());
			preState.setInt(11, f.getAppPayID());
			preState.setInt(12, f.getCFeeID());
			
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static int deleteC(dbtbcaregiver_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM caregiver_fee WHERE CFeeID=?");
			preState.setInt(1, f.getCFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static List<dbtbcaregiver_fee> getAllRecordsC(){
		List<dbtbcaregiver_fee> list=new ArrayList<dbtbcaregiver_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from caregiver_fee");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcaregiver_fee f = new dbtbcaregiver_fee();
				f.setCFeeID(reSet.getInt("CFeeID"));
				f.setCPatientID(reSet.getInt("CPatientID"));
				f.setBCaregiverID(reSet.getInt("BCaregiverID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setstatus(reSet.getString("status"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	public static List<dbtbcaregiver_fee> getUnpaidRecordsC(){
		List<dbtbcaregiver_fee> list=new ArrayList<dbtbcaregiver_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from caregiver_fee where status='unpaid'");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcaregiver_fee f = new dbtbcaregiver_fee();
				f.setCFeeID(reSet.getInt("CFeeID"));
				f.setCPatientID(reSet.getInt("CPatientID"));
				f.setBCaregiverID(reSet.getInt("BCaregiverID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	public static dbtbcaregiver_fee getRecordC(int id) {
		dbtbcaregiver_fee f = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from caregiver_fee WHERE CFeeID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbcaregiver_fee();
				f.setCFeeID(reSet.getInt("CFeeID"));
				f.setCPatientID(reSet.getInt("CPatientID"));
				f.setBCaregiverID(reSet.getInt("BCaregiverID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setstatus(reSet.getString("status"));
				f.setAppPayID(reSet.getInt("AppPayID"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return f;
	}
	
	
	//Doctor
	public static void string_setterD(dbtbdoctor_fee f,int DPatientID,int BDoctorID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan,String Shift,String status) {
		
		f.setDPatientID(DPatientID);
		f.setBDoctorID(BDoctorID);
		f.setratePerHour(ratePerHour);
		f.setHoursRendered(HoursRendered);
		f.setDateStarted(DateStarted);
		f.setDateEnded(DateEnded);
		f.setDueDate(DueDate);
		f.setCoveredByPlan(CoveredByPlan);
		f.setShift(Shift);
		f.setstatus(status);
	
	}
	
	public static void id_setterD(dbtbdoctor_fee f,int DFeeID,int AppPayID) {
		f.setDFeeID(DFeeID);
		f.setAppPayID(AppPayID);
	}
	
	public static int  saveD(dbtbdoctor_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO doctor_fee (DPatientID,BDoctorID,ratePerHour,HoursRendered,DateStarted,DateEnded,DueDate,CoveredByPlan,Shift,status)" +
											"VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			preState.setInt(1, f.getDPatientID());
			preState.setInt(2, f.getBDoctorID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setString(9, f.getShift());
			preState.setString(10, f.getstatus());	
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int updateD(dbtbdoctor_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE doctor_fee SET DPatientID=?,BDoctorID=?,ratePerHour=?,HoursRendered=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,Shift=?,status=?, AppPayID=? WHERE DFeeID=?"); 
			preState.setInt(1, f.getDPatientID());
			preState.setInt(2, f.getBDoctorID());
			preState.setDouble(3, f.getratePerHour());
			preState.setInt(4, f.getHoursRendered());
			preState.setDate(5, f.getDateStarted());
			preState.setDate(6, f.getDateEnded());
			preState.setDate(7, f.getDueDate());
			preState.setBoolean(8, f.getCoveredByPlan());
			preState.setString(9, f.getShift());
			preState.setString(10, f.getstatus());
			preState.setInt(11, f.getAppPayID());
			preState.setInt(12, f.getDFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static int deleteD(dbtbdoctor_fee f) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM doctor_fee WHERE DFeeID=?");
			preState.setInt(1, f.getDFeeID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	} 
	
	public static List<dbtbdoctor_fee> getAllRecordsD(){
		List<dbtbdoctor_fee> list=new ArrayList<dbtbdoctor_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from doctor_fee");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbdoctor_fee f = new dbtbdoctor_fee();
				f.setDFeeID(reSet.getInt("DFeeID"));
				f.setDPatientID(reSet.getInt("DPatientID"));
				f.setBDoctorID(reSet.getInt("BDoctorID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				f.setstatus(reSet.getString("status"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	
	public static List<dbtbdoctor_fee> getUnpaidRecordsD(){
		List<dbtbdoctor_fee> list=new ArrayList<dbtbdoctor_fee>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from doctor_fee WHERE status='unpaid'");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbdoctor_fee f = new dbtbdoctor_fee();
				f.setDFeeID(reSet.getInt("DFeeID"));
				f.setDPatientID(reSet.getInt("DPatientID"));
				f.setBDoctorID(reSet.getInt("BDoctorID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setAppPayID(reSet.getInt("AppPayID"));
				f.setstatus(reSet.getString("status"));
				list.add(f);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	public static dbtbdoctor_fee getRecordD(int id) {
		dbtbdoctor_fee f = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from doctor_fee WHERE FFeeID=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				f = new dbtbdoctor_fee();
				f.setDFeeID(reSet.getInt("DFeeID"));
				f.setDPatientID(reSet.getInt("DPatientID"));
				f.setBDoctorID(reSet.getInt("BDoctorID"));
				f.setratePerHour(reSet.getDouble("ratePerHour"));
				f.setHoursRendered(reSet.getInt("HoursRendered"));
				f.setDateStarted(reSet.getDate("DateStarted"));
				f.setDateEnded(reSet.getDate("DateEnded"));
				f.setDueDate(reSet.getDate("DueDate"));
				f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
				f.setShift(reSet.getString("Shift"));
				f.setstatus(reSet.getString("status"));
				f.setAppPayID(reSet.getInt("AppPayID"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return f;
	}
	
	
	//Nurse
		public static void string_setterN(dbtbnurse_fee f,int NPatientID,int BNurseID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan,String Shift, String status) {
			
			f.setNPatientID(NPatientID);
			f.setBNurseID(BNurseID);
			f.setratePerHour(ratePerHour);
			f.setHoursRendered(HoursRendered);
			f.setDateStarted(DateStarted);
			f.setDateEnded(DateEnded);
			f.setDueDate(DueDate);
			f.setCoveredByPlan(CoveredByPlan);
			f.setShift(Shift);
			f.setstatus(status);
		}
		
		public static void id_setterN(dbtbnurse_fee f,int NFeeID, int AppPay) {
			f.setNFeeID(NFeeID);
			f.setAppPayID(AppPay);
		}
		
		public static int  saveN(dbtbnurse_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("INSERT INTO nurse_fee (NPatientID,BNurseID,ratePerHour,HoursRendered,DateStarted,DateEnded,DueDate,CoveredByPlan,Shift,status)" +
												"VALUES(?,?,?,?,?,?,?,?,?,?)");
				preState.setInt(1, f.getNPatientID());
				preState.setInt(2, f.getBNurseID());
				preState.setDouble(3, f.getratePerHour());
				preState.setInt(4, f.getHoursRendered());
				preState.setDate(5, f.getDateStarted());
				preState.setDate(6, f.getDateEnded());
				preState.setDate(7, f.getDueDate());
				preState.setBoolean(8, f.getCoveredByPlan());
				preState.setString(9, f.getShift());
				preState.setString(10, f.getstatus());
				
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		}
		
		public static int updateN(dbtbnurse_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE nurse_fee SET NPatientID=?,BNurseID=?,ratePerHour=?,HoursRendered=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,Shift=?,status=?,AppPayID=? WHERE NFeeID=?"); 
				preState.setInt(1, f.getNPatientID());
				preState.setInt(2, f.getBNurseID());
				preState.setDouble(3, f.getratePerHour());
				preState.setInt(4, f.getHoursRendered());
				preState.setDate(5, f.getDateStarted());
				preState.setDate(6, f.getDateEnded());
				preState.setDate(7, f.getDueDate());
				preState.setBoolean(8, f.getCoveredByPlan());
				preState.setString(9, f.getShift());
				preState.setString(10, f.getstatus());
				preState.setInt(11, f.getAppPayID());
				preState.setInt(12, f.getNFeeID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		} 
		
		public static int deleteN(dbtbnurse_fee f) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("DELETE FROM nurse_fee WHERE NFeeID=?");
				preState.setInt(1, f.getNFeeID());
				Stat=preState.executeUpdate(); 
			}
			catch (Exception e) {System.out.print("Fail"+e);}
			return Stat;
		} 
		
		public static List<dbtbnurse_fee> getAllRecordsN(){
			List<dbtbnurse_fee> list=new ArrayList<dbtbnurse_fee>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from nurse_fee");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtbnurse_fee f = new dbtbnurse_fee();
					f.setNFeeID(reSet.getInt("NFeeID"));
					f.setNPatientID(reSet.getInt("NPatientID"));
					f.setBNurseID(reSet.getInt("BNurseID"));
					f.setratePerHour(reSet.getDouble("ratePerHour"));
					f.setHoursRendered(reSet.getInt("HoursRendered"));
					f.setDateStarted(reSet.getDate("DateStarted"));
					f.setDateEnded(reSet.getDate("DateEnded"));
					f.setDueDate(reSet.getDate("DueDate"));
					f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
					f.setShift(reSet.getString("Shift"));
					f.setstatus(reSet.getString("status"));
					f.setAppPayID(reSet.getInt("AppPayID"));
					list.add(f);
				}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
				}
		
		public static List<dbtbnurse_fee> getUnpaidRecordsN(){
			List<dbtbnurse_fee> list=new ArrayList<dbtbnurse_fee>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from nurse_fee where status='unpaid'");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtbnurse_fee f = new dbtbnurse_fee();
					f.setNFeeID(reSet.getInt("NFeeID"));
					f.setNPatientID(reSet.getInt("NPatientID"));
					f.setBNurseID(reSet.getInt("BNurseID"));
					f.setratePerHour(reSet.getDouble("ratePerHour"));
					f.setHoursRendered(reSet.getInt("HoursRendered"));
					f.setDateStarted(reSet.getDate("DateStarted"));
					f.setDateEnded(reSet.getDate("DateEnded"));
					f.setDueDate(reSet.getDate("DueDate"));
					f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
					f.setShift(reSet.getString("Shift"));
					f.setstatus(reSet.getString("status"));
					f.setAppPayID(reSet.getInt("AppPayID"));
					list.add(f);
				}}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
				}
		
		public static dbtbnurse_fee getRecordN(int id) {
			dbtbnurse_fee f = null;
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from nurse_fee WHERE NFeeID=?");
				preState.setInt(1, id);
				reSet=preState.executeQuery();
				while(reSet.next()) {
					f = new dbtbnurse_fee();
					f.setNFeeID(reSet.getInt("NFeeID"));
					f.setNPatientID(reSet.getInt("NPatientID"));
					f.setBNurseID(reSet.getInt("BNurseID"));
					f.setratePerHour(reSet.getDouble("ratePerHour"));
					f.setHoursRendered(reSet.getInt("HoursRendered"));
					f.setDateStarted(reSet.getDate("DateStarted"));
					f.setDateEnded(reSet.getDate("DateEnded"));
					f.setDueDate(reSet.getDate("DueDate"));
					f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
					f.setShift(reSet.getString("Shift"));
					f.setstatus(reSet.getString("status"));
					f.setAppPayID(reSet.getInt("AppPayID"));
				}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return f;
		}
		
		
		//Bed
				public static void string_setterB(dbtbbed_fee f,int BPatientID,int BBedID, double ratePerHour,int HoursRendered,Date DateStarted,Date DateEnded,Date DueDate, boolean CoveredByPlan,String Shift) {
					
					f.setBPatientID(BPatientID);
					f.setBBedID(BBedID);
					f.setratePerHour(ratePerHour);
					f.setHoursRendered(HoursRendered);
					f.setDateStarted(DateStarted);
					f.setDateEnded(DateEnded);
					f.setDueDate(DueDate);
					f.setCoveredByPlan(CoveredByPlan);
					f.setShift(Shift);
				}
				
				public static void id_setterB(dbtbbed_fee f,int BFeeID,int AppPayID) {
					f.setBFeeID(BFeeID);
					f.setAppPayID(AppPayID);
				}
				
				public static int  saveB(dbtbbed_fee f) {
					int Stat = 0;
					try {
						conn =   DbCon.getCon();
						preState = conn.prepareStatement("INSERT INTO bed_fee (BPatientID,BBedID,ratePerDay,DaysRendered,DateStarted,DateEnded,DueDate,CoveredByPlan,Shift,status)" +
														"VALUES(?,?,?,?,?,?,?,?,?)");
						preState.setInt(1, f.getBPatientID());
						preState.setInt(2, f.getBBedID());
						preState.setDouble(3, f.getratePerHour());
						preState.setInt(4, f.getHoursRendered());
						preState.setDate(5, f.getDateStarted());
						preState.setDate(6, f.getDateEnded());
						preState.setDate(7, f.getDueDate());
						preState.setBoolean(8, f.getCoveredByPlan());
						preState.setString(9, f.getShift());
						preState.setString(10, f.getstatus());
						Stat=preState.executeUpdate(); 
					}
					catch (Exception e) {System.out.print("Fail"+e);}
					return Stat;
				}
				
				public static int updateB(dbtbbed_fee f) {
					int Stat = 0;
					try {
						conn =   DbCon.getCon();
						preState = conn.prepareStatement("UPDATE bed_fee SET BPatientID=?,BBedID=?,ratePerDay=?,DaysRendered=?,DateStarted=?,DateEnded=?,DueDate=?,CoveredByPlan=?,Shift=?,status=?,AppPayID=? WHERE BFeeID=?"); 
						preState.setInt(1, f.getBPatientID());
						preState.setInt(2, f.getBBedID());
						preState.setDouble(3, f.getratePerHour());
						preState.setInt(4, f.getHoursRendered());
						preState.setDate(5, f.getDateStarted());
						preState.setDate(6, f.getDateEnded());
						preState.setDate(7, f.getDueDate());
						preState.setBoolean(8, f.getCoveredByPlan());
						preState.setString(9, f.getShift());
						preState.setString(10, f.getstatus());
						preState.setInt(12, f.getBFeeID());
						preState.setInt(11, f.getAppPayID());
						
						Stat=preState.executeUpdate(); 
					}
					catch (Exception e) {System.out.print("Fail"+e);}
					return Stat;
				} 
				
				public static int deleteB(dbtbbed_fee f) {
					int Stat = 0;
					try {
						conn =   DbCon.getCon();
						preState = conn.prepareStatement("DELETE FROM bed_fee WHERE BFeeID=?");
						preState.setInt(1, f.getBFeeID());
						Stat=preState.executeUpdate(); 
					}
					catch (Exception e) {System.out.print("Fail"+e);}
					return Stat;
				} 
				
				public static List<dbtbbed_fee> getAllRecordsB(){
					List<dbtbbed_fee> list=new ArrayList<dbtbbed_fee>();
					try {
						conn=DbCon.getCon();   
						preState=conn.prepareStatement("select * from bed_fee");  
						reSet=preState.executeQuery();
						while(reSet.next()) {
							dbtbbed_fee f = new dbtbbed_fee();
							f.setBFeeID(reSet.getInt("BFeeID"));
							f.setBPatientID(reSet.getInt("BPatientID"));
							f.setBBedID(reSet.getInt("BBedID"));
							f.setratePerHour(reSet.getDouble("ratePerDay"));
							f.setHoursRendered(reSet.getInt("DaysRendered"));
							f.setDateStarted(reSet.getDate("DateStarted"));
							f.setDateEnded(reSet.getDate("DateEnded"));
							f.setDueDate(reSet.getDate("DueDate"));
							f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
							f.setShift(reSet.getString("Shift"));
							f.setstatus(reSet.getString("status"));
							f.setAppPayID(reSet.getInt("AppPayID"));
							list.add(f);
						}}
						catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
						return list;
						}
				public static List<dbtbbed_fee> getUnpaidRecordsB(){
					List<dbtbbed_fee> list=new ArrayList<dbtbbed_fee>();
					try {
						conn=DbCon.getCon();   
						preState=conn.prepareStatement("select * from eva.bed_fee where status='unpaid';");  
						reSet=preState.executeQuery();
						while(reSet.next()) {
							dbtbbed_fee f = new dbtbbed_fee();
							f.setBFeeID(reSet.getInt("BFeeID"));
							f.setBPatientID(reSet.getInt("BPatientID"));
							f.setBBedID(reSet.getInt("BBedID"));
							f.setratePerHour(reSet.getDouble("ratePerDay"));
							f.setHoursRendered(reSet.getInt("DaysRendered"));
							f.setDateStarted(reSet.getDate("DateStarted"));
							f.setDateEnded(reSet.getDate("DateEnded"));
							f.setDueDate(reSet.getDate("DueDate"));
							f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
							f.setShift(reSet.getString("Shift"));
							f.setstatus(reSet.getString("status"));
							f.setAppPayID(reSet.getInt("AppPayID"));
							list.add(f);
						}}
						catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
						return list;
						}
				
				public static dbtbbed_fee getRecordB(int id) {
					dbtbbed_fee f = null;
					try {
						conn=DbCon.getCon();   
						preState=conn.prepareStatement("select * from bed_fee WHERE BFeeID=?");
						preState.setInt(1, id);
						reSet=preState.executeQuery();
						while(reSet.next()) {
							f = new dbtbbed_fee();
							f.setBFeeID(reSet.getInt("BFeeID"));
							f.setBPatientID(reSet.getInt("BPatientID"));
							f.setBBedID(reSet.getInt("BBedID"));
							f.setratePerHour(reSet.getDouble("ratePerDay"));
							f.setHoursRendered(reSet.getInt("DaysRendered"));
							f.setDateStarted(reSet.getDate("DateStarted"));
							f.setDateEnded(reSet.getDate("DateEnded"));
							f.setDueDate(reSet.getDate("DueDate"));
							f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
							f.setShift(reSet.getString("Shift"));
							f.setstatus(reSet.getString("status"));
							f.setAppPayID(reSet.getInt("AppPayID"));
						}}
					catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
					return f;
				}
				
				public static dbtbbed_fee getRecordBP(int id) {
					dbtbbed_fee f = null;
					try {
						conn=DbCon.getCon();   
						preState=conn.prepareStatement("select * from bed_fee WHERE BPatientID=?");
						preState.setInt(1, id);
						reSet=preState.executeQuery();
						while(reSet.next()) {
							f = new dbtbbed_fee();
							f.setBFeeID(reSet.getInt("BFeeID"));
							f.setBPatientID(reSet.getInt("BPatientID"));
							f.setBBedID(reSet.getInt("BBedID"));
							f.setratePerHour(reSet.getDouble("ratePerDay"));
							f.setHoursRendered(reSet.getInt("DaysRendered"));
							f.setDateStarted(reSet.getDate("DateStarted"));
							f.setDateEnded(reSet.getDate("DateEnded"));
							f.setDueDate(reSet.getDate("DueDate"));
							f.setCoveredByPlan(reSet.getBoolean("CoveredByPlan"));
							f.setShift(reSet.getString("Shift"));
							f.setstatus(reSet.getString("status"));
							f.setAppPayID(reSet.getInt("AppPayID"));
						}}
					catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
					return f;
				}
				
				
}
