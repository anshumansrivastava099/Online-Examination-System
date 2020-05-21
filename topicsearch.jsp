<%@ page session="false"%>

<html>
<head>
<title> Processing</title>
<link rel="stylesheet" href="style.css" type="text/css">
</head>
<body>
<h1>Enter Topic Code...</h1>
<div class="aa">
<form action="http://localhost:8080/examples/topicsearch2.jsp" method="GET">
<label> Enter the Code</label><br><br>
<input type="text" name="Topic_Code" id="name" placeholder="Enter the Topic here..."><br>
<input type="submit" value="proceed">
</div>
</form>
</body>
</html>