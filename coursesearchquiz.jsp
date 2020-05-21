<%@ page session="false"%>
<%@ page import="java.sql.*"%>
 

<html>
<head>
<title> Course View for Quiz</title>
<%@ include file="home2.jsp"%>

</head>
<body>



<%

	String sn="";
	String sc="";
	

		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
	   rs = stmt.executeQuery("SELECT * FROM course ");%>
	   <div class="container" style="padding-top: 100px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Courses List for Quiz
		  </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">Course Name</th>
					<th scope="col" class="text-center">Course Code</th>
					<th scope="col" class="text-center">Select Option</th>
					


				</tr>
			</thead>
	   	 
	   	   
	 <% while(rs.next())
		{
	
        sn=rs.getString("Course_Name");
		
	
		   sc=rs.getString("Course_Code");%>
		   <tbody>
			<tr>

				<td class="text-center"><%out.println(sn);%></td>
				<td class="text-center"><%out.println(sc);%></td>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-warning\" href=\"quizdetailpage2.jsp?Course_Code="+sc+"&&Course_Name="+sn+"\" role=\"button\">");
					  out.println("Select");
						  out.println("</a>");
						   out.println("</td>");%>
						</div>
		
				</tr>
		</tbody>







		<% 
}%>
	</table>
</div>

<%
		  
	
			
			   
	
			  


 
            conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>





     </body>
	 </html>