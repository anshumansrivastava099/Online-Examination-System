<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Batch View</title>
<%@ include file="home2.jsp"%>

</head>
<body>


<%



String cc=request.getParameter("Course_Code");
session.setAttribute("Course_Code",cc);
String cn=request.getParameter("Course_Name");
session.setAttribute("Course_Name",cn);





	String bn="";
	String bc="";
	
int sno =0;
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
  
	   rs = stmt.executeQuery("SELECT * FROM batch_detail where Course_Code='"+cc+"' ");
     %>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			<% out.println(cn); %> Batch List
		  </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					
					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Batch Name</th>
					<th scope="col" class="text-center">Batch Code</th>
					<th scope="col" class="text-center">Select Option</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>


				</tr>
			</thead>

	   	 
	   	   
	 <% while(rs.next())
		{
			sno = sno+1;
	
        bn=rs.getString("Batch_Name");
		
	
		   bc=rs.getString("Batch_Code");%>
		   <tbody>
			<tr>

				
				<td class="text-center"><%out.println(sno);%></td>
				<td class="text-center"><%out.println(bn);%></td>
				<td class="text-center"><%out.println(bc);%></td>
				
				
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-success\" href=\"batchdetailview.jsp?Batch_Code="+bc+"&&Course_Code="+cc+"&&Course_Name="+cn+"\" role=\"button\">");
					  out.println("Select");
						  out.println("</a>");
						   out.println("</td>");%>
						</div>
		 <td class="text-center">
			<div class="form-group">
				<%	out.println("<a class=\"btn btn-success\" href=\"batcheditpage.jsp?Batch_Code="+bc+"&&Course_Code="+cc+"&&Course_Name="+cn+"\" role=\"button\">");
			  out.println("Update");
				  out.println("</a>");
				   out.println("</td>");%>
				</div>
				<td class="text-center">
					<div class="form-group">
						<%	out.println("<a class=\"btn btn-success\" href=\"batchdelete.jsp?Batch_Code="+bc+"&&Course_Code="+cc+"&&Course_Name="+cn+"\" role=\"button\">");
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
	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#batchentrypage">
		Add New Batch
	  </button>
</div>

<!-- ######################################################################################################################## -->
<!-- Add New Course -->
  <div class="modal fade" id="batchentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Add New Course</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/batchdetailinsert.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
				<input type="hidden" name="Course_Code" value=<%=cc%> >
				<input type="hidden" name="Course_Name" value=<%=cn%> >
			        <div class="form-group">
					  <label for=batchtname">Batch Name :-</label>
					  <input type="text" class="form-control" id="Batch_Name" name="Batch_Name" placeholder="Enter name of batch">
					</div>
					<div class="form-group">
					  <label for="batchtcode">Batch Code :-</label>
					  <input type="text" class="form-control" id="Batch_Code" name="Batch_Code" placeholder="Enter code of sbatch">
					</div>
					<div class="form-group">
					  <label for="batchstartdate">Batch Start Date :-</label>
					  <input type="date" class="form-control" id="Batch_Start_Date" name="Batch_Start_Date" placeholder="Enter start date of batch">
					</div>
					<div class="form-group">
					  <label for="batchenddate">Batch End Date :-</label>
					  <input type="date" class="form-control" id="Batch_End_Date" name="Batch_End_Date" placeholder="Enter end date of batch">
					</div>
					<div class="form-group">
					  <label for="batchstarttime">Batch Start Time :-</label>
					  <input type="time" class="form-control" id="Batch_Start_Time" name="Batch_Start_Time" placeholder="Enter start time of batch">
					</div>
					<div class="form-group">
					  <label for="batchstartdate">Batch End Time :-</label >
					  <input type="time" class="form-control" id="Batch_End_time" name="Batch_End_time" placeholder="Enter end time of batch">
					  </div>
					<div class="form-group">
					  <label for="totalstudent">Total Students :-</label >
					  <input type="number" class="form-control" id="Total_Student" name="Total_Student" placeholder="Enter total students">
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
	 </html>