<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Students List</title>
<%@ include file="home2.jsp"%>

</head>
<body>
<%
String qc=(String)session.getAttribute("Quiz_Code");
String bc[]=request.getParameterValues("Batch_Code");


%>
 <form action="http://localhost:8080/examples/studentallotquizinsert.jsp" method="GET">	
<%

String s1=" ";
String s2=" ";
String s3=" ";
String s4=" ";
String s5=" ";
String s6=" "; 

int j;
int sno=0;

%>

<div class="container" style="padding-top: 120px;">
	<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
		Students List For Alloting
		</div>
	<table class="table table-hover table-bordered table-dark">
		<thead>
			<tr>

				<th scope="col" class="text-center">Serial No.</th>
				<th scope="col" class="text-center">Select</th>
				<th scope="col" class="text-center">Student Id</th>
				<th scope="col" class="text-center">First Name</th>
				<th scope="col" class="text-center">Middle Name</th>
				<th scope="col" class="text-center">Last Name</th>
				<th scope="col" class="text-center">Email Id</th>
				<th scope="col" class="text-center">Mobile Number</th>
				


			</tr>
		</thead>
		<tbody>
			<%

			for(j=0;j<bc.length;j++)
			{
			
try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
			Statement stmt = conn.createStatement();
			ResultSet rs;

		 rs = stmt.executeQuery("SELECT * FROM batch_student,student WHERE Batch_Code='"+bc[j]+"' AND batch_student.Id=student.Id ");
			
	   	   while(rs.next())
		{
			
			sno=sno+1;
	
        s1=rs.getString("Id");
		
	
		   s2=rs.getString("FirstName");
		    
	
        s3=rs.getString("MiddleName");
		
	
		   s4=rs.getString("LastName");
		    s5=rs.getString("Email");
			 s6=rs.getString("PhoneNO");%>
			
				<tr>
			 <td class="text-center"><%out.println(sno);%></td>
			 <td class="text-center">
			 <div class="form-group form-check">
				<input type="checkbox" class="form-check-input" id="exampleCheck1" name='Id' value="<%=s1%>">
				<label class="form-check-label" for="exampleCheck1"></label>
			  </div></td>
	
			 <td class="text-center"><%out.println(s1);%></td>
			 <td class="text-center"><%out.println(s2);%></td>
			 <td class="text-center"><%out.println(s3);%></td>
			 <td class="text-center"><%out.println(s4);%></td>
			 <td class="text-center"><%out.println(s5);%></td>
			 <td class="text-center"><%out.println(s6);%></td>
			 
		
			
			</tr>
	
	<% 
	}
	
 %>


 <% conn.close();

}
catch (Exception e) {
	out.println("Got an exception! ");
	out.println(e);
   }

}%>
</tbody>
</table>
<button type="submit" class="btn btn-warning">Allot Quiz</button>

	 </form>

</div>
  </body>
	 </html>
			
			
		  
	
	
		  
	
	