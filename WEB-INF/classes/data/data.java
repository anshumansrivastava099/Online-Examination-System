package data;
import java.sql.*;
public class data
{


public static Statement getConnection()
	{
		 Statement st=null;
        try
		{
			 String url = "jdbc:mysql://localhost:3306/cramium";
			 Connection conn = DriverManager.getConnection(url,"root","");
               st = conn.createStatement();

		}
		 catch (Exception e)
			 {
            System.out.println("Got an exception! ");
            System.out.println(e);
             }
			return st;
		
	}
}