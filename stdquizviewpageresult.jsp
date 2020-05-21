<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title>Quiz View</title>
<%@ include file="studenthomepage2.jsp"%>

</head>
<body>

<%


String s1=(String)session.getAttribute("Id");
	String qn="";
	String qc="";

	int sno=0;
	

		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
      // rs = stmt.executeQuery("SELECT Quiz_Name,Quiz_Code FROM quiz_detail GROUP by Quiz_Name,Quiz_Code HAVING COUNT(*)<2 ");
			  rs = stmt.executeQuery("SELECT * FROM quiz_detail_2,student_quiz  WHERE Id='"+s1+"'&& quiz_detail_2.Quiz_Code=student_quiz.Quiz_Code ");%>
			  
			  <div class="container" style="padding-top: 120px;">
				<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
					Quiz List For Result
				  </div>
				  
				<table class="table table-hover table-bordered table-dark">
					<thead>
						<tr>
		
							<th scope="col" class="text-center">S No.</th>
							<th scope="col" class="text-center">Quiz Name</th>
							<th scope="col" class="text-center">Quiz Code</th>
							<th scope="col" class="text-center">Select</th>
							
		
		
						</tr>
					</thead>
			

	   	 
	   	   
	 <% while(rs.next())
		{
			sno=sno+1;
	
        qn=rs.getString("Quiz_Name");
		
	
		   qc=rs.getString("Quiz_Code");%>
		   <tbody>
			<tr>

				<td class="text-center"><%out.println(sno);%></td>
				<td class="text-center"><%out.println(qn);%></td>
				<td class="text-center"><% out.println(qc);%></td>
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-warning\" href=\"studentresultdisplay.jsp?Quiz_Code="+qc+"&&Quiz_Name="+qn+"\"  role=\"button\">");
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