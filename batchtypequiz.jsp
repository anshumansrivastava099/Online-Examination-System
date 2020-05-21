<%@ page session="false"%>
<%@ page import="java.sql.*"%>
 <%@ include file="home2.jsp"%>
<html>
<head>
<title> Batch Type View</title>

</head>
<body>


<h1> Select the batch type :-</h1>

<%
String sc=request.getParameter("Course_Code");
String sn=request.getParameter("Course_Name");
  HttpSession session= request.getSession(true);
	session.setAttribute("Course_Code",sc);
	session.setAttribute("Course_Name",sn);
	out.println("<label>");
			out.println("Course Name :-");
			out.println("</label>");
			out.println(sn);
			out.println("<br>");
			out.println("<label>");
			out.println("Course Code :-");
			out.println("</label>");
			out.println(sc);
			out.println("<br>");
			out.println("<br>");
String bt=" ";

	int i=1;	

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
       rs = stmt.executeQuery("SELECT * FROM batch_type  ");

			
			
         while(rs.next())
		{
	
        bt=rs.getString("Batch_Type");
out.println("<font size='5'>");
	out.println(i+" .");
	out.println("</font>");
	out.println("<a href=\"batchviewquiz.jsp?Batch_Type="+bt+"\">");
	out.println("<font size='5'>");
	out.println(bt);
	out.println("</font>");
	out.println("</a>");
	out.println("<br>");
	out.println("<br>");
	i++;
	}
 
            conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>


     </body>
	 </html>
		

