package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.*;

public class ch_AchievementDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setterCH(dbtbch_achievements a,int A_ChefID,Date DateStarted,String AchievementName,String Description,String Status,String CommendableActs) {
		a.setA_ChefID(A_ChefID);
		a.setDateStarted(DateStarted);
		a.setAchievementName(AchievementName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);

	}
	
	public static void id_setterCH(dbtbch_achievements a,int CH_AchievementID) {
		a.setCH_AchievementID(CH_AchievementID);
		
	}
	
	
	public static int saveCH(dbtbch_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO eva.ch_achievements(A_ChefID,DateStarted,AchievementName,Description,Status,CommendableActs)" + 
					"VALUES(?,?,?,?,?,?);");
			preState.setInt(1,a.getA_ChefID());
			preState.setDate(1,a.getDateStarted());
			preState.setString(2,a.getAchievementName());
			preState.setString(3,a.getDescription());
			preState.setString(4,a.getStatus());
			preState.setString(5,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCH(dbtbch_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE ch_achievements SET A_ChefID=?,DateStarted=?,AchievementName=?,Description=?,Status=?,CommendableActs=? WHERE CH_AchievementID=?");
			preState.setInt(1,a.getA_ChefID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getCH_AchievementID());	
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCH(dbtbch_achievements a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM ch_achievements WHERE CH_AchievementID=?");
			preState.setInt(1,a.getCH_AchievementID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbch_achievements> getAllRecordsCH(){
		List<dbtbch_achievements> list=new ArrayList<dbtbch_achievements>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbch_achievements a = new dbtbch_achievements();
				a.setCH_AchievementID(reSet.getInt("CH_AchievementID"));
				a.setA_ChefID(reSet.getInt("A_ChefID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}	
	
	public static dbtbch_achievements getCHRecord(int id) {
		dbtbch_achievements a= null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_achievements WHERE CH_AchievementID=?");
			preState.setInt(1,id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a= new dbtbch_achievements();
				a.setCH_AchievementID(reSet.getInt("CH_AchievementID"));
				a.setA_ChefID(reSet.getInt("A_ChefID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				
			}
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
		
	}
	
	//CS
	
	public static void String_setterCS(dbtbcs_achievements a,int CSA_CashierID,Date DateStarted,String AchievementName,String Description,String Status,String CommendableActs) {
		a.setCSA_CashierID(CSA_CashierID);
		a.setDateStarted(DateStarted);
		a.setAchievementName(AchievementName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);

	}
	
	public static void id_setterCS(dbtbcs_achievements a,int CS_AchievementID) {
		a.setCS_AchievementID(CS_AchievementID);
		
	}
	
	public static int saveCS(dbtbcs_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cs_achievements(CSA_CashierID,DateStarted,AchievementName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCSA_CashierID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCS(dbtbcs_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cs_achievements SET CSA_CashierID=?,DateStarted=?,AchievementName=?,Description=?,Status=?,CommendableActs=? WHERE CS_AchievementID=?");
			preState.setInt(1,a.getCSA_CashierID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getCS_AchievementID());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCS(dbtbcs_achievements a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cs_achievements WHERE CS_AchievementID=?");
			preState.setInt(1,a.getCS_AchievementID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcs_achievements> getAllRecordsCS(){
		List<dbtbcs_achievements> list=new ArrayList<dbtbcs_achievements>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cs_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcs_achievements a = new dbtbcs_achievements();
				a.setCS_AchievementID(reSet.getInt("CS_AchievementID"));
				a.setCSA_CashierID(reSet.getInt("CSA_CashierID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}
	
	public static dbtbcs_achievements getCSRecord(int id) {
		dbtbcs_achievements a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from cs_achievements where CS_AchievementID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	a = new dbtbcs_achievements();
	        	a.setCS_AchievementID(reSet.getInt("CS_AchievementID"));
				a.setCSA_CashierID(reSet.getInt("CSA_CashierID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
	        }}
	        catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return a;
	}
	
	//CR
	
	public static void String_setterCR(dbtbcr_achievements a,int CRA_CaregiverID,Date DateStarted,String AchievementName,String Description,String Status,String CommendableActs) {
		a.setCRA_CaregiverID(CRA_CaregiverID);
		a.setDateStarted(DateStarted);
		a.setAchievementName(AchievementName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);

	}
	
	public static void id_setterCR(dbtbcr_achievements a,int CR_AchievementID) {
		a.setCR_AchievementID(CR_AchievementID);
		
	}
	
	public static int saveCR(dbtbcr_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cr_achievements(CRA_CaregiverID,DateStarted,AchievementName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCRA_CaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateCR(dbtbcr_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cr_achievements SET CRA_CaregiverID=?,DateStarted=?,AchievementName=?,Description=?,Status=?,CommendableActs=? WHERE CR_AchievementID=?");
			preState.setInt(1,a.getCRA_CaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getCR_AchievementID());	
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteCR(dbtbcr_achievements a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cr_achievements WHERE CR_AchievementID=?");
			preState.setInt(1,a.getCR_AchievementID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbcr_achievements> getAllRecordsCR(){
		List<dbtbcr_achievements> list=new ArrayList<dbtbcr_achievements>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbcr_achievements a = new dbtbcr_achievements();
				a.setCR_AchievementID(reSet.getInt("CR_AchievementID"));
				a.setCRA_CaregiverID(reSet.getInt("CRA_CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}
	
	public static dbtbcr_achievements getCRRecord(int id) {
		dbtbcr_achievements a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from cr_achievements where CR_AchievementID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	a = new dbtbcr_achievements();
	        	a.setCR_AchievementID(reSet.getInt("CR_AchievementID"));
				a.setCRA_CaregiverID(reSet.getInt("CRA_CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return a;
	}
	
	//D
	public static void String_setterD(dbtbd_achievements a,int DA_DcotorID,Date DateStarted,String AchievementName,String Description,String Status,String CommendableActs) {
		a.setDA_DcotorID(DA_DcotorID);
		a.setDateStarted(DateStarted);
		a.setAchievementName(AchievementName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);

	}
	
	public static void id_setterD(dbtbd_achievements a,int D_AchievementID) {
		a.setD_AchievementID(D_AchievementID);
		
	}
	public static int saveD(dbtbd_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO d_achievements(DA_DoctorID,DateStarted,AchievementName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getDA_DoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();}
		
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateD(dbtbd_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE d_achievements SET DA_DoctorID=?,DateStarted=?,AchievementName=?,Description=?,Status=?,CommendableActs=? where D_AchievementID=?");
			preState.setInt(1,a.getDA_DoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getD_AchievementID());	
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteD(dbtbd_achievements a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM d_achievements WHERE D_AchievementID=?");
			preState.setInt(1,a.getD_AchievementID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbd_achievements> getAllRecordsD(){
		List<dbtbd_achievements> list=new ArrayList<dbtbd_achievements>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbd_achievements a = new dbtbd_achievements();
				a.setD_AchievementID(reSet.getInt("D_AchievementID"));
				a.setDA_DcotorID(reSet.getInt("DA_DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}
	
	public static dbtbd_achievements getDRecord(int id) {
		dbtbd_achievements a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from d_achievements where D_AchievementID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	a = new dbtbd_achievements();
	        	a.setD_AchievementID(reSet.getInt("D_AchievementID"));
				a.setDA_DcotorID(reSet.getInt("DA_DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return a;
		
	}
	//N
	public static void String_setterN(dbtbn_achievements a,int NA_NurseID,Date DateStarted,String AchievementName,String Description,String Status,String CommendableActs) {
		a.setNA_NurseID(NA_NurseID);
		a.setDateStarted(DateStarted);
		a.setAchievementName(AchievementName);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setCommendableActs(CommendableActs);

	}
	
	public static void id_setterN(dbtbn_achievements a,int N_AchievementID) {
		a.setN_AchievementID(N_AchievementID);
		
	}
	public static int saveN(dbtbn_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO n_achievements(NA_NurseID,DateStarted,AchievementName,Description,Status,CommendableActs)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getNA_NurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	} 
	
	public static int updateN(dbtbn_achievements a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE n_achievements SET NA_NurseID=?,DateStarted=?,AchievementName=?,Description=?,Status=?,CommendableActs=? WHERE N_AchievementID=?");
			preState.setInt(1,a.getNA_NurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setString(3,a.getAchievementName());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getCommendableActs());
			preState.setInt(7,a.getN_AchievementID());	
			Stat=preState.executeUpdate();
			
		}
		catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
		return Stat;
	}
	
	public static int deleteN(dbtbn_achievements a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM n_achievements WHERE N_AchievementID=?");
			preState.setInt(1,a.getN_AchievementID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	public static List<dbtbn_achievements> getAllRecordsN(){
		List<dbtbn_achievements> list=new ArrayList<dbtbn_achievements>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_achievements");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbn_achievements a = new dbtbn_achievements();
				a.setN_AchievementID(reSet.getInt("N_AchievementID"));
				a.setNA_NurseID(reSet.getInt("NA_NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
	}
			
	public static dbtbn_achievements getNRecord(int id) {
		dbtbn_achievements a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from d_achievements where N_AchievementID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){ 
	        	a=  new dbtbn_achievements();
	        	a.setN_AchievementID(reSet.getInt("N_AchievementID"));
				a.setNA_NurseID(reSet.getInt("NA_NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAchievementName(reSet.getString("AchievementName"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setCommendableActs(reSet.getString("CommendableActs"));
	        }}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return a;}
}
	