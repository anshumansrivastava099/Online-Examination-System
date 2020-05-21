//package p1;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;


public class VoterServlet extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws ServletException,  IOException
   {
     
     PrintWriter pw=res.getWriter();
     

     res.setContentType("text/html");

     String name=req.getParameter("pname");
     String tage=req.getParameter("page");


     int age=Integer.parseInt(tage);


     if(age>=18)
       pw.println("<h1>"+name+" yor are eligible</h1>");


       else
       pw.println("<h1>"+name+" yor are not eligible</h1>");

       pw.println("<a href='http://localhost:8080/examples/input.html'></a>");
	   pw.println("<html>");
	   pw.println("<h1> Anshuman </h1>");
	   pw.println("</html>");

       }
       }
