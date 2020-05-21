<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>

<head>
	<title> Topic View</title>
	<%@ include file="home2.jsp" %>

</head>

<body>
	

	<%

 String uc=(String)session.getAttribute("Unit_Code");
 String un=(String)session.getAttribute("Unit_Name");

 String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
  String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");
 



	String tn="";
	String tc="";
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM topic WHERE Unit_Code='"+uc+"' ");%>

	<div class="container" style="padding-top: 100px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Topic List
			 </div>
		<table class="table table-hover table-bordered table-dark">
			<thead>
				<tr>

					<th scope="col" class="text-center">Topic Name</th>
					<th scope="col" class="text-center">Topic Code</th>
					<th scope="col" class="text-center">Select Option</th>
					<th scope="col" class="text-center">Edit Option</th>
					<th scope="col" class="text-center">Delete Option</th>

				</tr>
			</thead>

         <% while(rs.next())
		{
	
        tn=rs.getString("Topic_Name");
		
	
		   tc=rs.getString("Topic_Code");%>

			<tbody>
				<tr>

					<td class="text-center"><%out.println(tn);%></td>
					<td class="text-center"><%out.println(tc);%></td>
					<td class="text-center">
						<div class="form-group">
							<%	out.println("<a class=\"btn btn-success\" href=\"topicsearch2.jsp?Topic_Code="+tc+"\" role=\"button\">");
			  out.println("Select");
				  out.println("</a>");
				   out.println("</td>");%>
						</div>
						
					<td class="text-center">
						<div class="form-group">
							<%	out.println("<a class=\"btn btn-success\" href=\"topicupdatepage.jsp?Topic_Code="+tc+"\" role=\"button\">");
			  out.println("Update");
				  out.println("</a>");
				   out.println("</td>");%>
						</div>
						<td class="text-center">
							<div class="form-group">
								<%	out.println("<a class=\"btn btn-success\" href=\"topicdelete.jsp?Topic_Code="+tc+"\" role=\"button\">");
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



	<%   
	conn.close();
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
		<form action="http://localhost:8080/examples/topicentry.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
				<div class="form-group">
					<label for="topicname">Topic Name :-</label>
					<input type="text" class="form-control" id="Topic_Name" name="Topic_Name" placeholder="Enter name of topic">
				  </div>
				  <div class="form-group">
					<label for="topiccode">Topic Code :-</label>
					<input type="text" class="form-control" id="Topic_Code" name="Topic_Code" placeholder="Enter code of topic">
				  </div>
				  <div class="form-group">
					<label for="abouttopic">About Topic :-</label>
					<input type="text" class="form-control" id="About_Topic" name="About_Topic" placeholder="Enter about topics ">
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