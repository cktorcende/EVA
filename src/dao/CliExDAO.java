package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbp_examination;

public class CliExDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbp_examination e,String ExaminationType,String ExaminationName,String ExaminationDetails,String ExaminerName,String ExaminationPlace,String ExaminationResult,Date ExaminationDate,int Pa_ID) {
		e.setExaminationType(ExaminationType);
		e.setExaminationName(ExaminationName);
		e.setExaminationDetails(ExaminationDetails);
		e.setExaminerName(ExaminerName);
		e.setExaminationPlace(ExaminationPlace);
		e.setExaminationResult(ExaminationResult);
		e.setExaminationDate(ExaminationDate);
		e.setPa_ID(Pa_ID);

	} 
	public static void id_setter(dbtbp_examination e,int Examination_ID) {
		e.setExamination_ID(Examination_ID);
		
	}
	
	public static int save(dbtbp_examination e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO p_examination (ExaminationType,ExaminationName,ExaminationDetails,ExaminerName,ExaminationPlace,ExaminationResult,ExaminationDate,Pa_ID)"
							+ "VALUES (?,?,?,?,?,?,?,?)");
			preState.setString(1,e.getExaminationType());
			preState.setString(2,e.getExaminationName());
			preState.setString(3,e.getExaminationDetails());
			preState.setString(4,e.getExaminerName());
			preState.setString(5,e.getExaminationPlace());
			preState.setString(6,e.getExaminationResult());
			preState.setDate(7,e.getExaminationDate());
			preState.setInt(8, e.getPa_ID());
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print(ex);}
		return Stat;
	} 
	public static int update(dbtbp_examination e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE p_examination SET ExaminationType=?,ExaminationName=?,ExaminationDetails=?,ExaminerName=?,ExaminationPlace=?,ExaminationResult=?,ExaminationDate=?,Pa_ID=? WHERE Examination_ID=?");
			preState.setString(1,e.getExaminationType());
			preState.setString(2,e.getExaminationName());
			preState.setString(3,e.getExaminationDetails());
			preState.setString(4,e.getExaminerName());
			preState.setString(5,e.getExaminationPlace());
			preState.setString(6,e.getExaminationResult());
			preState.setDate(7,e.getExaminationDate());
			preState.setInt(8, e.getPa_ID());
			preState.setInt(9, e.getExamination_ID());
			
			Stat= preState.executeUpdate();
			conn.close();
		}
		catch (Exception ex) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int delete(dbtbp_examination e) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM p_examination WHERE Examination_ID=?");
		preState.setInt(1, e.getExamination_ID());
		Stat= preState.executeUpdate();
		conn.close();
	}
	catch (Exception ex) {System.out.print("Fail");}
	return Stat;
	}
	
	public static List<dbtbp_examination> getAllRecords(){
		List<dbtbp_examination> list=new ArrayList<dbtbp_examination>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from p_examination");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbp_examination e = new dbtbp_examination();
				e.setExamination_ID(reSet.getInt("Examination_ID"));
				e.setPa_ID(reSet.getInt("Pa_ID"));
				e.setExaminationType(reSet.getString("ExaminationType"));
				e.setExaminationName(reSet.getString("ExaminationName"));
				e.setExaminationDetails(reSet.getString("ExaminationDetails"));
				e.setExaminerName(reSet.getString("ExaminerName"));
				e.setExaminationPlace(reSet.getString("ExaminationPlace"));
				e.setExaminationResult(reSet.getString("ExaminationResult"));
				e.setExaminationDate(reSet.getDate("ExaminationDate"));
				list.add(e);
				
			}
			conn.close();
		}
			catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
				return list;
				
			}
	
	public static dbtbp_examination getRecord(int id) {
		dbtbp_examination e = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from p_examination where Examination_ID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){ 
	        	e = new dbtbp_examination();
	        	e.setExamination_ID(reSet.getInt("Examination_ID"));
				e.setPa_ID(reSet.getInt("Pa_ID"));
				e.setExaminationType(reSet.getString("ExaminationType"));
				e.setExaminationName(reSet.getString("ExaminationName"));
				e.setExaminationDetails(reSet.getString("ExaminationDetails"));
				e.setExaminerName(reSet.getString("ExaminerName"));
				e.setExaminationPlace(reSet.getString("ExaminationPlace"));
				e.setExaminationResult(reSet.getString("ExaminationResult"));
				e.setExaminationDate(reSet.getDate("ExaminationDate"));
	        }
	        conn.close();
	        
		}
		catch(Exception ex){JOptionPane.showMessageDialog(null, ex);}  
		return e;
	}
	        
}
