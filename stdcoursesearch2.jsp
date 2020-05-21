<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Course Detail</title>
<%@include file="studenthomepage2.jsp" %>

</head>
<body>
<%

String sc=request.getParameter("Course_Code");
session.setAttribute("Course_Code",sc);
String sn=request.getParameter("Course_Name");
session.setAttribute("Course_Name",sn);
 
 String s1=" ";
  String s2=" ";
   String s3=" ";
    String s4=" ";
	 String s5=" ";
	  String s6=" ";
 boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
		rs = stmt.executeQuery("SELECT * FROM course WHERE Course_Code='"+sc+"' ");%>
		
		<div class="container" style="margin-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Courses Detail
			  </div>
			<table class="table table-hover table-dark">
	
	
	  	
	  <%  while(rs.next())
		  {
			 b=true;
			 
		  	  s1=rs.getString("Course_Code");
              s2=rs.getString("Course_Name");
               s3=rs.getString("Course_Desc");
			   s4=rs.getString("Start_Date");
			  s5=rs.getString("End_Date");
				s6=rs.getString("Scope");%>
				<tbody>
					<tr>
					  <th scope="row">--></th>
					  <td>Course Name</td>
					  <td><%out.println(s2);%></td>
				  </tr>
				  <tr>
					  <th scope="row">--></th>
					  <td>Course Code</td>
					  <td><%out.println(s1);%></td>
				  </tr>
				  <tr>
					  <th scope="row">--></th>
					  <td>Start Date</td>
					  <td><%out.println(s4);%></td>
				  </tr>
				  <tr>
					  <th scope="row">--></th>
					  <td>End Date</td>
					  <td><%out.println(s5);%></td>
				  </tr>
				  <tr>
					  <th scope="row">--></th>
					  <td>Description</td>
					  <td><%out.println(s3);%></td>
				  </tr>
				  <tr>
					  <th scope="row">--></th>
					  <td>Scope</td>
					  <td><%out.println(s6);%></td>
				  </tr>
				   
				  </tbody>
		<%  }%>
		  </table>
		  </div>
		   <%   conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 
%>
    
<div class="form-group" style="padding-left: 80px;">
<a class="btn btn-warning ml-5" href="stdsubjectsearchp.jsp" role="button">Subject</a>
</div>


     </body>
	 </html>