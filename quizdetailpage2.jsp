<%@ page session="false"%>

<html>
<head>
<title> Quiz Detail </title>
<%@ include file="home2.jsp"%>
</head>
<body>

<%
  
String cn=request.getParameter("Course_Name");
String cc=request.getParameter("Course_Code");
session.setAttribute("Course_Name",cn);
session.setAttribute("Course_Code",cc);

%>
 
    <div class="container" style="margin-top: 120px;">
    <form action="http://localhost:8080/examples/quizdetail2insert.jsp" method="GET">
        <div class="form-group">
            <label for="coursename">Course Name :-</label>
            <%out.println(cn);%>
          </div>
        
          <div class="form-group">
            <label for="quizname">Quiz Name :-</label>
            <input type="text" class="form-control" id="Quiz_Name" name="Quiz_Name" placeholder="Enter name of quiz">
          </div>
          <div class="form-group">
            <label for="quizcode">Quiz Code :-</label>
            <input type="text" class="form-control" id="Quiz_Code" name="Quiz_Code" placeholder="Enter code of quiz" >
          </div>
          <div class="form-group">
            <label for="creationdate">Quiz Creation Date :-</label>
            <input type="date" class="form-control" id="Start_Date" name="Start_Date" placeholder="Enter quiz creation date">
          </div>
          <div class="form-group">
            <label for="timeduration">Time Marks :-</label>
            <input type="number" class="form-control" id="Total_Marks" name="Total_Marks" placeholder="Enter total Marks of quiz">
          </div>
          <div class="form-group">
            <label for="timeduration">Time Duration :-</label>
            <input type="text" class="form-control" id="Total_Time" name="Total_Time" placeholder="Enter total duration of quiz">
          </div>
          <div class="form-group">
            <label for="totalquestion">Total Question :-</label>
            <input type="number" class="form-control" id="Total_Question" name="Total_Question" placeholder="Enter total question of quiz">
          </div>
          <button type="submit" class="btn btn-primary">Create Quiz</button>
          <button type="reset" class="btn btn-primary" style="margin-left: 10px;">Reset</button>
      </form>
    </div>



</body>
</html>