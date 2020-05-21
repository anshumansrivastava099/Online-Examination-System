<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Quiz</title>
<%@ include file="studenthomepage2.jsp"%>

</head>
<body>

<div class="container" style="margin-top: 200px; margin-left: 500px;">
    <div class="card" style="width: 20rem;">
    
        <div class="card-body">
          <h5 class="card-title">Error!</h5>
          <p class="card-text">You have already given this test.You are not allowed to given it again</p>
          <a href="studenthomepage2.jsp" class="btn btn-primary">Go to Home Page</a>
        </div>
      </div>
</div>






</body>
</html>