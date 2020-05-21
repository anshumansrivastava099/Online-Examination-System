<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
        
String qc=(String)session.getAttribute("Question_Code");

 String s1=request.getParameter("Question_Name");

 String s2=request.getParameter("Option_A");
 String s3=request.getParameter("Option_B");
 String s4=request.getParameter("Option_C");
 String s5=request.getParameter("Option_D");
 String s6=request.getParameter("Answer");
 

if(true){
 b=true;		 
   
    stmt.executeUpdate("UPDATE erp.insert_question_2 SET Question_Name='"+s1+"',Option_A='"+s2+"',Option_B='"+s3+"',Option_C='"+s4+"',Option_D='"+s5+"',Answer='"+s6+"' WHERE Question_Code='"+qc+"'");
           rs = stmt.executeQuery("SELECT * FROM insert_question_2");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/questiondisplay.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   