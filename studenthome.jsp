<html>
<link rel="stylesheet" href="style2.css" type="text/css">
<%@ page session="false"%>
<%
String s=request.getParameter("Id");
HttpSession session=request.getSession(false);

if(session==null)
{
 RequestDispatcher rd=request.getRequestDispatcher("studenthome.jsp");  
        rd.forward(request, response);  
	}
	%>
<ul>
    <li><a>Home</a>
	<ul>
	<li><a><a href="studenthome.html">Go to home</a></a></li>
	</ul>
	</li>
    <li><a>Profile</a>
       <ul>
          <li><a><a href="studentprofile2.jsp">View Profile</a></a></li>
	  <li><a><a href="editprofile.html">Edit Profile</a></a></li>
		   </ul>
       </li>
	   <li><a>Change Password</a>
	   <ul>
	   <li><a><a href="updatepassword.html">Password Change</a></li>
	   </ul>
	   </li>
	   <li><a>Courses</a>
	   <ul>
	   <li><a><a href="viewcourse.html">View Course</a></a>
	   </li>
	   </ul>
	   </li>
	     <li><a>Quiz</a>
	   <ul>
	   <li><a><a href="quiz1.html">Quiz 1</a></a>
	   </li>
	   <li><a><a href="quiz2.html">Quiz 2</a></a>
	   </li>
	   </ul>
	   </li>
	   <li><a>Logout</a>
	   <ul>
	   <li><a><a href="studentlogin.html">Logout</a></a></li>
	   </ul>
	   </li>
	   </ul>



     
	  </html>


