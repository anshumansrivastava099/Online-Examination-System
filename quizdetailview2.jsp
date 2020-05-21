<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Quiz Detail</title>
<%@ include file="home2.jsp"%>

</head>
<body>

<%


String qc=request.getParameter("Quiz_Code");

 
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
		  %>
		<div class="container" style="margin-top: 130px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Detail of Quiz
			  </div>
		<table class="table table-hover table-dark">
	
	
	  	
	  <%  
	 
	out.println("<form action='http://localhost:8080/examples/quizdisplay2.jsp' method='GET'>");
	 while(rs.next())
		  {
			 b=true;
			  s1=rs.getString("Quiz_Code");
              s2=rs.getString("Quiz_Name");
			 s3=rs.getString("Start_Date");
			 s5=rs.getString("Total_Marks");
			s6=rs.getString("Total_Time");
		   s7=rs.getString("Total_Question");%>
		   <tbody>
			<tr>
			  <th scope="row">--></th>
			  <td>Quiz Name</td>
			  <td><%out.println(s2);%></td>
		  </tr>
		  <tr>
			  <th scope="row">--></th>
			  <td>Quiz Code</td>
			  <td><%out.println(s1);%></td>
		  </tr>
		  <tr>
			  <th scope="row">--></th>
			  <td>Quiz Creation Date</td>
			  <td><%out.println(s3);%></td>
		  </tr>
		  <tr>
			  <th scope="row">--></th>
			  <td>Maximum Marks</td>
			  <td><%out.println(s5);%></td>
		  </tr>
		  <tr>
			  <th scope="row">--></th>
			  <td>Maximum Hours</td>
			  <td><%out.println(s6);%></td>
		  </tr>
		  <tr>
			  <th scope="row">--></th>
			  <td>Total Question</td>
			  <td><%out.println(s7);%></td>
		  </tr>
		   
		  </tbody>
		
	   
		 
  
 
			   
	<%  }%>
  </table>
  <button type="submit" class="btn btn-warning">Show Question</button>
  <%	out.println("<a class=\"btn btn-warning\" href=\"quizdetailupdatepage.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
	out.println("Update");
		out.println("</a>");
		%>
	  
  </form>
  </div>
   <%
			

		
			
			         
            conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 		
	 
%>
    
	


     </body>
	 </html>