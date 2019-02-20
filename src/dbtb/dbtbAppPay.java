package dbtb;

import java.sql.*;

public class dbtbAppPay {
	private String LegalEntity,PaymentType,Status,CollectedBy,PayerEntity,PayerName,PayerCode,ReferenceNumber,PSTSNo,PaymentM;
	private int Payment_ID,PatientId;
	private Date EntryDate,AcctDate,PaymentDate;
	private double TotalAmount,AmountApplied,AmountUnapplied,TransferAmount,Amount;

	public double getTotalAmount() {
		return TotalAmount;
	}
	public void setTotalAmount(double ta) {
		this.TotalAmount = ta;
	}
	public double getAmountApplied() {
		return AmountApplied;
	}
	public void setAmountApplied(double aa) {
		this.AmountApplied = aa;
	}
	public double getAmountUnapplied() {
		return AmountUnapplied;
	}
	public void setAmountUnapplied(double au) {
		this.AmountUnapplied = au;
	}
	public double getTransferAmount() {
		return TransferAmount;
	}
	public void setTransferAmount(double ta) {
		this.TransferAmount = ta;
	}
	public double getAmount() {
		return Amount;
	}
	public void setAmount(double a) {
		this.Amount = a;
	}
	
	
	public String getLegalEntity() {
		return LegalEntity;
	}
	public void setLegalEntity(String lg) {
		this.LegalEntity = lg;
	}
	public String getPaymentType() {
		return PaymentType;
	}
	public void setPaymentType(String pt) {
		this.PaymentType = pt;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String s) {
		this.Status = s;
	}
	public String getCollectedBy() {
		return CollectedBy;
	}
	public void setCollectedBy(String cb) {
		this.CollectedBy = cb;
	}
	public String getPayerEntity() {
		return PayerEntity;
	}
	public void setPayerEntity(String pe) {
		this.PayerEntity = pe;
	}
	public String getPayerName() {
		return PayerName;
	}
	public void setPayerName(String pn) {
		this.PayerName = pn;
	}
	public String getPayerCode() {
		return PayerCode;
	}
	public void setPayerCode(String pc) {
		this.PayerCode = pc;
	}
	public String getReferenceNumber() {
		return ReferenceNumber;
	}
	public void setReferenceNumber(String rn) {
		this.ReferenceNumber = rn;
	}
	public String getPSTSNo() {
		return PSTSNo;
	}
	public void setPSTSNo(String pn) {
		this.PSTSNo = pn;
	}
	public String getPaymentM() {
		return PaymentM;
	}
	public void setPaymentM(String pm) {
		this.PaymentM = pm;
	}
	public int getPayment_ID() {
		return Payment_ID;
	}
	public void setPayment_ID(int pi) {
		this.Payment_ID = pi;
	}
	public int getPatientId() {
		return PatientId;
	}
	public void setPatientId(int pi) {
		this.PatientId = pi;
	}
	
	public Date getEntryDate() {
		return EntryDate;
	}
	public void setEntryDate(Date ed) {
		this.EntryDate = ed;
	}
	public Date getAcctDate() {
		return AcctDate;
	}
	public void setAcctDate(Date ad) {
		this.AcctDate = ad;
	}
	public Date getPaymentDate() {
		return PaymentDate;
	}
	public void setPaymentDate(Date pd) {
		this.PaymentDate = pd;
	}
}
