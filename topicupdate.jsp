<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
        
String uc=(String)session.getAttribute("Unit_Code");
String tc=(String)session.getAttribute("Topic_Code");
String s1=(String)session.getAttribute("Subject_Code");
String cc=(String)session.getAttribute("Course_Code");
 String s2=request.getParameter("Topic_Name");

 String s3=request.getParameter("About_Topic");
 

if(true){
 b=true;		 
   
    stmt.executeUpdate("UPDATE erp.topic SET Topic_Name='"+s2+"',About_Topic='"+s3+"' WHERE Topic_Code='"+tc+"'");
           rs = stmt.executeQuery("SELECT * FROM topic");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/topicsearchp.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   