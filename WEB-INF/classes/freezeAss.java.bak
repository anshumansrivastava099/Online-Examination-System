import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class freezeAss extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
	  String s3=req.getParameter("b1");
	  String s1=req.getParameter("t1");
	    String s2=req.getParameter("a1");
	
	  pw.println("<html>");
	  pw.println("<body>");
	  pw.println("<center>");
	  pw.println("<h1>");
	 HttpSession session = req.getSession(false);
	  session.setAttribute("b1", s3);
			

            String value1 = (String)session.getAttribute("t1");
            pw.println(value1);
			 String value2 = (String)session.getAttribute("a1");
            pw.println(value2);
		
		 String value3 = (String)session.getAttribute("b1");
            pw.println(value3);
		
		
	  pw.println("<input type=\"submit\" value=\"OK\">");
	  pw.println("</body>");
	  pw.println("</html>");
	  
	  }
	  }
