import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class update extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {

     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
   
	  	String s1=req.getParameter("t1");
		//String s2=req.getParameter("t2");
      try {
            String url = "jdbc:mysql://localhost:3306/cramium";
pw.println("This is your Database ");
            Connection conn = DriverManager.getConnection(url,"root","");
		pw.println("Your welcome java...");
            Statement stmt = conn.createStatement();
			pw.println("I Am  ");
            ResultSet rs;
     
   
      

    
     stmt.executeUpdate("UPDATE cramium.cramium_record SET NameA='"+s1+"' WHERE NameA='anshuman'");
            rs = stmt.executeQuery("SELECT * FROM cramium_record");
			pw.println(s1);
		
        
		 while(rs.next())
		  {
			
			  
			 String a= rs.getString("NameA");
             
			 pw.println(a);
			  
			 
String b= rs.getString("PhoneA");

			 pw.println(b);
			  
			
			  
String c= rs.getString("PasswordA");

			 pw.println(c);
			 
String d= rs.getString("GenderA");

			 pw.println(d);
			  
String e= rs.getString("ArgeeA");

			 pw.println(e);
			  
String f= rs.getString("CityA");

			 pw.println(f);
			  }



		

			
            
            conn.close();
        } catch (Exception e) {
            pw.println("Got an exception! ");
            pw.println(e);
}
pw.println("<html>");
pw.println("<body>");
pw.println("<h1>hello</h1>");
pw.println("</body>");
pw.println("</html>");
      
     
     }
}


    