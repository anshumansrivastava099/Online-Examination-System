<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String cc = request.getParameter("Course_Code");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
        
String s1=(String)session.getAttribute("Course_Code");


if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM course WHERE Course_Code='"+cc+"'");
           rs = stmt.executeQuery("SELECT * FROM course");
           b=true;	
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/coursesearch.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   