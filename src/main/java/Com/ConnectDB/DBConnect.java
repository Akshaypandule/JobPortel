package Com.ConnectDB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect
{
    private static Connection conn;
    
    public static Connection getconn()
    {
    	try
    	{
    		if(conn==null)
        	{
        		Class.forName("com.mysql.jdbc.Driver");
        		conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportel","root","1234");
        	}
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	return conn;
    }

}
