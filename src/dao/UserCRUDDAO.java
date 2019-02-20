package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
 
import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbUser;


public class UserCRUDDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	
	public static String createDoctorUser() {
		String name= "";
		String newName="";
		try {
			conn =   DbCon.getCon();
			System.out.print("SELECT max(idemployee_account),Username FROM employee_account WHERE Username LIKE 'd%'");
			preState = conn.prepareStatement("SELECT max(idemployee_account),Username FROM employee_account WHERE Username LIKE 'D%'");
			reSet=preState.executeQuery();
			while(reSet.next()) {
				name = reSet.getString(2);
				char last= name.charAt(name.length()-1); 
				int rep = Integer.parseInt(Character.toString(last))+ 1;
				String repl = Integer.toString(rep);
				newName = name.substring(0,name.length()-1)+repl;
				
				
				}
			conn.close();
			return newName;
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return newName;
		}
		
	
	public static int updateDoctorID(int id) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE doctor_record SET EDoctorID=(SELECT max(idemployee_account) FROM employee_account) WHERE Doctor_ID=?;");
			preState.setInt(1, id);
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static String createNurseUser() {
		String name= "";
		String newName="";
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("SELECT max(idemployee_account),Username FROM employee_account WHERE Username LIKE 'N%';");
			reSet=preState.executeQuery();
			while(reSet.next()) {
				name = reSet.getString(2);
				char last= name.charAt(name.length()-1); 
				int rep = Integer.parseInt(Character.toString(last))+ 1;
				String repl = Integer.toString(rep);
				newName = name.substring(0,name.length()-1)+repl;
				
				
				}
			conn.close();
			return newName;
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return newName;
		}
	public static int updateNurseID(int id) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE nurse_record SET ENurseID=(SELECT max(idemployee_account) FROM employee_account) WHERE Nurse_ID=?;");
			preState.setInt(1, id);
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static String createCaregiverUser() {
		String name= "";
		String newName="";
		try {
			conn = DbCon.getCon();
			preState = conn.prepareStatement("SELECT max(idemployee_account),Username FROM eva.employee_account WHERE Username LIKE '_R%';");
			reSet=preState.executeQuery();
			while(reSet.next()) {
				name = reSet.getString(2);
				char last= name.charAt(name.length()-1); 
				int rep = Integer.parseInt(Character.toString(last))+ 1;
				String repl = Integer.toString(rep);
				newName = name.substring(0,name.length()-1)+repl;
				
				
				}
			conn.close();
			return newName;
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return newName;
		}
	public static int updateCaregiverID(int id) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE caregiver_record SET ECaregiverID=(SELECT max(idemployee_account) FROM caregiver_record) WHERE Caregiver_ID=?;");
			preState.setInt(1, id);
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static String createCashierUser() {
		String name= "";
		String newName="";
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("SELECT max(idemployee_account),Username FROM eva.employee_account WHERE Username LIKE '_S%';");
			reSet=preState.executeQuery();
			while(reSet.next()) {
				name = reSet.getString(2);
				char last= name.charAt(name.length()-1); 
				int rep = Integer.parseInt(Character.toString(last))+ 1;
				String repl = Integer.toString(rep);
				newName = name.substring(0,name.length()-1)+repl;
				
				
				}
			conn.close();
			return newName;
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return newName;
		}
	public static int updateCashierID(int id) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE cashier_record SET ECashierID=(SELECT max(idemployee_account) FROM employee_account) WHERE Cashier_ID=?;");
			preState.setInt(1, id);
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	public static String createChefUser() {
		String name= "";
		String newName="";
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("SELECT max(idemployee_account),Username FROM eva.employee_account WHERE Username LIKE '_H%';");
			reSet=preState.executeQuery();
			while(reSet.next()) {
				name = reSet.getString(2);
				char last= name.charAt(name.length()-1); 
				int rep = Integer.parseInt(Character.toString(last))+ 1;
				String repl = Integer.toString(rep);
				newName = name.substring(0,name.length()-1)+repl;
				
				
				}
			conn.close();
			return newName;
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return newName;
		}
	public static int updateChefID(int id) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE chef_record SET EChefID=(SELECT max(idemployee_account) FROM employee_account) WHERE chef_ID=?");
			preState.setInt(1, id);
		
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static void String_setterE(dbtbUser e,String username,String pswrd,int NumOfAttempts,String status) {
		e.setNumOfAttempts(NumOfAttempts);
		e.setpswrd(pswrd);
		e.setUsername(username);
		e.setstatus(status);
	}
	
	public static void id_setterE(dbtbUser e, int idemployee_account) {
		e.setidemployee_account(idemployee_account);
	}
	public static int saveE(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO employee_account(username,pswrd,NumOfAttempts,status)"
					+ "VALUES(?,?,?,?)");
			preState.setString(1, e.getUsername());
			preState.setString(2, e.getpswrd());
			preState.setInt(3, e.getNumOfAttempts());
			preState.setString(4, e.getstatus());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	} 
				
	public static int updateE(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE employee_account SET username=?,pswrd=?,NumOfAttempts=?,status=? WHERE idemployee_account=?");
			preState.setString(1, e.getUsername());
			preState.setString(2, e.getpswrd());
			preState.setInt(3, e.getNumOfAttempts());
			preState.setString(4, e.getstatus());
			preState.setInt(5, e.getidemployee_account());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
		}
	
	public static int deleteE(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM employee_account  WHERE idemployee_account=?");
			preState.setInt(1, e.getidemployee_account());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static List<dbtbUser> getAllRecordsBlocked(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM employee_account WHERE status='blocked'");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setidemployee_account(reSet.getInt("idemployee_account"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	
	public static List<dbtbUser> getAllRecordsCH(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM employee_account WHERE Username LIKE '%_H'");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setidemployee_account(reSet.getInt("idemployee_account"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	
	public static List<dbtbUser> getAllRecordsCS(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM employee_account WHERE Username LIKE '%_S'");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setidemployee_account(reSet.getInt("idemployee_account"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	public static List<dbtbUser> getAllRecordsE(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM employee_account");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setidemployee_account(reSet.getInt("idemployee_account"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}

		
	public static dbtbUser getRecordE(int id) {
		dbtbUser e = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from employee_account where idemployee_account=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){ 
	        	e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setidemployee_account(reSet.getInt("idemployee_account"));
				
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return e;}
	
	//Client
	        
	public static int saveC(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO client_account(username,pswrd,NumOfAttempts,status)"
					+ "VALUES(?,?,?,?)");
			preState.setString(1, e.getUsername());
			preState.setString(2, e.getpswrd());
			preState.setInt(3, e.getNumOfAttempts());
			preState.setString(4, e.getstatus());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	} 
				
	public static int updateC(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE client_account SET username=?,pswrd=?,NumOfAttempts=?,status=? WHERE Client_Id=?");
			preState.setString(1, e.getUsername());
			preState.setString(2, e.getpswrd());
			preState.setInt(3, e.getNumOfAttempts());
			preState.setString(4, e.getstatus());
			preState.setInt(5, e.getClient_Id());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
		}
	
	public static int deleteC(dbtbUser e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM client_account  WHERE Client_Id=?");
			preState.setInt(1, e.getClient_Id());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	}
	
	public static List<dbtbUser> getAllRecordsC(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM client_account");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setClient_Id(reSet.getInt("Client_Id"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	public static List<dbtbUser> getAllRecordsBlockedC(){
		List<dbtbUser> list=new ArrayList<dbtbUser>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM client_account where status='blocked'");  
			reSet=preState.executeQuery();
			while(reSet.next()) { 
				dbtbUser e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setClient_Id(reSet.getInt("Client_Id"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	public static dbtbUser getRecordC(int id) {
		dbtbUser e = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from client_account where Client_Id=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){ 
	        	e = new dbtbUser();
				e.setUsername(reSet.getString("Username"));
				e.setpswrd(reSet.getString("pswrd"));
				e.setNumOfAttempts(reSet.getInt("NumOfAttempts"));
				e.setstatus(reSet.getString("status"));
				e.setClient_Id(reSet.getInt("Client_Id"));
				
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return e;}
}
