<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Topic Detail</title>
<%@ include file="studenthomepage2.jsp" %>


</head>
<body>
<%

 String sa=request.getParameter("Topic_Code");
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
           
   
		rs = stmt.executeQuery("SELECT * FROM topic WHERE Topic_Code='"+sa+"' ");%>
		<div class="container" style="margin-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Topic Detail
			  </div>
			<table class="table table-hover  table-bordered table-dark">
		
	  	
	    <%while(rs.next())
		  {
			 b=true;
			 
		  	  s1=rs.getString("Topic_Code");
              
			   s2=rs.getString("Topic_Name");
			   
			   s3=rs.getString("About_Topic");%>
			   <tbody>
				<tr>
				  <th scope="row">--></th>
				  <td>Topic Name</td>
				  <td><%out.println(s2);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>Topic Code</td>
				  <td><%out.println(s1);%></td>
			  </tr>
			  <tr>
				  <th scope="row">--></th>
				  <td>About Topic</td>
				  <td><%out.println(s3);%></td>
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



     </body>
	 </html>