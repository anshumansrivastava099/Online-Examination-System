import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class mobileAh extends HttpServlet
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
pw.println("<h1>"+"Select the freezeAh"+"</h1>");
pw.println("<h2>");
pw.println("<form  action=\"http://localhost:8080/examples/freezeAh\" method=\"GET\">");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Samsung\">Samsung");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Whirpool\">Whirpool");
pw.println("<br>");
pw.println("<input type=\"radio\" name=\"b1\" value=\"Lg\">Lg");
pw.println("<br>");
pw.println("The Mobile which you select is:<input type=\"hidden\" name=\"a1\" value='"+s2+"'>");
pw.println("<br>");
pw.println("The Mobile which you select is:<input type=\"hidden\" name=\"t1\" value='"+s1+"'>");
pw.println("<br>");

	   
pw.println("<input type=\"submit\" value=\"OK\">");
pw.println("</h2>");

pw.println("</form>");

pw.println("</body>");
pw.println("</html>");
   }
}
   