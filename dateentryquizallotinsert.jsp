<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<html>
<head>
<title> Date Entry For Quiz</title>
<%@ include file="home2.jsp" %>

</head>
<body>
<%
boolean b= false;	
String qc=(String)session.getAttribute("Quiz_Code");

String sd=request.getParameter("Quiz_Start_Date");
String ed=request.getParameter("Quiz_End_Date");
String cc[]=request.getParameterValues("Course_Code");

int i;

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
		
            ResultSet rs;
			
			
	
b=true;

 stmt.executeUpdate("INSERT into quiz_detail_4 values('"+qc+"','"+sd+"','"+ed+"')");
 for(i=0;i<=cc.length;i++)
{
out.println("<input type=hidden name=Course_Code value=cc[i]>");

 
 stmt.executeUpdate("INSERT into quiz_detail_5 values('"+qc+"','"+cc[i]+"')");
     
            
            conn.close();
        } 

}


catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }


if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/batchselectquizallot.jsp");
	dispatcher.forward(request,response);
	}


	
%>
</body>
</html>