<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Quiz Instruction</title>


<%@ include file="studenthomepage2.jsp"%>

 </head>
<body>
<%

String ids=(String)session.getAttribute("Id");
String qc=request.getParameter("Quiz_Code");
 
session.setAttribute("Quiz_Code",qc);

%>
<div class="container" style="margin-top: 100px;">
<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
  Please Read The Instruction Carefully
</div>
<div class="alert alert-secondary" role="alert">
  1. Don't unckeck the checkbox in the question
</div>
<div class="alert alert-success" role="alert">
 2. If in case it is uncheck please check it , otherwise your answer will not considered
</div>
<div class="alert alert-danger" role="alert">
 3. There is negative marking in the question.
</div>
<div class="alert alert-warning" role="alert">
 4. After completing the test submit your test carefully
</div>
<div class="alert alert-info" role="alert">
 5. Please do not popup the window tab.
</div>
<div class="alert alert-light" role="alert">
 6. Please read the question carefully and then answer.
</div>
<div class="alert alert-dark" role="alert">
  All the best !
</div>
  <div class="form-group">
    <%	out.println("<a class=\"btn btn-primary\" href=\"quizdisplay.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
  out.println("Start");
      out.println("</a>");%>
    </div>



</div>
</body>
</html>

