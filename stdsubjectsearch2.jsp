<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Subject Detail</title>
<%@ include file="studenthomepage2.jsp" %>


</head>
<body>
<%

String sn=request.getParameter("Subject_Name");
session.setAttribute("Subject_Name",sn);
String sc=request.getParameter("Subject_Code");
session.setAttribute("Subject_Code",sc);
 String scc=request.getParameter("Subject_Code");
 String s1=" ";
  String s2=" ";
   String s3=" ";
    String s4=" ";
 boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
		rs = stmt.executeQuery("SELECT * FROM subject WHERE Subject_Code='"+scc+"' ");%>
		<div class="container" style="margin-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Subject Detail
			  </div>
			<table class="table table-hover table-bordered table-dark">
	  	
	   <% while(rs.next())
		  {
			 b=true;
			 
		  	  s1=rs.getString("Subject_Code");
              s2=rs.getString("Subject_Name");
			s3=rs.getString("Total_Unit");
			s4=rs.getString("Prerequist");%>
			<tbody>
				<tr>
				  <th scope="row">--></th>
				  <td>Subject Name</td>
				  <td><%out.println(s2);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Subject Code</td>
				  <td><%out.println(s1);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Total Units</td>
				  <td><%out.println(s3);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Prerequist</td>
				  <td><%out.println(s4);%></td>
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
<div class="form-group" style="padding-left: 80px;">
<a class="btn btn-warning ml-5" href="stdunitsearchp.jsp" role="button">Units</a>
</div>
     </body>
	 </html>