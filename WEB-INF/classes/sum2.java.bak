import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class sum2 extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws IOException, ServletException
    {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
       
	   String s2=request.getParameter("t1");
	   String s3=request.getParameter("t2");
	   int c=add(s2,s3);
		   out.println(c);

	}
	int add(String s2,String s3)
	{
		int a=Integer.parseInt(s2);

		int b=Integer.parseInt(s3);

		int c=a+b;
		return c;
	}
}
	 