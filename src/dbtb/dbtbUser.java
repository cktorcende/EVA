package dbtb;

public class dbtbUser {
	private String username, pswrd,status;
	private int idemployee_account,Client_Id,NumOfAttempts;
	
	public int getNumOfAttempts() {
		return NumOfAttempts;
	}
	public void setNumOfAttempts(int i) {
		this.NumOfAttempts = i;
	}
	public int getidemployee_account(){
		return idemployee_account;
	}
	
	public void setidemployee_account(int id){
		this.idemployee_account= id;
	}
	public int getClient_Id(){
		return Client_Id;
	}
	
	public void setClient_Id(int id){
		this.Client_Id= id;
	}
	
	public String getUsername(){
		return username;
	}
	public  void setUsername(String user){
		this.username= user;
	}
	public String getpswrd(){
		return pswrd;
	}
	public void setpswrd(String pswd){
		this.pswrd= pswd;
	}
	public String getstatus(){
		return status;
	}
	public void setstatus(String s){
		this.status= s;
	}


}
