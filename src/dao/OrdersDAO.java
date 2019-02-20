package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbOrderd;
import dbtb.dbtbOrders;
import dbtb.dbtborderf;


public class OrdersDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	
	public static double init_compute(double[]prices,double vat) {
		return vat;
	}
	
	public static double __init__(double amount) {
		return amount;
	}
	
	public static void String_setterD(dbtbOrderd d,int DrugID,int DO_SupplierID,String ProductKey,String InvoiceNumber,int QTYPurchased,Date PurchaseDate) {
		d.setDO_SupplierID(DO_SupplierID);
		d.setDrugID(DrugID);
		d.setProductKey(ProductKey);
		d.setInvoiceNumber(InvoiceNumber);
		d.setQTYPurchased(QTYPurchased);
		d.setPurchaseDate(PurchaseDate);
	} 
	
	public static void id_setter(dbtbOrderd d,int Drug_OrderID) {
		d.setDrug_OrderID(Drug_OrderID);
	}
	
	public static int saveD(dbtbOrderd d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO orderd(DrugID,DO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate)"
					+ "VALUES(?,?,?,?,?,?)");
			preState.setInt(1, d.getDrugID());
			preState.setInt(2, d.getDO_SupplierID());
			preState.setString(3, d.getProductKey());
			preState.setString(4, d.getInvoiceNumber());
			preState.setInt(5, d.getQTYPurchased());
			preState.setDate(6, d.getPurchaseDate());
			Stat=preState.executeUpdate(); 
			conn.close();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	public static int updateD(dbtbOrderd d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE orderd SET DrugID,DO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate WHERE Drug_OrderID=?");
			preState.setInt(1, d.getDrugID());
			preState.setInt(2, d.getDO_SupplierID());
			preState.setString(3, d.getProductKey());
			preState.setString(4, d.getInvoiceNumber());
			preState.setInt(5, d.getQTYPurchased());
			preState.setDate(6, d.getPurchaseDate());
			preState.setInt(7, d.getDrug_OrderID());
			Stat=preState.executeUpdate(); 
			conn.close();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int deleteD(dbtbOrderd d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("DELETE FROM orderd WHERE Drug_OrderID=?");
			preState.setInt(1, d.getDrug_OrderID());
			Stat=preState.executeUpdate();
			conn.close();
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static List<dbtbOrderd> getAllRecordsD(){
		List<dbtbOrderd> list=new ArrayList<dbtbOrderd>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from orderd");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbOrderd d = new  dbtbOrderd();
				d.setDO_SupplierID(reSet.getInt("DO_SupplierID"));
				d.setDrugID(reSet.getInt("DrugID"));
				d.setProductKey(reSet.getString("ProductKey"));
				d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
				d.setQTYPurchased(reSet.getInt("QTYPurchased"));
				d.setPurchaseDate(reSet.getDate("PurchaseDate"));
			}
			conn.close();
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return list;
		}

		public static dbtbOrderd getRecordD(int id){
			dbtbOrderd d=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("select * from orderd WHERE Drug_OrderID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				d = new  dbtbOrderd();
				d.setDrug_OrderID(reSet.getInt("Drug_OrderID"));
				d.setDO_SupplierID(reSet.getInt("DO_SupplierID"));
				d.setDrugID(reSet.getInt("DrugID"));
				d.setProductKey(reSet.getString("ProductKey"));
				d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
				d.setQTYPurchased(reSet.getInt("QTYPurchased"));
				d.setPurchaseDate(reSet.getDate("PurchaseDate"));
			}
			conn.close();
		}
		catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
	    return d;
		}
		
		
		//f
		public static void String_setterF(dbtborderf d,int FoodID,int FO_SupplierID,String ProductKey,String InvoiceNumber,int QTYPurchased,Date PurchaseDate) {
			d.setFO_SupplierID(FO_SupplierID);
			d.setFoodID(FoodID);
			d.setProductKey(ProductKey);
			d.setInvoiceNumber(InvoiceNumber);
			d.setQTYPurchased(QTYPurchased);
			d.setPurchaseDate(PurchaseDate);
		} 
		
		public static void id_setterF(dbtborderf d,int Food_OrderID) {
			d.setFood_OrderID(Food_OrderID);
		}
		
		public static int saveF(dbtborderf d) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("INSERT INTO orderf(FoodID,FO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate)"
						+ "VALUES(?,?,?,?,?,?)");
				preState.setInt(1, d.getFoodID());
				preState.setInt(2, d.getFO_SupplierID());
				preState.setString(3, d.getProductKey());
				preState.setString(4, d.getInvoiceNumber());
				preState.setInt(5, d.getQTYPurchased());
				preState.setDate(6, d.getPurchaseDate());
				Stat=preState.executeUpdate(); 
				conn.close();
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		public static int updateS(dbtborderf d) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("UPDATE orderf SET FoodID,FO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate WHERE Food_OrderID=?");
				preState.setInt(1, d.getFoodID());
				preState.setInt(2, d.getFO_SupplierID());
				preState.setString(3, d.getProductKey());
				preState.setString(4, d.getInvoiceNumber());
				preState.setInt(5, d.getQTYPurchased());
				preState.setDate(6, d.getPurchaseDate());
				preState.setInt(7, d.getFood_OrderID());
				Stat=preState.executeUpdate();
				conn.close();
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		
		public static int deleteF(dbtbOrders d) {
			int Stat = 0;
			try {
				conn =   DbCon.getCon();
				preState = conn.prepareStatement("DELETE FROM orderf WHERE Food_OrderID=?");
				preState.setInt(1, d.getSupply_OrderID());
				Stat=preState.executeUpdate();
				conn.close();
			}
			catch (Exception e) {System.out.print("Fail");}
			return Stat;
		}
		
		public static List<dbtborderf> getAllRecordsF(){
			List<dbtborderf> list=new ArrayList<dbtborderf>();
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from orderf");  
				reSet=preState.executeQuery();
				while(reSet.next()) {
					dbtborderf d = new  dbtborderf();
					d.setFood_OrderID(reSet.getInt("Food_OrderID"));
					d.setFO_SupplierID(reSet.getInt("FO_SupplierID"));
					d.setFoodID(reSet.getInt("FoodID"));
					d.setProductKey(reSet.getString("ProductKey"));
					d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
					d.setQTYPurchased(reSet.getInt("QTYPurchased"));
					d.setPurchaseDate(reSet.getDate("PurchaseDate"));
				}
				conn.close();
			}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		    return list;
			}

			public static dbtborderf getRecordF(int id){
				dbtborderf d=null;
			try {
				conn=DbCon.getCon();   
				preState=conn.prepareStatement("select * from orderf WHERE Food_OrderID=?");  
				preState.setInt(1, id);
				reSet=preState.executeQuery();
				while(reSet.next()) {
					d = new  dbtborderf();
					d.setFood_OrderID(reSet.getInt("Food_OrderID"));
					d.setFO_SupplierID(reSet.getInt("FO_SupplierID"));
					d.setFoodID(reSet.getInt("FoodID"));
					d.setProductKey(reSet.getString("ProductKey"));
					d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
					d.setQTYPurchased(reSet.getInt("QTYPurchased"));
					d.setPurchaseDate(reSet.getDate("PurchaseDate"));
				}
				conn.close();
			}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
		    return d;
			}
			
			//s
			public static void String_setterS(dbtbOrders d,int SupplyID,int SO_SupplierID,String ProductKey,String InvoiceNumber,int QTYPurchased,Date PurchaseDate) {
				d.setSO_SupplierID(SO_SupplierID);
				d.setSupplyID(SupplyID);
				d.setProductKey(ProductKey);
				d.setInvoiceNumber(InvoiceNumber);
				d.setQTYPurchased(QTYPurchased);
				d.setPurchaseDate(PurchaseDate);
			} 
			
			public static void id_setterS(dbtbOrders d,int Supply_OrderID) {
				d.setSupply_OrderID(Supply_OrderID);
			}
			
			public static int saveS(dbtbOrders d) {
				int Stat = 0;
				try {
					conn =   DbCon.getCon();
					preState = conn.prepareStatement("INSERT INTO orders(SupplyID,SO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate)"
							+ "VALUES(?,?,?,?,?,?)");
					preState.setInt(1, d.getSupplyID());
					preState.setInt(2, d.getSO_SupplierID());
					preState.setString(3, d.getProductKey());
					preState.setString(4, d.getInvoiceNumber());
					preState.setInt(5, d.getQTYPurchased());
					preState.setDate(6, d.getPurchaseDate());
					Stat=preState.executeUpdate();
					conn.close();
				}
				catch (Exception e) {System.out.print("Fail");}
				return Stat;
			}
			public static int updateS(dbtbOrders d) {
				int Stat = 0;
				try {
					conn =   DbCon.getCon();
					preState = conn.prepareStatement("UPDATE orders SET SupplyID,SO_SupplierID,ProductKey,InvoiceNumber,QTYPurchased,PurchaseDate WHERE Supply_OrderID=?");
					preState.setInt(1, d.getSupplyID());
					preState.setInt(2, d.getSO_SupplierID());
					preState.setString(3, d.getProductKey());
					preState.setString(4, d.getInvoiceNumber());
					preState.setInt(5, d.getQTYPurchased());
					preState.setDate(6, d.getPurchaseDate());
					preState.setInt(7, d.getSupply_OrderID());
					Stat=preState.executeUpdate();
					conn.close();
				}
				catch (Exception e) {System.out.print("Fail");}
				return Stat;
			}
			
			public static int deleteD(dbtbOrders d) {
				int Stat = 0;
				try {
					conn =   DbCon.getCon();
					preState = conn.prepareStatement("DELETE FROM orders WHERE Supply_OrderID=?");
					preState.setInt(1, d.getSupply_OrderID());
					Stat=preState.executeUpdate();
					conn.close();
				}
				catch (Exception e) {System.out.print("Fail");}
				return Stat;
			}
			
			public static List<dbtbOrders> getAllRecordsS(){
				List<dbtbOrders> list=new ArrayList<dbtbOrders>();
				try {
					conn=DbCon.getCon();   
					preState=conn.prepareStatement("select * from orders");  
					reSet=preState.executeQuery();
					while(reSet.next()) {
						dbtbOrders d = new  dbtbOrders();
						d.setSupply_OrderID(reSet.getInt("Supply_OrderID"));
						d.setSO_SupplierID(reSet.getInt("SO_SupplierID"));
						d.setSupplyID(reSet.getInt("SupplyID"));
						d.setProductKey(reSet.getString("ProductKey"));
						d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
						d.setQTYPurchased(reSet.getInt("QTYPurchased"));
						d.setPurchaseDate(reSet.getDate("PurchaseDate"));
					}
					conn.close();
				}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			    return list;
				}

				public static dbtbOrders getRecordS(int id){
					dbtbOrders d=null;
				try {
					conn=DbCon.getCon();   
					preState=conn.prepareStatement("select * from orders WHERE Supply_OrderID=?");  
					preState.setInt(1, id);
					reSet=preState.executeQuery();
					while(reSet.next()) {
						d = new  dbtbOrders();
						d.setSupply_OrderID(reSet.getInt("Supply_OrderID"));
						d.setSO_SupplierID(reSet.getInt("SO_SupplierID"));
						d.setSupplyID(reSet.getInt("SupplyID"));
						d.setProductKey(reSet.getString("ProductKey"));
						d.setInvoiceNumber(reSet.getString("InvoiceNumber"));
						d.setQTYPurchased(reSet.getInt("QTYPurchased"));
						d.setPurchaseDate(reSet.getDate("PurchaseDate"));
					}
					conn.close();
				}
				catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
			    return d;
				}

}
