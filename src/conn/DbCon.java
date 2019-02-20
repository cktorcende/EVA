package conn;

import java.sql.*;


public class DbCon {
	
	public static Connection getCon(){  
		Connection con =null;
	    try{  
	    	Class.forName("com.mysql.cj.jdbc.Driver"); 
	    	 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Eva?serverTimezone=UTC","root","117l3vi"); 
	  
	    	}
	    catch(Exception e){System.out.println(e);}  
	    return con;
	}
}
