
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Subject View</title>
<%@ include file="home2.jsp" %>

</head>
<body>

<%

String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");



	String sn="";
	String sc="";
	int i=0;
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM subject WHERE Course_Code='"+cc+"' "); %>
	   <div class="container" style="padding-top: 100px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Subject List
		  </div>
		
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Subject Name</th>
					<th scope="col" class="text-center">Subject Code</th>
					<th scope="col" class="text-center">Select Option</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>

				</tr>
			</thead>
	   	  
	   
	 
	   	   
	 <% while(rs.next())
		{
			i =i+1;
        sn=rs.getString("subject_Name");
		
	
		   sc=rs.getString("Subject_Code");%>
		  
	
		   <tbody>
			<tr>

				<td class="text-center"><%out.println(i);%></td>
				<td class="text-center"><%out.println(sn);%></td>
				<td><% out.println(sc);%></td>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-success\" href=\"subjectsearch2.jsp?Subject_Code="+sc+"\" role=\"button\">");
					  out.println("Select");
						  out.println("</a>");
						   out.println("</td>");%>
				  </div>
				
		 
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-success\" href=\"subjectupdatepage.jsp?Subject_Code="+sc+"\" role=\"button\">");
			  out.println("Update");
				  out.println("</a>");
				   out.println("</td>");%>
				</div>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-success\" href=\"subjectdelete.jsp?Subject_Code="+sc+"\" role=\"button\">");
					  out.println("Delete");
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
<div class="form-group" style="padding-left: 125px;">
	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#subjectentrypage">
		Add New Subject
	  </button>
</div>

<!-- ######################################################################################################################## -->

<!-- Add New Course -->
<div class="modal fade" id="subjectentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Add New Subject</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/subjectentry.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
					<div class="form-group">
					  <label for="coursename">Subject Name :-</label>
					  <input type="text" class="form-control" id="Subjet_Name" name="Subject_Name" placeholder="Enter name of subject">
					</div>
					<div class="form-group">
						<label for="coursecode">Subject Code :-</label>
						<input type="text" class="form-control" id="Subject_Code" name="Subject_Code" placeholder="Enter code of subject">					  
					 </div>
					  <div class="form-group">
						<label for="coursedescription">Total Units :-</label>
						<input type="text" class="form-control" id="Total_Unit" name="Total_Unit" placeholder="Enter total units in the subject">					 
					 </div>
					  <div class="form-group">
						<label for="startdate">Prerequist :-</label>
						<input type="text" class="form-control" id="Prerequist" name="Prerequist" placeholder="Enter prerequist of subject">
					  </div>
	              </div>
		         </div>
	
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="submit" class="btn btn-primary">Insert</button>
		</form>
		</div>
	  </div>
	</div>
  </div>

 

   </body>
	 </html	>