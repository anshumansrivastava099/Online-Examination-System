<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Unit Detail</title>
<%@ include file="home2.jsp" %>


</head>
<body>

<%

String un=request.getParameter("Unit_Name");
session.setAttribute("Unit_Name",un);
String uc=request.getParameter("Unit_Code");
session.setAttribute("Unit_Code",uc);
 
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
           
   
			
		rs = stmt.executeQuery("SELECT * FROM unit WHERE Unit_Code='"+uc+"' ");%>
		<div class="container" style="margin-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Unit Detail
				 </div>
			<table class="table table-hover table-dark">
		
		
	  	
	    <% while(rs.next())
		  {
			 b=true;
			 
		  	  s1=rs.getString("Unit_Name");
              s2=rs.getString("Unit_Code");
			  s3=rs.getString("Total_Topic");
			  s7=rs.getString("Total_Lectures"); %>
			   
			
			  <tbody>
				<tr>
				  <th scope="row">--></th>
				  <td>Unit Name</td>
				  <td><%out.println(s1);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Unit Code</td>
				  <td><%out.println(s2);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Total Topic</td>
				  <td><%out.println(s3);%></td>
			  </tr>
			   <tr>
				<th scope="row">--></th>
				<td>Required Lectures</td>
				<td><%out.println(s7);%></td>
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
	<%	out.println("<a class=\"btn btn-warning\" href=\"unitupdatepage.jsp?Unit_Code="+uc+"\" role=\"button\">");
  out.println("Update");
	  out.println("</a>");
	  %>
	
	  <a class="btn btn-warning ml-5" href="topicsearchp.jsp" role="button">Topics</a>

	

</div>
     </body>
	 </html>