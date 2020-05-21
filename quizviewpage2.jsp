<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>Quiz View</title>
<%@ include file="home2.jsp"%>

</head>
<body>

<br>

<%


	String qn="";
	String qc="";
	

		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
	   rs = stmt.executeQuery("SELECT * FROM quiz_detail_2 "); %>
		<div class="container" style="padding-top: 100px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				List of All Quiz
			  </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">Quiz Name</th>
					<th scope="col" class="text-center" >Quiz Code</th>
					<th scope="col" class="text-center">Select Option</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>


				</tr>
			</thead>
	         

	   	
	   	   
	  <% while(rs.next())
		{
	
        qn=rs.getString("Quiz_Name");
		qc=rs.getString("Quiz_Code");%>
		<tbody>
			<tr>

				<td class="text-center"><%out.println(qn);%></td>
				<td class="text-center"><%out.println(qc);%></td>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-warning\" href=\"quizdetailview2.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
					  out.println("Select");
						  out.println("</a>");
						   out.println("</td>");%>
						</div>
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-warning\" href=\"quizdetailupdatepage.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
			  out.println("Update");
				  out.println("</a>");
				   out.println("</td>");%>
				</div>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-warning\" href=\"quizdetaildelete.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
					  out.println("Delete");
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