import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class validateSes extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
   
	  	String s1=req.getParameter("t1");
		String s2=req.getParameter("t2");
	   String a=" ";
	   String b=" ";
	   String c=" ";
	   String d=" ";
	   String t=" ";
	   String f=" ";
   boolean b1=false;

      try {
            String url = "jdbc:mysql://localhost:3306/cramium";
pw.println("This is your Database ");
            Connection conn = DriverManager.getConnection(url,"root","");
		pw.println("Your welcome java...");
            Statement stmt = conn.createStatement();
			pw.println("I Am");
            ResultSet rs;
     
   
            rs = stmt.executeQuery("SELECT * FROM cramium_record WHERE NameA='"+s1+"' && PasswordA='"+s2+"'");
			pw.println(s1);
			pw.println(s2);
        
		 while(rs.next())
		  {
			b1=true;
			 HttpSession session = req.getSession(true);
	  session.setAttribute("t1", s1);
			  
			a=rs.getString("NameA");
       
			  
			 
b= rs.getString("PhoneA");

			 
			  
			
			  
c=rs.getString("PasswordA");

			 
			 
 d=rs.getString("GenderA");

			
			  
 t=rs.getString("ArgeeA");

			 			  
 f=rs.getString("CityA");

			 
			  }



		

			
            
            conn.close();
        } catch (Exception e) {
            pw.println("Got an exception! ");
            pw.println(e);
}
pw.println(b1);
if(b1)
	   {
	 RequestDispatcher rd=req.getRequestDispatcher("searchSes");  
        rd.forward(req, res);  
	   }
	   else
	   {
		    RequestDispatcher rd=req.getRequestDispatcher("login1Ses");  
        rd.include(req, res); 
	   }




     }
}


    