import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class mobileAck extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
	  String s2=req.getParameter("a1");
	  String s1=req.getParameter("t1");
pw.println("<html>");
pw.println("<body>");
pw.println("<center>");
pw.println("<h1>"+"Select the freezeA"+"</h1>");
pw.println("<h2>");
pw.println("<form  action=\"http://localhost:8080/examples/freezeAck\" method=\"GET\">");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Samsung\">Samsung");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Whirpool\">Whirpool");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Lg\">Lg");
pw.println("<br>");
Cookie c = new Cookie("a1", s2);
            res.addCookie(c);
			
	   
pw.println("<input type=\"submit\" value=\"OK\">");
pw.println("</h2>");

pw.println("</form>");

pw.println("</body>");
pw.println("</html>");
   }
}
   