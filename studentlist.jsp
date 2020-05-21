
<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Students</title>
<%@ include file="home2.jsp"%>

</head>
<body>


<%

String bc=(String)session.getAttribute("Batch_Code");

boolean b=false;

String s1=" ";
String s2=" ";
String s3=" ";
String s4=" ";
String s5=" ";
String s6=" "; 
try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           %>
   
	<%	rs = stmt.executeQuery("SELECT * FROM student,batch_student WHERE student.id=batch_student.id && batch_student.Batch_Code='"+bc+"' ");%>
		<div class="container" style="padding-top: 120px;">
			<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
				Student List
			  </div>
			<table class="table table-hover table-bordered table-dark">
				<thead>
					<tr>
	
						<th scope="col" class="text-center">Serial No.</th>
						<th scope="col" class="text-center" >Student Id</th>
						<th scope="col" class="text-center">First Name</th>
						<th scope="col" class="text-center">Middle Name</th>
						<th scope="col" class="text-center">Last Name</th>
						<th scope="col" class="text-center">Email Id</th>
						<th scope="col" class="text-center">Mobile Number</th>
						<th scope="col" class="text-center">Delete</th>
	
	
					</tr>
				</thead>
	
				<% 
	
 
			 int i=1;
	   	   while(rs.next())
		{
			
			
	
        s1=rs.getString("Id");
		
	
		   s2=rs.getString("FirstName");
		    
	
        s3=rs.getString("MiddleName");
		
	
		   s4=rs.getString("LastName");
		    s5=rs.getString("Email");
			 s6=rs.getString("PhoneNO");%>
			 <tbody>
				<tr>
			 <td class="text-center"><%out.println(i);%></td>
			 <td class="text-center"><%out.println(s1);%></td>
			 <td class="text-center"><%out.println(s2);%></td>
			 <td class="text-center"><%out.println(s3);%></td>
			 <td class="text-center"><%out.println(s4);%></td>
			 <td class="text-center"><%out.println(s5);%></td>
			 <td class="text-center"><%out.println(s6);%></td>
			
					
			
					<td>
						<div class="form-group text-center">
							<%	out.println("<a class=\"btn btn-warning\" href=\"batchstudentdelete.jsp?Id="+s1+"\"   role=\"button\" >");
						  out.println("Remove");
							  out.println("</a>");
							   out.println("</td>");%>
							</div>


			  
			  <% i++;%>
			
		</tr>
</tbody>
<% 
}%>
</table>
</div>

<div class="form-group" style="padding-left: 125px;">
	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#courseentrypage">
		Add New Student to this Batch
	  </button>
</div>




<!-- ######################################################################################################################## -->
<!-- Add New Course -->
  <div class="modal fade" id="courseentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Select the Students from List</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/batchstudentinsert.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
<%
				String idb="";
				String fnameb="";
				String mnameb="";
				String lnameb="";
         rs = stmt.executeQuery("SELECT * FROM student WHERE ID NOT IN (SELECT ID FROM batch_student) ");

          while(rs.next()){

				idb=rs.getString("Id");
				fnameb=rs.getString("FirstName");
				mnameb=rs.getString("MiddleName");
				lnameb=rs.getString("LastName");

			 %>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1" name="Id" value="<%=idb%>">
					<label class="form-check-label" for="exampleCheck1"><% out.println(fnameb);
																			out.println(mnameb);
																		out.println(lnameb);
																		out.println("[");
																		out.println(idb);
																		out.println("]");%></label>
				  </div>
				

<%		
}       %>
				</div>
		         </div>
	
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="submit" class="btn btn-primary">Add to Batch</button>
		</form>
		</div>
	  </div>
	</div>
  </div>



<%






 conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>



  </body>
	 </html>
			
			
		  
	
	
		  
	
	