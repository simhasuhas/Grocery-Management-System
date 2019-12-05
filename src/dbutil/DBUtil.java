package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil 
{
    public static Connection getConnection() throws Exception
    {
	  System.out.println("Connecting to Database......");
	  Class.forName("oracle.jdbc.driver.OracleDriver");
	  Connection con=null;
	  con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	  
	  
	return con;
	
    }
    public static void closeConnection(Connection con) throws Exception
    {
    	con.close();
    }
}