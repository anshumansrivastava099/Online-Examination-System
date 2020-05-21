
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Subject View</title>
<%@ include file="home2.jsp" %>

</head>
<body>
<%



	String sn="";
	String sc="";
	int sno=0;
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM subject");%>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Subject List For Alloting
		  </div>
		  
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Subject Name</th>
					<th scope="col" class="text-center">Subject Code</th>
					<th scope="col" class="text-center">Select Option</th>
					
				</tr>
			</thead>
	   	  
	   	  
	   
	  
	   	   
	 <% while(rs.next())
		{
			sno=sno+1;
	
        sn=rs.getString("subject_Name");
		sc=rs.getString("Subject_Code");%>
		<tbody>
			<tr>

				<td class="text-center"><%out.println(sno);%></td>
				<td class="text-center"><%out.println(sn);%></td>
				<td class="text-center"><%out.println(sc);%></td>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-warning\" href=\"quizviewallot.jsp?Subject_Code="+sc+"&&Subject_Name="+sn+"\" role=\"button\">");
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
	 </html	>