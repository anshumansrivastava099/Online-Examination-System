<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Batch Detail</title>
<%@ include file="home2.jsp"%>

</head>
<body>

<%


String bc=request.getParameter("Batch_Code");
String cc=request.getParameter("Course_Code");
String cn=request.getParameter("Course_Name");

	session.setAttribute("Batch_Code",bc);
	
 
 String s1=" ";
  String s2=" ";
   String s3=" ";
    String s4=" ";
	 String s5=" ";
	  String s6=" ";
	  String s7=" ";
	  String s8=" ";
	  String s9=" ";
	  String s10=" ";
 boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
		rs = stmt.executeQuery("SELECT * FROM batch_detail WHERE Batch_Code='"+bc+"' ");%>
		<div class="container" style="margin-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Details of Batch
			  </div>
			<table class="table table-hover table-dark">
		
	
	
	  	
	   <% while(rs.next())
		  {
			 b=true;
			 
		  	  s1=rs.getString("Batch_Name");
              s2=rs.getString("Batch_Code");
			  s5=rs.getString("Batch_Start_Date");
			   s6=rs.getString("Batch_End_Date");
		       s7=rs.getString("Batch_Start_Time");
			   s8=rs.getString("Batch_End_Time");
		      s10=rs.getString("Total_Student");
			%>
			  
			  <tbody>
				
			 
			  <tr>
				<th scope="row">--></th>
				<td>Batch Name</td>
				<td><%out.println(s1);%></td>
			</tr>
			<tr>
				<th scope="row">--></th>
				<td>Batch Code</td>
				<td><%out.println(s2);%></td>
			</tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Batch Start Date</td>
				  <td><%out.println(s5);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Batch End Date</td>
				  <td><%out.println(s6);%></td>
			  </tr>
			  <tr>
				<th scope="row">--></th>
				<td>Batch Start Time</td>
				<td><%out.println(s7);%></td>
			</tr>
			<tr>
				<th scope="row">--></th>
				<td>Batch End Time</td>
				<td><%out.println(s8);%></td>
			</tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Total Students</td>
				  <td><%out.println(s10);%></td>
			  </tr>
			 
			   
			  </tbody>
			
		   
			 
	  
	 
				   
		<%  }%>
	  </table>
	  </div>
	   <%
			
			
			 
		
	   
			         
            conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 
%>
    
	
<div class="form-group" style="padding-left: 127px;">
	<%	out.println("<a class=\"btn btn-warning\" href=\"batcheditpage.jsp?Batch_Code="+bc+"&&Course_Code="+cc+"&&Course_Name="+cn+"\" role=\"button\">");
  out.println("Update");
	  out.println("</a>");
	  %>
	<%	out.println("<a class=\"btn btn-warning\" href=\"studentlist.jsp?Batch_Code="+bc+"\" role=\"button\">");
  out.println("Students");
	  out.println("</a>");
	  %>
	
	 

	

</div>


     </body>
	 </html>