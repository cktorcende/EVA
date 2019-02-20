package dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import conn.DbCon;
import dbtb.dbtbdrug_record;

public class drug_recordDAO {
	static Connection conn = null;
	static PreparedStatement preState = null;
	static ResultSet reSet = null;
	
	public static void String_setter(dbtbdrug_record d,String DrugDescription,int RecNo,String ProductID,String ControlClass,String DrugType,String GenericDrug,String MedicaidNo,String WarningCode,String GenericAvailable,String MedicareNo,String SigCodes,String SigCodes1,String SigCodes2,String CompoundDrug,String ProductIDQualifier,String DrugColor,String ReferenceQualifier,String NYDVSCode,int PackageSize,int QuickCode,String CategoryofService,int MedicaidPackageSize,String Manufacturer,String DrugInRobot,String UnitOfMeasure,int MaximumRefills,String Drug340B,String DrugAWP,Date Expiration,String ActiveDrug,double DirectPrice,Date LotExpDate,int LotNo,String TXR,double FedMacPrice,String TXRExtention,double AcquisitionCost,String SpecialtyDrug,Date LastPriceUpdate,int MinimumQtyOnHand,int CurrentQtyOnHand) {
	d.setDrugDescription(DrugDescription);
	d.setRecNo(RecNo);
	d.setProductID(ProductID);
	d.setControlClass(ControlClass);
	d.setDrugType(DrugType);
	d.setGenericDrug(GenericDrug);
	d.setMedicaidNo(MedicaidNo);
	d.setWarningCode(WarningCode);
	d.setGenericAvailable(GenericAvailable);
	d.setMedicareNo(MedicareNo);
	d.setSigCodes(SigCodes);
	d.setSigCodes1(SigCodes1);
	d.setSigCodes2(SigCodes2);
	d.setCompoundDrug(CompoundDrug);
	d.setProductIDQualifier(ProductIDQualifier);
	d.setDrugColor(DrugColor);
	d.setReferenceQualifier(ReferenceQualifier);
	d.setNYDVSCode(NYDVSCode);
	d.setPackageSize(PackageSize);
	d.setQuickCode(QuickCode);
	d.setCategoryofService(CategoryofService);
	d.setMedicaidPackageSize(MedicaidPackageSize);
	d.setManufacturer(Manufacturer);
	d.setDrugInRobot(DrugInRobot);
	d.setUnitOfMeasure(UnitOfMeasure);
	d.setMaximumRefills(MaximumRefills);
	d.setDrug340B(Drug340B);
	d.setDrugAWP(DrugAWP);
	d.setExpiration(Expiration);
	d.setActiveDrug(ActiveDrug);
	d.setTXR(TXR);
	d.setFedMacPrice(FedMacPrice);
	d.setTXRExtention(TXRExtention);
	d.setAcquisitionCost(AcquisitionCost);
	d.setSpecialtyDrug(SpecialtyDrug);
	d.setLastPriceUpdate(LastPriceUpdate);
	d.setMinimumQtyOnHand(MinimumQtyOnHand);
	d.setCurrentQtyOnHand(CurrentQtyOnHand);
	}
	
	public static void id_setter(dbtbdrug_record d, int Drug_ID) {
		d.setDrug_ID(Drug_ID);
	}
	public static int saveDrug(dbtbdrug_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("INSERT INTO drug_record(DrugDescription,RecNo,ProductID,ControlClass,DrugType,GenericDrug,MedicaidNo,WarningCode,GenericAvailable,MedicareNo,SigCodes,SigCodes1,SigCodes2,CompoundDrug,ProductIDQualifier,DrugColor,ReferenceQualifier,NYDVSCode,PackageSize,QuickCode,CategoryofService,MedicaidPackageSize,Manufacturer,DrugInRobot,UnitOfMeasure,MaximumRefills,Drug340B,DrugAWP,Expiration,ActiveDrug,DirectPrice,LotExpDate,LotNo,TXR,FedMacPrice,TXRExtention,AcquisitionCost,SpecialtyDrug,LastPriceUpdate,MinimumQtyOnHand,CurrentQtyOnHand)"
					+"VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			preState.setString(1,d.getDrugDescription());
			preState.setInt(2,d.getRecNo());
			preState.setString(3,d.getProductID());
			preState.setString(4,d.getControlClass());
			preState.setString(5,d.getDrugType());
			preState.setString(6,d.getGenericDrug());
			preState.setString(7,d.getMedicaidNo());
			preState.setString(8,d.getWarningCode());
			preState.setString(9,d.getGenericAvailable());
			preState.setString(10,d.getMedicareNo());
			preState.setString(11,d.getSigCodes());
			preState.setString(12,d.getSigCodes1());
			preState.setString(13,d.getSigCodes2());
			preState.setString(14,d.getCompoundDrug());
			preState.setString(15,d.getProductIDQualifier());
			preState.setString(16,d.getDrugColor());
			preState.setString(17,d.getReferenceQualifier());
			preState.setString(18,d.getNYDVSCode());
			preState.setInt(19,d.getPackageSize());
			preState.setInt(20,d.getQuickCode());
			preState.setString(21,d.getCategoryofService());
			preState.setInt(22,d.getMedicaidPackageSize());
			preState.setString(23,d.getManufacturer());
			preState.setString(24,d.getDrugInRobot());
			preState.setString(25,d.getUnitOfMeasure());
			preState.setInt(26,d.getMaximumRefills());
			preState.setString(27,d.getDrug340B());
			preState.setString(28,d.getDrugAWP());
			preState.setDate(29,d.getExpiration());
			preState.setString(30,d.getActiveDrug());
			preState.setDouble(31,d.getDirectPrice());
			preState.setDate(32,d.getLotExpDate());
			preState.setInt(33,d.getLotNo());
			preState.setString(34,d.getTXR());
			preState.setDouble(35,d.getFedMacPrice());
			preState.setString(36,d.getTXRExtention());
			preState.setDouble(37,d.getAcquisitionCost());
			preState.setString(38,d.getSpecialtyDrug());
			preState.setDate(39,d.getLastPriceUpdate());
			preState.setDouble(40,d.getMinimumQtyOnHand());
			preState.setDouble(41,d.getCurrentQtyOnHand());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail"+e);}
		return Stat;
	}
	
	public static int updateDrug(dbtbdrug_record d) {
		int Stat = 0;
		try {
			conn =   DbCon.getCon();
			preState = conn.prepareStatement("UPDATE drug_record SET DrugDescription=?,RecNo=?,ProductID=?,ControlClass=?,DrugType=?,GenericDrug=?,MedicaidNo=?,WarningCode=?,GenericAvailable=?,MedicareNo=?,SigCodes=?,SigCodes1=?,SigCodes2=?,CompoundDrug=?,ProductIDQualifier=?,DrugColor=?,ReferenceQualifier=?,NYDVSCode=?,PackageSize=?,QuickCode=?,CategoryofService=?,MedicaidPackageSize=?,Manufacturer=?,DrugInRobot=?,UnitOfMeasure=?,MaximumRefills=?,Drug340B=?,DrugAWP=?,Expiration=?,ActiveDrug=?,DirectPrice=?,LotExpDate=?,LotNo=?,TXR=?,FedMacPrice=?,TXRExtention=?,AcquisitionCost=?,SpecialtyDrug=?,LastPriceUpdate=?,MinimumQtyOnHand=?,CurrentQtyOnHand=?  WHERE Drug_ID=?");
			preState.setString(1,d.getDrugDescription());
			preState.setInt(2,d.getRecNo());
			preState.setString(3,d.getProductID());
			preState.setString(4,d.getControlClass());
			preState.setString(5,d.getDrugType());
			preState.setString(6,d.getGenericDrug());
			preState.setString(7,d.getMedicaidNo());
			preState.setString(8,d.getWarningCode());
			preState.setString(9,d.getGenericAvailable());
			preState.setString(10,d.getMedicareNo());
			preState.setString(11,d.getSigCodes());
			preState.setString(12,d.getSigCodes1());
			preState.setString(13,d.getSigCodes2());
			preState.setString(14,d.getCompoundDrug());
			preState.setString(15,d.getProductIDQualifier());
			preState.setString(16,d.getDrugColor());
			preState.setString(17,d.getReferenceQualifier());
			preState.setString(18,d.getNYDVSCode());
			preState.setInt(19,d.getPackageSize());
			preState.setInt(20,d.getQuickCode());
			preState.setString(21,d.getCategoryofService());
			preState.setInt(22,d.getMedicaidPackageSize());
			preState.setString(23,d.getManufacturer());
			preState.setString(24,d.getDrugInRobot());
			preState.setString(25,d.getUnitOfMeasure());
			preState.setInt(26,d.getMaximumRefills());
			preState.setString(27,d.getDrug340B());
			preState.setString(28,d.getDrugAWP());
			preState.setDate(29,d.getExpiration());
			preState.setString(30,d.getActiveDrug());
			preState.setDouble(31,d.getDirectPrice());
			preState.setDate(32,d.getLotExpDate());
			preState.setInt(33,d.getLotNo());
			preState.setString(34,d.getTXR());
			preState.setDouble(35,d.getFedMacPrice());
			preState.setString(36,d.getTXRExtention());
			preState.setDouble(37,d.getAcquisitionCost());
			preState.setString(38,d.getSpecialtyDrug());
			preState.setDate(39,d.getLastPriceUpdate());
			preState.setDouble(40,d.getMinimumQtyOnHand());
			preState.setDouble(41,d.getCurrentQtyOnHand());
			preState.setInt(42,d.getDrug_ID());
			Stat=preState.executeUpdate(); 
		}
		catch (Exception e) {System.out.print("Fail");}
		return Stat;
	}
	
	public static int deleteDrug(dbtbdrug_record d) {
		int Stat =0;
		try {
		conn =   DbCon.getCon();
		preState = conn.prepareStatement("DELETE FROM drug_record WHERE Drug_ID=?");
		preState.setInt(1,d.getDrug_ID());	
		Stat=preState.executeUpdate();
		}
		catch (Exception e) {System.out.print(e);}
		return Stat;
	}
	
	public static List<dbtbdrug_record> getAllRecords(){
		List<dbtbdrug_record> list=new ArrayList<dbtbdrug_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM drug_record");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbdrug_record d = new dbtbdrug_record();
				d.setDrug_ID(reSet.getInt("Drug_ID"));
				d.setDrugDescription(reSet.getString("DrugDescription"));
				d.setRecNo(reSet.getInt("RecNo"));
				d.setProductID(reSet.getString("ProductID"));
				d.setControlClass(reSet.getString("ControlClass"));
				d.setDrugType(reSet.getString("DrugType"));
				d.setGenericDrug(reSet.getString("GenericDrug"));
				d.setMedicaidNo(reSet.getString("MedicaidNo"));
				d.setWarningCode(reSet.getString("WarningCode"));
				d.setGenericAvailable(reSet.getString("GenericAvailable"));
				d.setMedicareNo(reSet.getString("MedicareNo"));
				d.setSigCodes(reSet.getString("SigCodes"));
				d.setSigCodes1(reSet.getString("SigCodes1"));
				d.setSigCodes2(reSet.getString("SigCodes2"));
				d.setCompoundDrug(reSet.getString("CompoundDrug"));
				d.setProductIDQualifier(reSet.getString("ProductIDQualifier"));
				d.setDrugColor(reSet.getString("DrugColor"));
				d.setReferenceQualifier(reSet.getString("ReferenceQualifier"));
				d.setNYDVSCode(reSet.getString("NYDVSCode"));
				d.setPackageSize(reSet.getInt("PackageSize"));
				d.setQuickCode(reSet.getInt("QuickCode"));
				d.setCategoryofService(reSet.getString("CategoryofService"));
				d.setMedicaidPackageSize(reSet.getInt("MedicaidPackageSize"));
				d.setManufacturer(reSet.getString("Manufacturer"));
				d.setDrugInRobot(reSet.getString("DrugInRobot"));
				d.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				d.setMaximumRefills(reSet.getInt("MaximumRefills"));
				d.setDrug340B(reSet.getString("Drug340B"));
				d.setDrugAWP(reSet.getString("DrugAWP"));
				d.setExpiration(reSet.getDate("Expiration"));
				d.setActiveDrug(reSet.getString("ActiveDrug"));
				d.setTXR(reSet.getString("TXR"));
				d.setFedMacPrice(reSet.getDouble("FedMacPrice"));
				d.setTXRExtention(reSet.getString("TXRExtention"));
				d.setAcquisitionCost(reSet.getDouble("AcquisitionCost"));
				d.setSpecialtyDrug(reSet.getString("SpecialtyDrug"));
				d.setLastPriceUpdate(reSet.getDate("LastPriceUpdate"));
				d.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				d.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				list.add(d);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
			
	public static List<dbtbdrug_record> getMinimumRecords(){
		List<dbtbdrug_record> list=new ArrayList<dbtbdrug_record>();
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM drug_record WHERE CurrentQtyOnHand <= MinimumQtyOnHand");  
			reSet=preState.executeQuery();
			while(reSet.next()) {
				dbtbdrug_record d = new dbtbdrug_record();
				d.setDrug_ID(reSet.getInt("Drug_ID"));
				d.setDrugDescription(reSet.getString("DrugDescription"));
				d.setRecNo(reSet.getInt("RecNo"));
				d.setProductID(reSet.getString("ProductID"));
				d.setControlClass(reSet.getString("ControlClass"));
				d.setDrugType(reSet.getString("DrugType"));
				d.setGenericDrug(reSet.getString("GenericDrug"));
				d.setMedicaidNo(reSet.getString("MedicaidNo"));
				d.setWarningCode(reSet.getString("WarningCode"));
				d.setGenericAvailable(reSet.getString("GenericAvailable"));
				d.setMedicareNo(reSet.getString("MedicareNo"));
				d.setSigCodes(reSet.getString("SigCodes"));
				d.setSigCodes1(reSet.getString("SigCodes1"));
				d.setSigCodes2(reSet.getString("SigCodes2"));
				d.setCompoundDrug(reSet.getString("CompoundDrug"));
				d.setProductIDQualifier(reSet.getString("ProductIDQualifier"));
				d.setDrugColor(reSet.getString("DrugColor"));
				d.setReferenceQualifier(reSet.getString("ReferenceQualifier"));
				d.setNYDVSCode(reSet.getString("NYDVSCode"));
				d.setPackageSize(reSet.getInt("PackageSize"));
				d.setQuickCode(reSet.getInt("QuickCode"));
				d.setCategoryofService(reSet.getString("CategoryofService"));
				d.setMedicaidPackageSize(reSet.getInt("MedicaidPackageSize"));
				d.setManufacturer(reSet.getString("Manufacturer"));
				d.setDrugInRobot(reSet.getString("DrugInRobot"));
				d.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				d.setMaximumRefills(reSet.getInt("MaximumRefills"));
				d.setDrug340B(reSet.getString("Drug340B"));
				d.setDrugAWP(reSet.getString("DrugAWP"));
				d.setExpiration(reSet.getDate("Expiration"));
				d.setActiveDrug(reSet.getString("ActiveDrug"));
				d.setTXR(reSet.getString("TXR"));
				d.setFedMacPrice(reSet.getDouble("FedMacPrice"));
				d.setTXRExtention(reSet.getString("TXRExtention"));
				d.setAcquisitionCost(reSet.getDouble("AcquisitionCost"));
				d.setSpecialtyDrug(reSet.getString("SpecialtyDrug"));
				d.setLastPriceUpdate(reSet.getDate("LastPriceUpdate"));
				d.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				d.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				list.add(d);
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return list;
			}
	public static dbtbdrug_record getRecord(int id){
		dbtbdrug_record d=null;
		try {
			conn=DbCon.getCon();   
			preState=conn.prepareStatement("SELECT * FROM drug_record WHERE Drug_ID=?");  
			preState.setInt(1, id);
			reSet=preState.executeQuery();
			while(reSet.next()) {
				d = new dbtbdrug_record();
				d.setDrug_ID(reSet.getInt("Drug_ID"));
				d.setDrugDescription(reSet.getString("DrugDescription"));
				d.setRecNo(reSet.getInt("RecNo"));
				d.setProductID(reSet.getString("ProductID"));
				d.setControlClass(reSet.getString("ControlClass"));
				d.setDrugType(reSet.getString("DrugType"));
				d.setGenericDrug(reSet.getString("GenericDrug"));
				d.setMedicaidNo(reSet.getString("MedicaidNo"));
				d.setWarningCode(reSet.getString("WarningCode"));
				d.setGenericAvailable(reSet.getString("GenericAvailable"));
				d.setMedicareNo(reSet.getString("MedicareNo"));
				d.setSigCodes(reSet.getString("SigCodes"));
				d.setSigCodes1(reSet.getString("SigCodes1"));
				d.setSigCodes2(reSet.getString("SigCodes2"));
				d.setCompoundDrug(reSet.getString("CompoundDrug"));
				d.setProductIDQualifier(reSet.getString("ProductIDQualifier"));
				d.setDrugColor(reSet.getString("DrugColor"));
				d.setReferenceQualifier(reSet.getString("ReferenceQualifier"));
				d.setNYDVSCode(reSet.getString("NYDVSCode"));
				d.setPackageSize(reSet.getInt("PackageSize"));
				d.setQuickCode(reSet.getInt("QuickCode"));
				d.setCategoryofService(reSet.getString("CategoryofService"));
				d.setMedicaidPackageSize(reSet.getInt("MedicaidPackageSize"));
				d.setManufacturer(reSet.getString("Manufacturer"));
				d.setDrugInRobot(reSet.getString("DrugInRobot"));
				d.setUnitOfMeasure(reSet.getString("UnitOfMeasure"));
				d.setMaximumRefills(reSet.getInt("MaximumRefills"));
				d.setDrug340B(reSet.getString("Drug340B"));
				d.setDrugAWP(reSet.getString("DrugAWP"));
				d.setExpiration(reSet.getDate("Expiration"));
				d.setActiveDrug(reSet.getString("ActiveDrug"));
				d.setTXR(reSet.getString("TXR"));
				d.setFedMacPrice(reSet.getDouble("FedMacPrice"));
				d.setTXRExtention(reSet.getString("TXRExtention"));
				d.setAcquisitionCost(reSet.getDouble("AcquisitionCost"));
				d.setSpecialtyDrug(reSet.getString("SpecialtyDrug"));
				d.setLastPriceUpdate(reSet.getDate("LastPriceUpdate"));
				d.setMinimumQtyOnHand(reSet.getInt("MinimumQtyOnHand"));
				d.setCurrentQtyOnHand(reSet.getInt("CurrentQtyOnHand"));
				
			}}
			catch(Exception e){JOptionPane.showMessageDialog(null, e);}  
				return d;
			}		
			
}
