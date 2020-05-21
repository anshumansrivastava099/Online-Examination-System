<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String ids = request.getParameter("Id");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
        



if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM batch_student WHERE Id='"+ids+"'");
           rs = stmt.executeQuery("SELECT * FROM batch_student");
           b=true;	
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/studentlist.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   