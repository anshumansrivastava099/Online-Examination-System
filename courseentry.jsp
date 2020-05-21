<html>
<body>
<%@ page import="java.sql.*"%>
<%
boolean b= false;


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;

String s1=request.getParameter("Course_Code");
String s2=request.getParameter("Course_Name");
String s3= request.getParameter("Course_Desc");
String s4= request.getParameter("Start_Date");
String s5=request.getParameter("End_Date");
String s6=request.getParameter("Scope");

if(true){
b=true;

 stmt.executeUpdate("INSERT into course values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
      rs = stmt.executeQuery("SELECT * FROM course");
   
            
}
            conn.close();
        } catch (Exception e) {
          b=false;
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
		if(b){
RequestDispatcher dispatcher=request.getRequestDispatcher("/coursesearch.jsp");
	dispatcher.forward(request,response);
	}

	
%>

	