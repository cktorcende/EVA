package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbAppPay;


public class AppPayDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbAppPay p,String LegalEntity,String PaymentType,String Status,String CollectedBy,String PayerEntity,String PayerName,String PayerCode,String ReferenceNumber,String PSTSNo,String PaymentM) {
		p.setLegalEntity(LegalEntity);
		p.setPaymentType(PaymentType);
		p.setStatus(Status);
		p.setCollectedBy(CollectedBy);
		p.setPayerEntity(PayerEntity);
		p.setPayerName(PayerName);
		p.setPayerCode(PayerCode);
		p.setReferenceNumber(ReferenceNumber);
		p.setPSTSNo(PSTSNo);
		p.setPaymentM(PaymentM);
	}
	public static void double_setter(dbtbAppPay p,double TotalAmount,double AmountApplied,double AmountUnapplied,double TransferAmount,double Amount,Date EntryDate,Date AcctDate,Date PaymentDate,int PatientId) {
		p.setTotalAmount(TotalAmount);
		p.setAmountApplied(AmountApplied);
		p.setAmountUnapplied(AmountUnapplied);
		p.setTransferAmount(TransferAmount);
		p.setAmount(Amount);
		p.setEntryDate(EntryDate);
		p.setAcctDate(AcctDate);
		p.setPaymentDate(PaymentDate);
		p.setPatientId(PatientId);
	}
	public static void  int_setter(dbtbAppPay p,int Payment_ID) {
		p.setPayment_ID(Payment_ID);
		
	}
	public static int save(dbtbAppPay p) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("INSERT INTO apppay(PatientId, LegalEntity,EntryDate,AcctDate,PaymentDate,PaymentType,Status,CollectedBy,PayerEntity,PayerName,PayerCode,TotalAmount,AmountApplied,AmountUnapplied,TransferAmount,ReferenceNumber,PSTSNo,PaymentM,Amount)"+
					"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		preState.setInt(1,p.getPatientId());
		preState.setString(2,p.getLegalEntity());
		preState.setDate(3,p.getEntryDate());
		preState.setDate(4,p.getAcctDate());
		preState.setDate(5,p.getPaymentDate());
		preState.setString(6,p.getPaymentType());
		preState.setString(7,p.getStatus());
		preState.setString(8,p.getCollectedBy());
		preState.setString(9,p.getPayerEntity());
		preState.setString(10,p.getPayerName());
		preState.setString(11,p.getPayerCode());
		preState.setDouble(12,p.getTotalAmount());
		preState.setDouble(13,p.getAmountApplied());
		preState.setDouble(14,p.getAmountUnapplied());
		preState.setDouble(15,p.getTransferAmount());
		preState.setString(16,p.getReferenceNumber());
		preState.setString(17,p.getPSTSNo());
		preState.setString(18,p.getPaymentM());
		preState.setDouble(19,p.getAmount());
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	public static int update(dbtbAppPay p) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("UPDATE apppay SET PatientId=?, LegalEntity=?,EntryDate=?,AcctDate=?,PaymentDate=?,PaymentType=?,Status=?,CollectedBy=?,PayerEntity=?,PayerName=?,PayerCode=?,TotalAmount=?,AmountApplied=?,AmountUnapplied=?,TransferAmount=?,ReferenceNumber=?,PSTSNo=?,PaymentM=?,Amount=? WHERE Payment_ID=?");
		preState.setInt(1,p.getPatientId());
		preState.setString(2,p.getLegalEntity());
		preState.setDate(3,p.getEntryDate());
		preState.setDate(4,p.getAcctDate());
		preState.setDate(5,p.getPaymentDate());
		preState.setString(6,p.getPaymentType());
		preState.setString(7,p.getStatus());
		preState.setString(8,p.getCollectedBy());
		preState.setString(9,p.getPayerEntity());
		preState.setString(10,p.getPayerName());
		preState.setString(11,p.getPayerCode());
		preState.setDouble(12,p.getTotalAmount());
		preState.setDouble(13,p.getAmountApplied());
		preState.setDouble(14,p.getAmountUnapplied());
		preState.setDouble(15,p.getTransferAmount());
		preState.setString(16,p.getReferenceNumber());
		preState.setString(17,p.getPSTSNo());
		preState.setString(18,p.getPaymentM());
		preState.setDouble(19,p.getAmount());
		preState.setInt(20,p.getPayment_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.println(e);}
		return Stat;
	}
	public static int delete(dbtbAppPay p) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM apppay WHERE Payment_ID=?");
		preState.setInt(1,p.getPayment_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	} 
	public static List<dbtbAppPay> getAllRecords(){
		List<dbtbAppPay> list=new ArrayList<dbtbAppPay>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM apppay");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbAppPay p = new dbtbAppPay();
				p.setPayment_ID(reSet.getInt("Payment_ID"));
				p.setPatientId(reSet.getInt("PatientId"));
				p.setLegalEntity(reSet.getString("LegalEntity"));
				p.setEntryDate(reSet.getDate("EntryDate"));
				p.setAcctDate(reSet.getDate("AcctDate"));
				p.setPaymentDate(reSet.getDate("PaymentDate"));
				p.setPaymentType(reSet.getString("PaymentType"));
				p.setStatus(reSet.getString("Status"));
				p.setCollectedBy(reSet.getString("CollectedBy"));
				p.setPayerEntity(reSet.getString("PayerEntity"));
				p.setPayerName(reSet.getString("PayerName"));
				p.setPayerCode(reSet.getString("PayerCode"));
				p.setTotalAmount(reSet.getDouble("TotalAmount"));
				p.setAmountApplied(reSet.getDouble("AmountApplied"));
				p.setAmountUnapplied(reSet.getDouble("AmountUnapplied"));
				p.setTransferAmount(reSet.getDouble("TransferAmount"));
				p.setReferenceNumber(reSet.getString("ReferenceNumber"));
				p.setPSTSNo(reSet.getString("PSTSNo"));
				p.setPaymentM(reSet.getString("PaymentM"));
				p.setAmount(reSet.getDouble("Amount"));
				list.add(p);
				}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return list;		
	}
	
	public static double getPatientRecords(int id){
		double p = 0;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT SUM(AmountApplied) FROM apppay WHERE  PatientId=?");
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				p += reSet.getDouble(1);
				}}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			return p;		
	}
	
	
	public static dbtbAppPay getRecord(int id) {
		dbtbAppPay a = null;
		try {
			conn=DbCon.getCon();  
	        preState=conn.prepareStatement("select * from apppay where Payment_ID=?");  
	        preState.setInt(1,id);   
	        reSet=preState.executeQuery();  
	        while(reSet.next()){  
	        	a = new dbtbAppPay();
	        	a.setPayment_ID(reSet.getInt("Payment_ID"));
				a.setPatientId(reSet.getInt("PatientId"));
				a.setLegalEntity(reSet.getString("LegalEntity"));
				a.setEntryDate(reSet.getDate("EntryDate"));
				a.setAcctDate(reSet.getDate("AcctDate"));
				a.setPaymentDate(reSet.getDate("PaymentDate"));
				a.setPaymentType(reSet.getString("PaymentType"));
				a.setStatus(reSet.getString("Status"));
				a.setCollectedBy(reSet.getString("CollectedBy"));
				a.setPayerEntity(reSet.getString("PayerEntity"));
				a.setPayerName(reSet.getString("PayerName"));
				a.setPayerCode(reSet.getString("PayerCode"));
				a.setTotalAmount(reSet.getDouble("TotalAmount"));
				a.setAmountApplied(reSet.getDouble("AmountApplied"));
				a.setAmountUnapplied(reSet.getDouble("AmountUnapplied"));
				a.setTransferAmount(reSet.getDouble("TransferAmount"));
				a.setReferenceNumber(reSet.getString("ReferenceNumber"));
				a.setPSTSNo(reSet.getString("PSTSNo"));
				a.setPaymentM(reSet.getString("PaymentM"));
				a.setAmount(reSet.getDouble("Amount"));
	        }
	}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		return a;}
	
}
