<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String cc = request.getParameter("Course_Code");
session.setAttribute("Course_Code",cc);
String cn = request.getParameter("Course_Name");
session.setAttribute("Course_Name",cn);
String bc = request.getParameter("Batch_Code");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
        



if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM batch_detail WHERE Batch_Code='"+bc+"'");
           rs = stmt.executeQuery("SELECT * FROM batch_detail");
           b=true;	
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/batchview.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   