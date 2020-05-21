<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Quiz</title>
<%@ include file="studenthomepage2.jsp"%>

</head>
<body>

	<div class="container" style="margin-top: 150px;"> 
<%

 
 
String sa =(String)session.getAttribute("Id");
String qc =(String)session.getAttribute("Quiz_Code");
boolean b2=true;
boolean b3=false;
boolean b4=true;


try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
						  String s1=" ";
String s2=" ";
String s3=" ";
String s4=" ";
String s5=" ";
String s6=" ";
String s7=" ";
          
			  ResultSet rs1;

			  int i=0;
			
			 rs1 = stmt.executeQuery("SELECT * FROM insert_question_2,quiz_detail WHERE quiz_detail.Quiz_Code='"+qc+"' && insert_question_2.Question_Code=quiz_detail.Question_Code");
			 
	
	
	  	out.println("<form action='http://localhost:8080/examples/result.jsp' method='GET'>");
			
	    while(rs1.next())
	    {
			
			i++;	
		
s1=rs1.getString("Question_Name");
s2=rs1.getString("Option_A");
s3=rs1.getString("Option_B");
s4=rs1.getString("Option_C");
s5=rs1.getString("Option_D");
s6=rs1.getString("Answer");
s7=rs1.getString("Question_Code");%>
	
<div class="card" style="width: 30rem;">
	<div class="card-header">
		<div class="d-inline p-2 bg-dark text-white"><%out.print("Ques No. "+i +":-" );%></div>
	</div>
<div class="card-body">

	<div class="custom-control custom-checkbox">
		<% out.println("<input type='checkbox' name='Question_Code' value='"+s7+"' class='custom-control-input' id='defaultChecked2' checked>");%>
		<label class="custom-control-label" for="defaultChecked2"></label>
	  
		
<h5 class="card-title"><%out.println(s1);%>?</h5>
<%



out.println("<input type=Radio name='"+i+"' value=a >");%>
<p class="card-text">a)<%out.println(" "+s2);%></p>


<%out.println("<input type=Radio name='"+i+"' value=b >"); %>
<p class="card-text">b)<%out.println(" "+s3);%></p>
			  

<% out.println("<input type=Radio name='"+i+"' value=c >"); %>
<p class="card-text">c)<%out.println(" "+s4);%></p>
			  


<% out.println("<input type=Radio name='"+i+"' value=d >"); %>
<p class="card-text">d)<%out.println(" "+s5);%></p>
			  

</div>
</div>
</div>
<br>

<%}
             out.print("<input type=hidden name=inputName value='"+i+"'>");
			 out.print("<input type=submit value=Submit>");

			 out.print(" </form>");
			

	 conn.close();
		} 
		catch (Exception e) {
			
            out.println("Got an exception! ");
            out.println(e);
}
	 
%>
    


</div>
     </body>
	 </html>
	