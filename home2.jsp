<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<%
HttpSession session= request.getSession(true);
String id=(String)session.getAttribute("Id");
String name=(String)session.getAttribute("name");

String fname="";
String mname="";
String lname="";

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
	   rs = stmt.executeQuery("SELECT * FROM teacher WHERE id='"+id+"'"); 
	   
	 
	 while(rs.next()){

		fname=rs.getString("FirstName");
		mname=rs.getString("MiddleName");
		lname=rs.getString("LastName");
	 }

	 conn.close();
		 }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
	 
	   %>


<!doctype html>
<html lang="en">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
		integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

	<title>Welcome <%out.println(fname);%> </title>
	<style>


		body {
			background-image: url("images/study.jpg");
		}
		.no-background {
			background-image: url("images/blank.jpg");
		}
		</style>
	
	
</head>

<body >
	
	<nav class="navbar navbar-expand-sm navbar-dark bg-dark fixed-top">
		<a href="index.html" class="navbar-brand"><% out.println(fname);
													 out.println(mname);
												     out.println(lname); %></a>

		<span class="navbar-text"></span>
		<button type="button" class="navbar-toggler" data-toggler="collaspe" data-target="#">
			<span class="navbar-toggler-icon"></span>

		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<!-- Example single danger button -->
			<a class="btn btn-primary" style="margin: 12px;" href="home2.jsp" role="button">HOME</a>

			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					PROFILE
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="teacherprofile.jsp">View Profile</a>
					<a class="dropdown-item" href="teacherregpage.jsp">Complete Registration</a>
					
				</div>
			</div>
			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					BATCH
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="coursebatchview.jsp">Batch</a>
				
				
				</div>
			</div>
			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					COURSE
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="coursesearch.jsp">Course</a>
					
				</div>
			</div>
			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					QUIZ
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="quizviewpage2.jsp">View Quiz</a>
					<a class="dropdown-item" href="coursesearchquiz.jsp">New Quiz</a>
					<a class="dropdown-item" href="subjectsearchallotquiz.jsp">Allot Quiz</a>
				
					</div>
			</div>
			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">
					QUESTIONS
				</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="questiondisplay.jsp">View Question</a>
					<a class="dropdown-item" href="questionentrycourse.jsp">New Question</a>
					</div>
			</div>
			<div class="btn-group" style="margin: 12px;">
				<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
					CHANGE PASSWORD
				  </button>
			</div>
			<a class="btn btn-primary" style="margin: 12px;" href="index.html" role="button">LOGOUT</a>
	</nav>




	<!-- Button trigger modal -->

  
  <!-- Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Change Password</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/tchangepassword.jsp" method="GET">
		<div class="modal-body">
			<div class="form-group">
				<label for="exampleInputPassword1">Old Password:-</label>
				<input type="password" class="form-control" name="Password" id="exampleInputPassword1" placeholder="Old Password">
			  </div>
			  <div class="form-group">
				<label for="exampleInputPassword1">New Password:-</label>
				<input type="password" class="form-control" name="newpassword" id="exampleInputPassword1" placeholder="New Password">
			  </div>
			  <div class="form-group">
				<label for="exampleInputPassword1">Confirm Password:-</label>
				<input type="password" class="form-control" name="cnfpassword" id="exampleInputPassword1" placeholder="Confirm Password">
			  </div>
				
				
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Change Password</button>
			</div>
		</form>
	  </div>
	</div>
  </div>

	<!-- <div style='position:absolute;z-index:0;left:0;top:0;width:100%;height:100%'>
		<img src='study.jpg' style='width:100%;height:100%' alt='[]' />
	</div>
	 -->
   
    <!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
</body>

</html>