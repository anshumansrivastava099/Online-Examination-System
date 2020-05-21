<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<%@ include file="home2.jsp"%>
<html>
<head>
<title> Quiz Detail</title>

</head>
<body>
<h1> DETAILS OF QUIZ </h1>
<%


String qc=request.getParameter("Quiz_Code");
 HttpSession session= request.getSession(true);
 
 	session.setAttribute("Quiz_Code",qc);

 
 String s1=" ";
  String s2=" ";
   String s3=" ";
    String s4=" ";
	 String s5=" ";
	  String s6=" ";
	  String s7=" ";
 boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
          rs = stmt.executeQuery("SELECT * FROM quiz_detail_2 WHERE Quiz_Code='"+qc+"' ");
	 
	out.println("<form action='http://localhost:8080/examples/quizdisplay.jsp' method='GET'>");
	
	  	
	    while(rs.next())
		  {
			 b=true;
			  out.println("<font color='black'>");
		  	  s1=rs.getString("Quiz_Code");
               out.println("<li>");
			   out.println("<Lable>");
			   out.println("Quiz Code :- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  out.println(s1);
			
			   out.println("</li>");
			   s2=rs.getString("Quiz_Name");
			    out.println("<li>");
			   out.println("<Lable>");
			   out.println("Quiz Name :- ");
			   out.println("</Lable>");
			    out.println("<br>");
			    
			  out.println(s2);
			   out.println("</li>");
               s3=rs.getString("Start_Date");
			    out.println("<li>");
			   out.println("<Lable>");
			   out.println("Quiz Start :- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  
			  out.println(s3);
			   out.println("</li>");
			   s4=rs.getString("End_Date");
			    out.println("<li>");
				 
			   out.println("<Lable>");
			   out.println("Quiz End:- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  out.println(s4);
			   out.println("</li>");
			    s5=rs.getString("Total_Marks");
				   out.println("<li>");
			   out.println("<Lable>");
			   out.println("Quiz Marks:- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  out.println(s5);
			   out.println("</li>");
			s6=rs.getString("Total_Time");
			 out.println("<li>");
			  
			   out.println("<Lable>");
			   out.println("Quiz Time :- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  out.println(s6);
			   out.println("</li>");

			   s7=rs.getString("Total_Question");
			 out.println("<li>");
			  
			   out.println("<Lable>");
			   out.println("Total Question :- ");
			   out.println("</Lable>");
			    out.println("<br>");
			  out.println(s7);
			   out.println("</li>");

			 }
			 out.println("<input type='submit' value='NEXT'>");
			 out.println("</form>");
		
		
	   out.println("</form>");
			         
            conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 			out.println("<a href=\"quizdisplay.jsp?Quiz_Code='"+qc+"'\">");
			out.println("<p>");
out.println("<font size='7' color='white'>");
			out.println("NEXT");
			out.println("</font>");
				out.println("</p>");
				out.println("</a>");

	 
%>
    
	


     </body>
	 </html>