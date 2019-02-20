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

public class ch_assignedDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	//CH
	
	public static void String_setterCH(dbtbch_assigned a,int CHAS_ChefID,Date DateStarted,int AssignedPatientID,String Description,String Status,String AssignedTime){
		a.setCHAS_ChefID(CHAS_ChefID);
		a.setDateStarted(DateStarted);
		a.setAssignedPatientID(AssignedPatientID);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setAssignedTime(AssignedTime);
	}
	
	public static void id_setterCH(dbtbch_assigned a, int CH_AssignedID) {
		a.setCH_AssignedID(CH_AssignedID);
	}
	
	
	public static int saveCH(dbtbch_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO ch_assigned(CHAS_ChefID,DateStarted,AssignedPatientID,Description,Status,AssignedTime)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCHAS_ChefID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getAssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int updateCH(dbtbch_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE ch_assigned SET CHAS_ChefID=?,DateStarted=?,AssignedPatientID=?,Description=?,Status=?,AssignedTime=? WHERE CH_AssignedID=?");
			preState.setInt(1,a.getCHAS_ChefID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getAssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			preState.setInt(7,a.getCH_AssignedID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	
	public static int deleteCH(dbtbch_assigned a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM ch_assigned WHERE CH_AssignedID=?");
			preState.setInt(1,a.getCH_AssignedID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	
	public static  List<dbtbch_assigned> getAllRecordsCH(){
		List<dbtbch_assigned> list=new ArrayList<dbtbch_assigned>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_assigned");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbch_assigned a = new dbtbch_assigned();
				a.setCH_AssignedID(reSet.getInt("CH_AssignedID"));
				a.setCHAS_ChefID(reSet.getInt("A_ChefID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAssignedPatientID(reSet.getInt("AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static dbtbch_assigned getCHRecord(int id) {
		dbtbch_assigned a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_assigned WHERE CH_AssignedID=?");
			preState.setInt(1,id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbch_assigned();
				a.setCH_AssignedID(reSet.getInt("CH_AssignedID"));
				a.setCHAS_ChefID(reSet.getInt("A_ChefID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setAssignedPatientID(reSet.getInt("AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
		
	}
	
	
	//CR
	public static void String_setterCR(dbtbcr_assigned a,int CRAS_CaregiverID,Date DateStarted,int CR_AssignedPatientID,String Description,String Status,String AssignedTime){
		a.setCRAS_CaregiverID(CRAS_CaregiverID);
		a.setDateStarted(DateStarted);
		a.setCR_AssignedPatientID(CR_AssignedPatientID);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setAssignedTime(AssignedTime);
	}
	
	public static void id_setterCR(dbtbcr_assigned a, int CR_AssignedID) {
		a.setCR_AssignedID(CR_AssignedID);
	}
	
	public static int saveCR(dbtbcr_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO cr_assigned(CRAS_CaregiverID,DateStarted,AssignedPatientID,Description,Status,AssignedTime)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getCRAS_CaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getCR_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int updateCR(dbtbcr_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cr_assigned SET CRAS_CaregiverID=?,DateStarted=?,CR_AssignedPatientID=?,Description=?,Status=?,AssignedTime=? WHERE CR_AssignedID=?");
			preState.setInt(1,a.getCRAS_CaregiverID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getCR_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			preState.setInt(7,a.getCR_AssignedID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	
	public static int deleteCR(dbtbcr_assigned a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM cr_assigned WHERE CR_AssignedID=?");
			preState.setInt(1,a.getCR_AssignedID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	
	public static  List<dbtbcr_assigned> getAllRecordsCR(){
		List<dbtbcr_assigned> list=new ArrayList<dbtbcr_assigned>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_assigned");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbcr_assigned a = new dbtbcr_assigned();
				a.setCR_AssignedID(reSet.getInt("CR_AssignedID"));
				a.setCRAS_CaregiverID(reSet.getInt("CRAS_CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setCR_AssignedPatientID(reSet.getInt("CR_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static dbtbcr_assigned getCRRecord(int id) {
		dbtbcr_assigned a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM cr_assigned WHERE CR_AssignedID=?");
			preState.setInt(1,id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbcr_assigned();
				a.setCR_AssignedID(reSet.getInt("CR_AssignedID"));
				a.setCRAS_CaregiverID(reSet.getInt("CRAS_CaregiverID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setCR_AssignedPatientID(reSet.getInt("CR_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}
	
	//D
	
	public static void String_setterD(dbtbd_assigned a,int DAS_DoctorID,Date DateStarted,int D_AssignedPatientID,String Description,String Status,String AssignedTime){
		a.setDAS_DoctorID(DAS_DoctorID);
		a.setDateStarted(DateStarted);
		a.setD_AssignedPatientID(D_AssignedPatientID);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setAssignedTime(AssignedTime);
	}
	
	public static void id_setterD(dbtbd_assigned a, int D_AssignedID) {
		a.setD_AssignedID(D_AssignedID);
	}
	
	public static int saveD(dbtbd_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO d_assigned(DAS_DoctorID,DateStarted,D_AssignedPatientID,Description,Status,AssignedTime)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getDAS_DoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getD_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int updateD(dbtbd_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE d_assigned SET DAS_DoctorID=?,DateStarted=?,D_AssignedPatientID=?,Description=?,Status=?,AssignedTime=? WHERE D_AssignedID=?");
			preState.setInt(1,a.getDAS_DoctorID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getD_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			preState.setInt(7,a.getD_AssignedID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	
	public static int deleteD(dbtbd_assigned a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM d_assigned WHERE D_AssignedID=?");
			preState.setInt(1,a.getD_AssignedID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	
	public static  List<dbtbd_assigned> getAllRecordsD(){
		List<dbtbd_assigned> list=new ArrayList<dbtbd_assigned>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_assigned");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbd_assigned a = new dbtbd_assigned();
				a.setD_AssignedID(reSet.getInt("D_AssignedID"));
				a.setDAS_DoctorID(reSet.getInt("DAS_DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setD_AssignedPatientID(reSet.getInt("D_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static dbtbd_assigned getDRecord(int id) {
		dbtbd_assigned a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM d_assigned WHERE D_AssignedID=?");
			preState.setInt(1,id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbd_assigned();
				a.setD_AssignedID(reSet.getInt("D_AssignedID"));
				a.setDAS_DoctorID(reSet.getInt("DAS_DoctorID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setD_AssignedPatientID(reSet.getInt("D_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}
	
	//N
	
	public static void String_setterN(dbtbn_assigned a,int NAS_NurseID,Date DateStarted,int N_AssignedPatientID,String Description,String Status,String AssignedTime){
		a.setNAS_NurseID(NAS_NurseID);
		a.setDateStarted(DateStarted);
		a.setN_AssignedPatientID(N_AssignedPatientID);
		a.setDescription(Description);
		a.setStatus(Status);
		a.setAssignedTime(AssignedTime);
	}
	
	public static void id_setterN(dbtbn_assigned a, int N_AssignedID) {
		a.setN_AssignedID(N_AssignedID);
	}
	
	
	public static int saveN(dbtbn_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO n_assigned(NAS_NurseID,DateStarted,N_AssignedPatientID,Description,Status,AssignedTime)"
					+"VALUES(?,?,?,?,?,?)");
			preState.setInt(1,a.getNAS_NurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getN_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	public static int updateN(dbtbn_assigned a) {
		int Stat= 0;
		try {
			conn= DbCon.getCon();
			preState = conn.prepareStatement("UPDATE n_assigned SET NAS_NurseID=?,DateStarted=?,N_AssignedPatientID=?,Description=?,Status=?,AssignedTime=? WHERE N_AssignedID=?");
			preState.setInt(1,a.getNAS_NurseID());
			preState.setDate(2,a.getDateStarted());
			preState.setInt(3,a.getN_AssignedPatientID());
			preState.setString(4,a.getDescription());
			preState.setString(5,a.getStatus());
			preState.setString(6,a.getAssignedTime());
			preState.setInt(7,a.getN_AssignedID());
			Stat=preState.executeUpdate();
	}
	catch(Exception e) {JOptionPane.showMessageDialog(null, "ERROR:"+e);}
	return Stat;
	}
	
	
	public static int deleteN(dbtbn_assigned a) {
		int Stat=0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM n_assigned WHERE N_AssignedID=?");
			preState.setInt(1,a.getN_AssignedID());	
			Stat=preState.executeUpdate();
			}
			catch (Exception e) {System.out.print(e);}
			return Stat;
	}
	
	
	public static  List<dbtbn_assigned> getAllRecordsN(){
		List<dbtbn_assigned> list=new ArrayList<dbtbn_assigned>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM n_assigned");  
			reSet=preState.executeQuery();
			while(reSet.next()) {		
				dbtbn_assigned a = new dbtbn_assigned();
				a.setN_AssignedID(reSet.getInt("N_AssignedID"));
				a.setNAS_NurseID(reSet.getInt("NAS_NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setN_AssignedPatientID(reSet.getInt("N_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
				list.add(a);
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
			}
	
	public static dbtbn_assigned getNRecord(int id) {
		dbtbn_assigned a = null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM ch_achievements WHERE CH_AchievementID=?");
			preState.setInt(1,id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				a = new dbtbn_assigned();
				a.setN_AssignedID(reSet.getInt("N_AssignedID"));
				a.setNAS_NurseID(reSet.getInt("NAS_NurseID"));
				a.setDateStarted(reSet.getDate("DateStarted"));
				a.setN_AssignedPatientID(reSet.getInt("N_AssignedPatientID"));
				a.setDescription(reSet.getString("Description"));
				a.setStatus(reSet.getString("Status"));
				a.setAssignedTime(reSet.getString("AssignedTime"));
			}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return a;
	}
}
