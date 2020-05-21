<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Unit View</title>
<%@ include file="studenthomepage2.jsp" %>


</head>
<body>

<%

String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");

String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");

	String un="";
	String uc="";
	int sno=0;
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM unit WHERE Subject_Code='"+sc+"' ");%>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Unit List
		  </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Unit Name</th>
					<th scope="col" class="text-center">Unit Code</th>
					<th scope="col" class="text-center">Select/th>
					


				</tr>
			</thead>
	   
	   	<%while(rs.next())
		{
			sno=sno+1;
	
        un=rs.getString("Unit_Name");
		
	
		   uc=rs.getString("Unit_Code");%>
		   <tbody>
			<tr>

				<td class="text-center"><%out.println(sno);%></td>
				<td class="text-center"><%out.println(un);%></td>
				<td class="text-center"><% out.println(uc);%></td>
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-warning\" href=\"stdunitsearch2.jsp?Unit_Code="+uc+"&&Unit_Name="+un+"\" role=\"button\">");
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
		
		
 out.println("</table>");
         
            conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>



     </body>
	 </html	>