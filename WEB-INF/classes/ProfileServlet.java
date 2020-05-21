import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class ProfileServlet extends HttpServlet
{
protected void doGet(HttpServletRequest request,HttpServletResponse response)

throws ServletException,IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();

request.getRequestDispatcher("link12.html").include(request,response);


HttpSession session=request.getSession(false);
if(session!=null)
{
String name=(String)session.getAttribute("name");

out.println("Hello " +name+ " Welcome to profile");
}
else
{
out.println("Please Login to your profile first");
request.getRequestDispatcher("login12.html").include(request,response);

}
out.close();
}
}