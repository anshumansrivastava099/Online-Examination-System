
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Date Entry For Quiz</title>
<%@ include file="home2.jsp" %>

</head>
<body>
<%

String qn=request.getParameter("Quiz_Name");
String qc=request.getParameter("Quiz_Code");
session.setAttribute("Quiz_Name",qn);
session.setAttribute("Quiz_Code",qc);
String sn=(String)session.getAttribute("Subject_Name");
String sc=(String)session.getAttribute("Subject_Code");%>
<div class="container" style="margin-top: 120px;">
  <div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
    Date and Course For Quiz
    </div>
  <div class="d-inline p-2 bg-primary text-white"><%out.println(sn);%></div>
<div class="d-inline p-2 bg-dark text-white"><%out.println(sc);%></div>
---->

<div class="d-inline p-2 bg-primary text-white"><%out.println(qn);%></div>
<div class="d-inline p-2 bg-dark text-white"><%out.println(qc);%></div>


	
  <form action="http://localhost:8080/examples/dateentryquizallotinsert.jsp" method="GET">
      <div class="form-group" style="margin-top: 20px;">
        <label for="quizstartdate">Quiz Start Date:-</label>
        <input type="date" class="form-control" id="Quiz_Start_Date" name="Quiz_Start_Date" placeholder="Enter start date of quiz">
      </div>
      <div class="form-group">
          <label for="quizenddate">Quiz End Date :-</label>
          <input type="date" class="form-control" id="Quiz_End_Date" name="Quiz_End_Date" placeholder="Enter end date of quiz">
        </div>
        <br><br>
       

<%
String cn="";
String cc="";
	

	
	

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;





 rs = stmt.executeQuery("SELECT * FROM course ");%>
 <div class="d-inline p-2 bg-primary text-white" style="margin-top: 100px;">List of Course</div>
   <table class="table table-hover table-bordered table-dark" style="margin-top: 20px;">
    <thead>
      <tr>
        <th scope="col">Select</th>
        <th scope="col">Course Name</th>
        
      </tr>
    </thead>
	 
	 <% while(rs.next())
		{
	
        cn=rs.getString("Course_Name");
	      cc=rs.getString("Course_Code");%>
		  
        <tbody>
          <tr>
            <td> <% out.println("<input type='checkbox' name='Course_Code' value='"+cc+"'>");%> </td>
      
     <td><% out.println(cn);%></td>
     
       </tr>
       </tbody>
       <%		 
   }%>
		  
  </table>
  <button type="submit" class="btn btn-warning">Search Batch</button>
 
   <%	out.println("</form>");
      
			
		
		
            conn.close();
        
        } catch (Exception e) {

            System.out.println("Got an exception! ");
            System.out.println(e);
        }

	


%>	


      </div>

     </body>
	 </html	>