<HTML>
<%@ page session="false"%>
<HEAD>
<center><TITLE>Student login </TITLE><center>
<link rel="stylesheet" href="style1.css" type="text/css">
</HEAD>
<BODY>
<ul>
    <li><a>Home</a>
	</li>
    <li><a>Login</a>
       <ul>
          <li><a><a href="studentloginpage.jsp">Student Login</a>
		  
		  </a></li>
	  <li><a><a href="teacherloginpage.jsp">Teacher Login</a></a></li>
	  <li><a><a href="adminlogin.html">Admin Login</a></a></li>
       </ul>
       </li>


<h1>STUDENT LOGIN</h1>
<div class="aa">
<h2>Login</h2>
<form action="http://localhost:8080/examples/studentlogin.jsp" method="GET">
<input type="text" name="Id" id="name" placeholder="Please Enter Username..."><br><br>
<input type="password" name="Password" id="name" placeholder="Please Enter Password..."><br><br>
<input type="submit" value="Login" id="sub">
</form>

</div>
