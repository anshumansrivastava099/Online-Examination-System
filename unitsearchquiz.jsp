
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Unit View</title>
<%@ include file="home2.jsp" %>

</head>
<body>

<%

String qc=(String)session.getAttribute("Quiz_Code");
String sn=(String)session.getAttribute("Subject_Name");
String sc=(String)session.getAttribute("Subject_Code");



String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");%>




<%
	String un="";
	String uc="";
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM unit WHERE Subject_Code='"+sc+"' ");%>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			List of all Units
		  </div>
		
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>
					<th scope="col" class="text-center">Select</th>
					<th scope="col" class="text-center">Unit Name</th>
					
				</tr>
			</thead>
	   	  
	   
			<%  out.println("<form action='http://localhost:8080/examples/topicsearchquiz.jsp' method='GET'>");%>
				<tbody>
						 
	<%  while(rs.next())
		{
	
        un=rs.getString("Unit_Name");
		
	
		   uc=rs.getString("Unit_Code");%>
		  <tr>
		<td class="text-center">  	  
		<% out.println("<input type='checkbox' name='Unit_Code' value='"+uc+"'>");%></td>
		<td class="text-center"><% out.println(un);%>
			 </td>
			</tr>
			
			
	<%		 
		}%>
		
	</tbody>
	</table>

	<button type="submit" class="btn btn-warning">Search Topic</button>

		
 
	<%	out.println("</form>");
            conn.close();
        }
		
		
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>




</div>
     </body>
	 </html	>