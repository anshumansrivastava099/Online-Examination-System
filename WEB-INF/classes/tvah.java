import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class tvah extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
	  String s1=req.getParameter("t1");
	
pw.println("<html>");
pw.println("<body>");
pw.println("<center>");
pw.println("<h1>"+"Select the mobileAh"+"</h1>");
pw.println("<h2>");
pw.println("<form  action=\"http://localhost:8080/examples/mobileAh\" method=\"GET\">");
pw.println("<input type=\"radio\" name=\"a1\" value=\"MI\" >MI");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"a1\" value=\"APPO\">APPO");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"a1\" value=\"VIVO\">VIVO");
pw.println("<br>");
pw.println("The TV which you select is:<input type=\"hidden\" name=\"t1\" value='"+s1+"'>");
pw.println("<br>");
pw.println("<input type=\"submit\" value=\"ok\">");
pw.println("</form>");
pw.println("</h2>");
pw.println("</body>");
pw.println("</html>");
   }
}
   