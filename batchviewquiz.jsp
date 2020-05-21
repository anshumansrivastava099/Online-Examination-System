<%@ page session="false"%>
<%@ page import="java.sql.*"%>
 <%@ include file="home2.jsp"%>
<html>
<head>
<title> Batch View</title>

</head>
<body>
<h1><font color=black> All Batches</font></h1>

<%
String bt=request.getParameter("Batch_Type");
HttpSession session= request.getSession(true);
session.setAttribute("Batch_Type",bt);
String sc=(String)session.getAttribute("Course_Code");
String sn=(String)session.getAttribute("Course_Name");
 
	





out.println("<label>");
out.println("<font color=black>");
			out.println("Batch Type :-");
			out.println("</font>");
			out.println("</label>");
			out.println("<font color=black>");
			out.println(bt);
			out.println("</font>");
			out.println("<br>");
			out.println("<br>");
			out.println("<br>");
	

	String bn="";
	String bc="";
	

		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
       rs = stmt.executeQuery("SELECT * FROM batch_detail where Batch_Type='"+bt+"'&& Course_Code='"+sc+"' ");
	   	  
		 
		 out.println("<form action=\"http://localhost:8080/examples/studentlistquiz.jsp\">"); 	
	   
		 	
	   	   
	  while(rs.next())
		{
	
        bn=rs.getString("Batch_Name");
		session.setAttribute("Batch_Name",bn);

		
	
		   bc=rs.getString("Batch_Code");
		   
		  
	
			 out.println("<input type='checkbox' name='Batch_Code' value='"+bc+"'>");
		   out.println("<font color=black size='6'>");
		   out.println("  "+bn);
		   out.println("</font>");
		   out.println("<br>");
		   out.println("<hr>");
			   
	
			  

}
out.println("<input type='submit' value='NEXT'>");
		 out.println("</form>");
		  
 
            conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>




     </body>
	 </html>