
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Batch List View</title>
<%@ include file="home2.jsp" %>

</head>
<body><%
	String qc=(String)session.getAttribute("Quiz_Code");



String cc[]=request.getParameterValues("Course_Code");%>
	
<form action="http://localhost:8080/examples/studentlistquiz.jsp" method="GET">
<%
	

	String cn ="";
	String bn="";
	String bc="";
	String bt="";
	
	int i;
	int sno=0;
	%>
	<div class="container" style="margin-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Batch for Quiz Alloting
			</div>
   <table class="table table-hover table-bordered table-dark" style="margin-top: 20px;">
    <thead>
      <tr>
        <th scope="col" class="text-center">S No.</th>
        <th scope="col" class="text-center">Select</th>
		<th scope="col" class="text-center">Batch Name</th>
		<th scope="col" class="text-center">Batch Code</th>
        
      </tr>
	</thead>
	<tbody>
			<%

  for(i=0;i<cc.length;i++)
{	  
try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
       
   
	   rs = stmt.executeQuery("SELECT * FROM batch_detail where Course_Code='"+cc[i]+"' ");%>
	  	 <% while(rs.next())
		{
			sno=sno+1;
			

		
	
		   bn=rs.getString("Batch_Name");
		  
		  bc=rs.getString("Batch_Code");
		  
	
		%>
			
				<tr>
					<td class="text-center"><% out.println(sno);%></td>
				  <td class="text-center"> <% out.println("<input type='checkbox' name='Batch_Code' value='"+bc+"'>");%> </td>
			
		   
		   <td class="text-center"><% out.println(bn);%></td>
		   <td class="text-center"><% out.println(bc);%></td>
		  
		   
		   

		   
			 </tr>
			
			 <%		 
		 }%>
		
	  
			
		
	 
	 
			 
 
          <%  conn.close();
        }

			catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
	
}	


%>
</tbody>	
</table>
<button type="submit" class="btn btn-warning">Select Students</button>
</form>
		</div>
        

	
     </body>
	 </html	>