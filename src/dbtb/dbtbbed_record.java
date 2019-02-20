package dbtb;

public class dbtbbed_record {
		private int bedID,floor,roomNo,BedClientID;
		private String wing,bedType;
		
		public int getbedID() {
			return bedID;
		}
		public void setbedID(int i) {
			this.bedID = i;
		}
		public int getBedClientID() {
			return BedClientID;
		}
		public void setBedClientID(int i) {
			this.BedClientID = i;
		}
		public int getfloor() {
			return floor;
		}
		public void setfloor(int i) {
			this.floor = i;
		}
		public int getroomNo() {
			return roomNo;
		}
		public void setroomNo(int i) {
			this.roomNo = i;
		}
		public String getwing() {
			return wing;
		}
		public void setwing(String s) {
			this.wing = s;
		}
		public String getbedType() {
			return bedType;
		}
		public void setbedType(String s) {
			this.bedType = s;
		}
		
	

}
