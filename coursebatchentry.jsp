<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<
<html>
<head>
<title> Course View</title>
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
           
   
	   rs = stmt.executeQuery("SELECT * FROM course  ");%>
	   <div class="container" style="padding-top: 100px;">
		<table class="table table-hover table-dark">
			<thead>
				<tr>

					<th scope="col">Course Name</th>
					<th scope="col">Course Code</th>
					


				</tr>
			</thead>

			<% 
	 while(rs.next())
		{
			
        sn=rs.getString("Course_Name");
	   sc=rs.getString("Course_Code");  %>


			<tbody>
				<tr>

					<td><%out.println(sn);%></td>
					<td><% 
				out.println("<a href=\"batchtypeselect.jsp?Course_Code="+sc+"&Course_Name="+sn+"\" style=\"color:white\">");

				out.println(sc);
				out.println("<a/>");
				%>
					</td>
		    
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

<div class="form-group" style="padding-left: 117px;">
	<a class="btn btn-warning mt-4 ml-2" href="courseentrypage.jsp" role="button">Add New Course</a>
</div>



     </body>
	 </html>