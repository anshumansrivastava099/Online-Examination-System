<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Question View</title>
<%@ include file="home2.jsp" %>

</head>
<body>

<%

String qc=(String)session.getAttribute("Quiz_Code");%>


<%
String tc[]=request.getParameterValues("Topic_Code");

	String s1="";
	String s2="";
	String s3="";
	String s4="";
	String s5="";
	String s6="";
	String s7="";
	String s8="";
	

	
	

	 for(int i=0;i<tc.length;i++)	
	 {

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
			 
		
			ResultSet rs;
			
			
			
           


	   rs = stmt.executeQuery("SELECT * FROM insert_question_2,insert_question WHERE Topic_Code='"+tc[i]+"'&& insert_question.Question_Code=insert_question_2.Question_Code");
	   
	   
	   %>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Question List For Quiz
		  </div>
		<table class="table table-hover table-bordered table-dark">
		  <thead>
			<tr>
			  <th scope="col" class="text-center">Select</th>
			  <th scope="col" class="text-center">Question Name</th>
			  <th scope="col" class="text-center">Option A</th>
			  <th scope="col" class="text-center">Option B</th>
			  <th scope="col" class="text-center">Option C</th>
			  <th scope="col" class="text-center">Option D</th>
			  
			</tr>
		  </thead>
		
	   	 <% out.println("<form action='http://localhost:8080/examples/createquiz.jsp' method='GET'>");
	 


	  while(rs.next())
		{
s1=rs.getString("Question_Code");
s2=rs.getString("Question_Name");
s3=rs.getString("Option_A");
s4=rs.getString("Option_B");
s5=rs.getString("Option_C");
s6=rs.getString("Option_D");
s7=rs.getString("Answer");
s8=rs.getString("Topic_Code");
%>

<tbody>
	<tr>
	  <td class="text-center"><% out.println("<input type='checkbox' name='Question_Code' value='"+s1+"'>");%></td>
 <td class="text-center"><% out.println(s2);%></td>
 <td class="text-center"><% out.println(s3);%></td>
 <td class="text-center"><% out.println(s4);%></td>
 <td class="text-center"><% out.println(s5);%></td>
 <td class="text-center"><% out.println(s6);%></td>
 </tr>
</tbody>

<%		 
}%>
</table>

 
<button type="submit" class="btn btn-warning">Save Quiz</button>
 


<% out.println("</form>");
		 
            conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
	 }
		   
%>



	</div>
     </body>
	 </html>