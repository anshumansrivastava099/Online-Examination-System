<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;

String qc = request.getParameter("Question_Code");
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
                
        



if(true){
 	 
   
    stmt.executeUpdate("DELETE FROM insert_question_2 WHERE Question_Code='"+qc+"'");
           rs = stmt.executeQuery("SELECT * FROM insert_question_2");
           b=true;	
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
   