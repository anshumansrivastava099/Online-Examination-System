
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import data.data;


public class search2 extends HttpServlet
{

   public void doGet(HttpServletRequest req, HttpServletResponse res)
   throws IOException , ServletException  
   {
	  
     res.setContentType("text/html");
	  PrintWriter pw=res.getWriter();
   
	  	String s1=req.getParameter("t1");
	   String a="";
	   String b=" ";
	   String c=" ";
	   String d=" ";
	   String t=" ";
	   String f=" ";

      try {
           
pw.println("This is your Database ");
           
		
        
			Statement st=data.getConnection();
            ResultSet rs;
     
   

    
            rs = st.executeQuery("SELECT * FROM cramium_record WHERE NameA='"+s1+"' ");
			pw.println(s1);
        
		 while(rs.next())
		  {
			
			  
			a=rs.getString("NameA");
             
			// pw.println(a);
			  
			 
b= rs.getString("PhoneA");

			 //pw.println(b);
			  
			
			  
c=rs.getString("PasswordA");

			 //pw.println(c);
			 
 d=rs.getString("GenderA");

			 //pw.println(d);
			  
 t=rs.getString("ArgeeA");

			 //pw.println(e);
			  
 f=rs.getString("CityA");

			 //pw.println(f);
			  }



		

			
            
           // conn.close();
        } catch (Exception e) {
            pw.println("Got an exception! ");
            pw.println(e);
}
pw.println(a);
pw.println(b);
pw.println(c);
pw.println(d);
pw.println(t);
pw.println(f);
pw.println("<h1>");
pw.println("<form action=\"http://localhost:8080/examples/se\" method=\"GET\">");
     pw.println("Name:<input type=\"text\" name=\"NameA\" value='"+a+"'>");
     pw.println("Phone:<input type=\"text\" name=\"PhoneA\" value='"+b+"'>");
     pw.println("Password:<input type=\"passwordr\" name=\"PasswordA\" value='"+c+"'>");
	 if(d.equals("M"))
	   {
     pw.println("Gender:<input type=\"radio\" name=\"GenderA\" value=\"M\" checked>Male");
            pw.println("<input type=\"radio\" name=\"GenderA\" value=\"F\" >Female");
	   }
	   else
	   {
		    pw.println("Gender:<input type=\"radio\" name=\"GenderA\" value=\"M\">Male");
            pw.println("<input type=\"radio\" name=\"GenderA\" value=\"F\" checked>Female");
	   }
    if(t.equals("Y"))
	   {
     pw.println("Agreement:<input type=\"checkbox\" name=\"ArgeeA\" value=\"Y\" checked>Yes");
        pw.println("<input type=\"checkbox\" name=\"ArgeeA\" value=\"N\">No");
	   }
	   else
	   {
		      pw.println("Agreement:<input type=\"checkbox\" name=\"ArgeeA\" value=\"Y\">Yes");
        pw.println("<input type=\"checkbox\" name=\"ArgeeA\" value=\"N\" checked>No");
	   }

	   
     pw.println("City:<select name=\"CityA\">");
	 
	 pw.println("<option selected>Delhi</option>");
         pw.println(" <option selected>Varanasi</option>");
            pw.println("<option selected>Allabhad</option>");
             pw.println("<option selected>Ghaziabad</option>");
	  
	   pw.println("</select>");
	   
    pw.println("<input type=\"submit\" value=\"Check\">");
    
    pw.println("</form>");
pw.println("</h1>");


     }
		
	
}


    