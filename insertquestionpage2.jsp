<%@ page session="false"%>

<%@include file="home2.jsp"%>

<html>
<body>


<title>Insert Question</title><br><br>
<h1>Enter Question Code:-</h1>
<%
String tc[]=request.getParameterValues("Topic_Code");


out.println("<form action='http://localhost:8080/examples/insertquestion2.jsp' method='GET'>");


out.println("Topic Code :-"); 

for(int i=0;i<tc.length;i++)
{

out.println("<input type=text name='Topic_Code' id='name' value='"+tc[i]+"'>");

}%>
<br><br>
<%
out.println("Question Code :-");

out.println("<input type='text' name='Question_Code' id='name' placeholder='Enter the Question code'>");
%><br><br>
<input type='Submit' value='Next'>
</form>

</body>
</html>