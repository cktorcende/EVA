package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;

public class ch_experienceDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setterCH(dbtbch_experience a,int ChefID,Date DateStarted,String ExperienceName,String Description,String Status,String CommendableActs) {
		a.setChefID(ChefID);
		a.setDateStarted(DateStarted);
		a.setExperienceName(ExperienceName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);
	}
	
	public static void id_setterCH(dbtbch_experience a,int CH_ExperienceID) {
		a.setCH_ExperienceID(CH_ExperienceID);
	}
	
	public static int saveCH(dbtbch_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO ch_experience(ChefID,DateStarted,ExperienceName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getChefID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCH(dbtbch_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE ch_achievements SET ChefID=?,DateStarted=?,ExperienceName=?,Description=?,Status=?,CommendableActs=? WHERE CH_ExperienceID=?");
			preState.setInt(1,a.getChefID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7, a.getCH_ExperienceID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCH(dbtbch_experience a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM ch_experience WHERE CH_ExperienceID=?");
			preState.setInt(1,a.getCH_ExperienceID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbch_experience> getAllRecordsCH(){
		List<dbtbch_experience> list=new ArrayList<dbtbch_experience>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_experience");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbch_experience a = new dbtbch_experience();
				a.setCH_ExperienceID(reSet.getInt("CH_ExperienceID"));
				a.setChefID(reSet.getInt("ChefID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;}
	    
	    
	    public static dbtbch_experience getRecordCH(int id) {
	    	dbtbch_experience a = null;
	    	try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("SELECT * FROM ch_experience WHERE CH_ExperienceID=?");
				preState.setInt(1, id);
				reSet=preState.executeQuery();
				while(reSet.next()) {
					a = new dbtbch_experience();
					a.setCH_ExperienceID(reSet.getInt("CH_ExperienceID"));
					a.setChefID(reSet.getInt("ChefID"));
					a.setDateStarted(reSet.getDate("DateStarted"));
					a.setExperienceName(reSet.getString("ExperienceName"));
					a.setDescription(reSet.getString("Description"));
					a.setStatus(reSet.getString("Status"));
					a.setCommendableActs(reSet.getString("CommendableActs"));
					
				}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		    return a;
	}	
	
	//CS
	
	    public static void String_setterCS(dbtbcs_experience a,int CashierID,Date DateStarted,String ExperienceName,String Description,String Status,String CommendableActs) {
			a.setCashierID(CashierID);
			a.setDateStarted(DateStarted);
			a.setExperienceName(ExperienceName);
			a.setDescription(Description);
			a.setStatus(Status);
			a.setCommendableActs(CommendableActs);
		}
		
		public static void id_setterCS(dbtbcs_experience a,int CS_ExperienceID) {
			a.setCS_ExperienceID(CS_ExperienceID);
		}
			public static int saveCS(dbtbcs_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cs_achievements(CashierID,DateStarted,ExperienceName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCashierID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCS(dbtbcs_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cs_achievements SET CashierID=?,DateStarted=?,ExperienceName=?,Description=?,Status=?,CommendableActs=? WHERE CS_ExperienceID=?");
			preState.setInt(1,a.getCashierID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getCS_ExperienceID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCS(dbtbcs_experience a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cs_experience WHERE CS_ExperienceID=?");
			preState.setInt(1,a.getCS_ExperienceID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcs_experience> getAllRecordsCS(){
		List<dbtbcs_experience> list=new ArrayList<dbtbcs_experience>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cs_experience");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcs_experience a = new dbtbcs_experience();
				a.setCS_ExperienceID(reSet.getInt("CS_ExperienceID"));
				a.setCashierID(reSet.getInt("CashierID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}
	    public static dbtbcs_experience getRecordCS(int id) {
	    	dbtbcs_experience a = null;
	    	try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("SELECT * FROM cs_experience  WHERE CS_ExperienceID=?");  
				preState.setInt(1, id);
				reSet=preState.executeQuery();
				while(reSet.next()) {
					a = new dbtbcs_experience();
					a.setCS_ExperienceID(reSet.getInt("CS_ExperienceID"));
					a.setCashierID(reSet.getInt("CashierID"));
					a.setDateStarted(reSet.getDate("DateStarted"));
					a.setExperienceName(reSet.getString("ExperienceName"));
					a.setDescription(reSet.getString("Description"));
					a.setStatus(reSet.getString("Status"));
					a.setCommendableActs(reSet.getString("CommendableActs"));
				
				}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		    return a;
	    
	}	
	
	//CR
	
	    public static void String_setterCR(dbtbcr_experience a,int CaregiverID,Date DateStarted,String ExperienceName,String Description,String Status,String CommendableActs) {
			a.setCaregiverID(CaregiverID);
			a.setDateStarted(DateStarted);
			a.setExperienceName(ExperienceName);
			a.setDescription(Description);
			a.setStatus(Status);
			a.setCommendableActs(CommendableActs);
		}
		
		public static void id_setterCR(dbtbcr_experience a,int CR_AchievementID) {
			a.setCR_ExperienceID(CR_AchievementID);
		}
	    
	public static int saveCR(dbtbcr_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cr_experience(CaregiverID,DateStarted,ExperienceName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCR(dbtbcr_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cr_experience SET CaregiverID=?,DateStarted=?,ExperienceName=?,Description=?,Status=?,CommendableActs=? WHERE CR_ExperienceID=?");
			preState.setInt(1,a.getCaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getCR_ExperienceID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCR(dbtbcr_experience a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM experience WHERE CR_ExperienceID=?");
			preState.setInt(1,a.getCR_ExperienceID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcr_experience> getAllRecordsCR(){
		List<dbtbcr_experience> list=new ArrayList<dbtbcr_experience>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_experience");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcr_experience a= new dbtbcr_experience();
				a.setCR_ExperienceID(reSet.getInt("CR_AchievementID"));
				a.setCaregiverID(reSet.getInt("CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}	
	
	public static dbtbcr_experience getRecordCR(int id) {
		dbtbcr_experience a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_experience  WHERE CR_ExperienceID=?");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbcr_experience();
				a.setCR_ExperienceID(reSet.getInt("CR_AchievementID"));
				a.setCaregiverID(reSet.getInt("CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}
	
	//D
	
	public static void String_setterD(dbtbd_experience a,int DoctorID,Date DateStarted,String ExperienceName,String Description,String Status,String CommendableActs) {
		a.setDoctorID(DoctorID);
		a.setDateStarted(DateStarted);
		a.setExperienceName(ExperienceName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);
	}
	
	public static void id_setterD(dbtbd_experience a,int D_ExperienceID) {
		a.setD_ExperienceID(D_ExperienceID);
	}
	
	public static int saveD(dbtbd_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO d_achievements(DoctorID,DateStarted,ExperienceName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getDoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateD(dbtbd_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE d_achievements SET DoctorID=?,DateStarted=?,ExperienceName=?,Description=?,Status=?,CommendableActs=? WHERE D_ExperienceID=?");
			preState.setInt(1,a.getDoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getD_ExperienceID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteD(dbtbd_experience a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM d_achievements WHERE D_ExperienceID=?");
			preState.setInt(1,a.getD_ExperienceID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbd_experience> getAllRecordsD(){
		List<dbtbd_experience> list=new ArrayList<dbtbd_experience>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbd_experience a= new dbtbd_experience(); 
				a.setD_ExperienceID(reSet.getInt("D_ExperienceID"));
				a.setDoctorID(reSet.getInt("DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}	
	public static dbtbd_experience getRecordD(int id){
		dbtbd_experience a = null;
		
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_achievements WHERE D_ExperienceID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbd_experience(); 
				a.setD_ExperienceID(reSet.getInt("D_ExperienceID"));
				a.setDoctorID(reSet.getInt("DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}
	
	
	//N
	
	public static void String_setterN(dbtbn_experience a,int NurseID,Date DateStarted,String ExperienceName,String Description,String Status,String CommendableActs) {
		a.setNurseID(NurseID);
		a.setDateStarted(DateStarted);
		a.setExperienceName(ExperienceName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);
	}
	
	public static void id_setterN(dbtbn_experience a,int N_AchievementID) {
		a.setN_ExperienceID(N_AchievementID);
	}
	
	public static int saveN(dbtbn_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO n_achievements(NurseID,DateStarted,ExperienceName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getNurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateN(dbtbn_experience a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE n_achievements SET NurseID=?,DateStarted=?,ExperienceName=?,Description=?,Status=?,CommendableActs=? WHERE N_AchievementID=?");
			preState.setInt(1,a.getNurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getExperienceName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getN_ExperienceID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteN(dbtbn_experience a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM n_achievements WHERE N_AchievementID=?");
			preState.setInt(1,a.getN_ExperienceID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbn_experience> getAllRecordsN(){
		List<dbtbn_experience> list=new ArrayList<dbtbn_experience>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM n_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbn_experience a = new dbtbn_experience();
				a.setN_ExperienceID(reSet.getInt("N_AchievementID"));
				a.setNurseID(reSet.getInt("NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}	
	
	public static dbtbn_experience getRecordN(int id){
		dbtbn_experience a= null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM n_achievements WHERE N_AchievementID=?");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbn_experience();
				a.setN_ExperienceID(reSet.getInt("N_AchievementID"));
				a.setNurseID(reSet.getInt("NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setExperienceName(reSet.getString("ExperienceName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}	
}
