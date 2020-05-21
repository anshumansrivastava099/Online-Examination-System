<%@ import="java.sql.*"%>
<%

	  String s1=req.getParameter("t1");
	  %>
	
<html>
<body>
<center>
<h1>Select the mobile</h1>
<h2>
<form  action=\"http://localhost:8080/examples/mobilehjjsp.jsp\" method=\"GET\">
<input type=\"radio\" name=\"a1\" value=\"MI\" >MI
<br>
<input type=\"radio\" name=\"a1\" value=\"APPO\">APPO
<br>
<input type=\"radio\" name=\"a1\" value=\"VIVO\">
<br>
The TV which you select is:<input type=\"text\" name=\"t1\" value='"<%=s1%>"'>
<br>
<input type=\"submit\" value=\"ok\">
</form>
</h2>
</body>
</html>
 <%  }
}%>
   