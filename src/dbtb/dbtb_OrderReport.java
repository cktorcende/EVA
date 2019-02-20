package dbtb;

import java.sql.*;

public class dbtb_OrderReport {
	private int S_TrackerID,F_TrackerID,D_TrackerID,T_DrugID,T_SupplyID,T_FoodID,QTYInOrd,TotalQTYRec,OrderQTY,DeductedQTY;
	private Timestamp Time; 
	
	public int getS_TrackerID() {
		return S_TrackerID;
	}
	public void setS_TrackerID(int i) {
		this.S_TrackerID = i;
	}
	public Timestamp getTime() {
		return Time;
	}
	public void setTime(Timestamp i) {
		this.Time = i;
	}
	
	public int getF_TrackerID() {
		return F_TrackerID;
	}
	public void setF_TrackerID(int i) {
		this.F_TrackerID = i;
	}
	public int getD_TrackerID() {
		return D_TrackerID;
	}
	public void setD_TrackerID(int i) {
		this.D_TrackerID = i;
	}
	public int getT_DrugID() {
		return T_DrugID;
	}
	public void setT_DrugID(int i) {
		this.T_DrugID = i;
	}
	public int getT_SupplyID() {
		return T_SupplyID;
	}
	public void setT_SupplyID(int i) {
		this.T_SupplyID = i;
	}
	public int getT_FoodID() {
		return T_FoodID;
	}
	public void setT_FoodID(int i) {
		this.T_FoodID = i;
	}
	public int getQTYInOrd() {
		return QTYInOrd;
	}
	public void setQTYInOrd(int i) {
		this.QTYInOrd = i;
	}
	public int getTotalQTYRec() {
		return TotalQTYRec;
	}
	public void setTotalQTYRec(int i) {
		this.TotalQTYRec = i;
	}
	public int getOrderQTY() {
		return OrderQTY;
	}
	public void setOrderQTY(int i) {
		this.OrderQTY = i;
	}
	public int getDeductedQTY() {
		return DeductedQTY;
	}
	public void setDeductedQTY(int i) {
		this.DeductedQTY = i;
	}
	
	
	
	
	
}
