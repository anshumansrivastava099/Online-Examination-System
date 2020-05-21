<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String qc =(String)session.getAttribute("Quiz_Code");

String ques_c = request.getParameter("Question_Code");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
    


if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM quiz_detail WHERE Question_Code='"+ques_c+"' AND Quiz_Code='"+qc+"'");
           rs = stmt.executeQuery("SELECT * FROM quiz_detail");
           b=true;	
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/quizdisplay2.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   