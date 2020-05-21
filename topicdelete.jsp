<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;


   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
        
String s1= request.getParameter("Topic_Code");


if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM topic WHERE Topic_Code='"+s1+"'");
           rs = stmt.executeQuery("SELECT * FROM topic");
           b=true;	
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
   