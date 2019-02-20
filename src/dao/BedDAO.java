package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbbed_record;


public class BedDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void int_setter(dbtbbed_record b,String wing,int floor,int roomNo,String bedType) {
		b.setwing(wing);
		b.setfloor(floor);
		b.setroomNo(roomNo);
		b.setbedType(bedType);
	}
	public static void id_setter(dbtbbed_record b,int bedID) {
		b.setbedID(bedID);
	}
	
	public static int save(dbtbbed_record b) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO bedroom_rec(wing,floor,roomNo,bedType) VALUES (?,?,?,?)");
			preState.setString(1, b.getwing());
			preState.setInt(2, b.getfloor());
			preState.setInt(3, b.getroomNo());
			preState.setString(4, b.getbedType());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int update(dbtbbed_record b) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE bedroom_rec SET wing=?,floor=?,roomNo=?,bedType=? WHERE bedID=?");
			preState.setString(1, b.getwing());
			preState.setInt(2, b.getfloor());
			preState.setInt(3, b.getroomNo());
			preState.setString(4, b.getbedType());
			preState.setInt(5, b.getbedID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int delete(dbtbbed_record b) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM bedroom_rec WHERE bedID=?");
			preState.setInt(1, b.getbedID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static List<dbtbbed_record> getAllRecordsC(){
		List<dbtbbed_record> list=new ArrayList<dbtbbed_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from bedroom_rec");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbbed_record b = new dbtbbed_record();
				b.setbedID(reSet.getInt("bedID"));
				b.setwing(reSet.getString("wing"));
				b.setfloor(reSet.getInt("floor"));
				b.setroomNo(reSet.getInt("roomNo"));
				b.setbedType(reSet.getString("bedType"));
				list.add(b);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;
			}
	
	public static dbtbbed_record getRecord(int id){
		dbtbbed_record b =null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from bedroom_rec WHERE bedID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				b = new dbtbbed_record();
				b.setbedID(reSet.getInt("bedID"));
				b.setwing(reSet.getString("wing"));
				b.setfloor(reSet.getInt("floor"));
				b.setroomNo(reSet.getInt("roomNo"));
				b.setbedType(reSet.getString("bedType"));
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return b;
			}
	
	public static dbtbbed_record getRecordF(int id){
		dbtbbed_record b =null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from bedroom_rec WHERE BedClientID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				b = new dbtbbed_record();
				b.setbedID(reSet.getInt("bedID"));
				b.setwing(reSet.getString("wing"));
				b.setfloor(reSet.getInt("floor"));
				b.setroomNo(reSet.getInt("roomNo"));
				b.setbedType(reSet.getString("bedType"));
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return b;
			}
}
