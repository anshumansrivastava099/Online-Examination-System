import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class LoginServlet extends HttpServlet
{
protected void doGet(HttpServletRequest request , HttpServletResponse response)

throws ServletException, IOException
{
response.setContentType("text/html");
PrintWriter out=response.getWriter();

RequestDispatcher rd=request.getRequestDispatcher("link12.html");
rd.include(request,response);


String name=request.getParameter("name");
String password=request.getParameter("password");


if(password.equals("anshu123"))
{
out.println("Welcome "+ name);
HttpSession session=request.getSession();
session.setAttribute("name",name);
}
else
{
out.println("Sorry username and password are incorrect");
request.getRequestDispatcher("login12.html").
	include(request,response);

}
out.close();
}
}