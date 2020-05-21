import java.io.*;  
import javax.servlet.*;  
import javax.servlet.http.*;  
  
public class DemoServlet1 extends HttpServlet {  
public void doGet(HttpServletRequest request, HttpServletResponse response)  
    throws ServletException, IOException {  
  
    response.setContentType("text/html");  
    PrintWriter out = response.getWriter();  
      
    ServletCon config=getServletConfig();  
    String driver=config.getInitParameter("driver1");  
    out.print("Driver is: "+driver);  
          
    out.close();  
    }  
  
}  