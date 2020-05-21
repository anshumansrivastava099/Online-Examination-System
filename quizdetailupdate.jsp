<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
        
String qc=(String)session.getAttribute("Quiz_Code");

 String s1=request.getParameter("Quiz_Name");
 String s2=request.getParameter("Start_Date");

 String s3=request.getParameter("Total_Marks");
 String s4=request.getParameter("Total_Time");
 String s5=request.getParameter("Total_Question");
 

if(true){
 b=true;		 
   
    stmt.executeUpdate("UPDATE erp.quiz_detail_2 SET Quiz_Name='"+s1+"',Start_Date='"+s2+"',Total_Marks='"+s3+"',Total_Time='"+s4+"',Total_Question='"+s5+"' WHERE Quiz_Code='"+qc+"'");
           rs = stmt.executeQuery("SELECT * FROM quiz_detail_2");
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
   