import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class first extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws ServletException,  IOException
   {
     
     PrintWriter pw=res.getWriter();
     

     res.setContentType("text/html");
      try {
            String url = "jdbc:mysql://localhost:3306/cramium";
pw.println("This is your Database ");
            Connection conn = DriverManager.getConnection(url,"root","");
		pw.println("Your welcome java...");
            Statement stmt = conn.createStatement();
			pw.println("We are happy to help you ");
            ResultSet rs;
   
       String name=req.getParameter("NameA");
      String pass=req.getParameter("PhoneA");
      String numb=req.getParameter("PasswordA");
      String gen=req.getParameter("GenderA");
      String agre=req.getParameter("ArgeeA");
      String city =req.getParameter("CityA");

    
      
 stmt.executeUpdate("INSERT into cramium_record values(' "+name+" ',' "+pass+" ',' "+numb+" ',' "+gen+" ', ' "+agre+" ',' "+city+" ')");
            rs = stmt.executeQuery("SELECT * FROM cramium_record");
         pw.println("<html>");
     pw.println("<body>");
     pw.println("<h1> "+name+" </h1>");
     pw.println("<h2> "+pass+"  </h2>");
     pw.println("<h3> "+numb+"  </h3>");
     pw.println("<h4> "+gen+"  </h4>");
     pw.println("<h5> "+agre+" </h5>");
     pw.println("<h6> "+city+"  </h6>");
   
     pw.println("</body>");
     pw.println("</html>");
         
     
			
            
            conn.close();
        } catch (Exception e) {
            pw.println("Got an exception! ");
            pw.println(e);
}
      
     
     }
}


    