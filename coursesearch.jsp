<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<%@ include file="home2.jsp" %>


<html>

<head>
	<title> Course View </title>
	<link rel="stylesheet" href="//cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">


</head>

<body>
	

	<%

	String sn="";
	String sc="";

 
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
	   rs = stmt.executeQuery("SELECT * FROM course  "); %>
	<div class="container" style="padding-top: 130px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Courses List
		  </div>
		  
		<table class="table table-hover table-bordered table-dark "  style="margin-top: 30px;">
			<thead>
				<tr>

					<th scope="col" class="text-center">Course Name</th>
					<th scope="col" class="text-center">Course Code</th>
					<th scope="col" class="text-center">Select Option</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>


				</tr>
			</thead>

			<% 
	 while(rs.next())
		{
			
        sn=rs.getString("Course_Name");
	   sc=rs.getString("Course_Code");  %>


			<tbody>
				<tr>

					<td class="text-center"><%out.println(sn);%></td>
					<td class="text-center"><%out.println(sc);%></td>
					
					<td class="text-center">
						<div class="form-group">
							<%	out.println("<a class=\"btn btn-success\" href=\"coursesearch2.jsp?Course_Code="+sc+"\" role=\"button\">");
						  out.println("Select");
							  out.println("</a>");
							   out.println("</td>");%>
							</div>
					
		     <td class="text-center">
				<div class="form-group">
					<%	out.println("<a class=\"btn btn-success\" href=\"courseentrypage2.jsp?Course_Code="+sc+"\" role=\"button\">");
						out.println("Update");
							out.println("</a>");
							 out.println("</td>");%>
						</div>
					</td>
					<td class="text-center">
						<div class="form-group">
							<%	out.println("<a class=\"btn btn-success\" href=\"coursedelete.jsp?Course_Code="+sc+"\" role=\"button\">");
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

	<% conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>
<div class="form-group" style="padding-left: 125px;">
	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#courseentrypage">
		Add New Course
	  </button>
</div>

<!-- ######################################################################################################################## -->
<!-- Add New Course -->
  <div class="modal fade" id="courseentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Add New Course</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/courseentry.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
					<div class="form-group">
					  <label for="coursename">Course Name :-</label>
					  <input type="text" class="form-control" id="Course_Name" name="Course_Name" placeholder="Enter name of course">
					</div>
					<div class="form-group">
						<label for="coursecode">Course Code :-</label>
						<input type="text" class="form-control" id="Course_Code" name="Course_Code" placeholder="Enter code of course">
					  </div>
					  <div class="form-group">
						<label for="coursedescription">Course Description :-</label>
						<input type="text" class="form-control" id="Course_Desc" name="Course_Desc" placeholder="Enter description of course">
					  </div>
					  <div class="form-group">
						<label for="startdate">Course Start Date :-</label>
						<input type="date" class="form-control" id="Start_Date" name="Start_Date" placeholder="Enter course start date>
					  </div>
					  <div class="form-group">
						<label for="enddate">Course End Date :-</label>
						<input type="date" class="form-control" id="End_Date" name="End_Date" placeholder="Enter course end date">
					  </div>
					  <div class="form-group">
						<label for="coursescope">Course Scope :-</label>
						<input type="text" class="form-control" id="Course_Scope" name="Scope" placeholder="Enter scope of course">
					  </div>
					  </div>
		         </div>
	
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="submit" class="btn btn-primary">Save changes</button>
		</form>
		</div>
	  </div>
	</div>
  </div>

 


</body>

</html>