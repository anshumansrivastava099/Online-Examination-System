import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LogoutServlet extends HttpServlet
{
protected void doGet(HttpServletRequest request,HttpServletResponse response)

throws ServletException , IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();

request.getRequestDispatcher("link12.html").include(request,response);


HttpSession session=request.getSession();
session.invalidate();

out.println("You are successfully Logout");

out.close();
}
}