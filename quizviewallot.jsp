<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title>Quiz View</title>
<%@ include file="home2.jsp"%>

</head>
<body>

<%

String sn=request.getParameter("Subject_Name");
String sc=request.getParameter("Subject_Code");
session.setAttribute("Subject_Name",sn);
session.setAttribute("Subject_Code",sc);



	String qn="";
	String qc="";
	int sno=0;
	


		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
	   rs = stmt.executeQuery("SELECT * FROM quiz_detail_2,quiz_detail_3 WHERE Subject_Code='"+sc+"' && quiz_detail_3.Quiz_Code=quiz_detail_2.Quiz_Code ");%>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Quiz View For Alloting
		  </div>
		<div class="d-inline p-2 bg-primary text-white"><%out.println(sn);%></div>
        <div class="d-inline p-2 bg-dark text-white"><%out.println(sc);%></div>
		<table class="table table-hover table-bordered table-dark" style="margin-top: 20px;">
			<thead>
				<tr>

					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Quiz Name</th>
					<th scope="col" class="text-center">Quiz Code</th>
					<th scope="col" class="text-center">Select Option</th>
					
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
				<td class="text-center"><%out.println(qc);%></td>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-warning\" href=\"dateentryquizallot.jsp?Quiz_Code="+qc+"&&Quiz_Name="+qn+"\" role=\"button\">");
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
	

         
          <%  conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>




     </body>
	 </html>