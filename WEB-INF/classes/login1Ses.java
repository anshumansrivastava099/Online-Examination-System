import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class login1Ses extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
   
pw.println("<html>");
pw.println("<head>");
pw.println("<form>");
pw.println("</head>");
pw.println("<body>");
pw.println("<center>");


pw.println("Name<input type=text name=t1>");

pw.println("Password<input type=text name=t2>");


pw.println("<input type=submit value=search>");

   pw.println(" </form>");
   pw.println(" </body>");
   pw.println(" </html>");
   }
}

