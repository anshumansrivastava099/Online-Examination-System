
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Unit View</title>
<%@ include file="home2.jsp" %>

</head>
<body>


<%

String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");

String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");

	String un="";
	String uc="";
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM unit WHERE Subject_Code='"+sc+"' ");%>
	   <div class="container" style="padding-top: 100px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
		 Unit List
		  </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">Unit Name</th>
					<th scope="col" class="text-center">Unit Code</th>
					<th scope="col" class="text-center">Select Option Code</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>


				</tr>
			</thead>
	   	  
	   
	 
	   	   
	<%  while(rs.next())
		{
	
        un=rs.getString("Unit_Name");
		uc=rs.getString("Unit_Code");%>
		<tbody>
			<tr>

				<td class="text-center"><%out.println(un);%></td>
				<td class="text-center"><%out.println(uc);%></td>
				<td class="text-center">
			     <div class="form-group">
					<%	out.println("<a class=\"btn btn-success\" href=\"unitsearch2.jsp?Unit_Code="+uc+"\" role=\"button\">");
				  out.println("Select");
					  out.println("</a>");
					   out.println("</td>");%>
					</div>
				</td>
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-success\" href=\"unitupdatepage.jsp?Unit_Code="+uc+"\" role=\"button\">");
			  out.println("Update");
				  out.println("</a>");
				   out.println("</td>");%>
				</div>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-success\" href=\"unitdelete.jsp?Unit_Code="+uc+"\" role=\"button\">");
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

<%     conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>




<div class="form-group" style="padding-left: 125px;">
	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#subjectentrypage">
		Add New Unit
	  </button>
</div>

<!-- ######################################################################################################################## -->

<!-- Add New Course -->
<div class="modal fade" id="subjectentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Add New Unit</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/unitentry.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
				<div class="form-group">
					<label for="unitname">Unit Name :-</label>
					<input type="text" class="form-control" id="Unit_Name" name="Unit_Name" placeholder="Enter name of unit">
				  </div>
				  <div class="form-group">
					<label for="unitcode">Unit Code :-</label>
					<input type="text" class="form-control" id="Unit_Code" name="Unit_Code" placeholder="Enter code of unit">
				  </div>
				  <div class="form-group">
					<label for="totaltopics">Total Topic :-</label>
					<input type="number" class="form-control" id="Total_Topic" name="Total_Topic" placeholder="Enter total topics in the unit">
				  </div>
				  <div class="form-group">
					<label for="totaltopics">Total Lectures Required :-</label>
					<input type="number" class="form-control" id="Total_Lectures" name="Total_Lectures" placeholder="Enter total lecture required in the unit">
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