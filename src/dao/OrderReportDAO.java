package dao;

import java.sql.*;

import conn.DbCon;
import dbtb.dbtb_OrderReport;

public class OrderReportDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void int_setterD(dbtb_OrderReport d, int D_TrackerID,int T_DrugID,int QTYInOrd,int TotalQTYRec,int OrderQTY,int DeductedQTY) {
		d.setD_TrackerID(D_TrackerID);
		d.setT_DrugID(T_DrugID);
		d.setQTYInOrd(QTYInOrd);
		d.setTotalQTYRec(TotalQTYRec);
		d.setOrderQTY(OrderQTY);
		d.setDeductedQTY(DeductedQTY);
	}
	public static int insertionD(dbtb_OrderReport d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO order_rep_trackerd(D_TrackerID,T_DrugID,QTYInOrd,TotalQTYRec,OrderQTY,DeductedQTY)" +
					"VALUES (?,?,?,?,?,?)");
			preState.setInt(1, d.getD_TrackerID());
			preState.setInt(2, d.getD_TrackerID());
			preState.setInt(3, d.getD_TrackerID());
			preState.setInt(4, d.getD_TrackerID());
			preState.setInt(5, d.getD_TrackerID());
			preState.setInt(6, d.getD_TrackerID());
			Stat=preState.executeUpdate(); 
			conn.close();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
}
