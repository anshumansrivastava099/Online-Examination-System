<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String qc = request.getParameter("Quiz_Code");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
    


if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM quiz_detail_2 WHERE Quiz_Code='"+qc+"'");
           rs = stmt.executeQuery("SELECT * FROM quiz_detai_2");
           b=true;	
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/quizviewpage2.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   