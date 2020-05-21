<%@ page import="java.sql.*"%>
<%@include file="home2.jsp"%>
<%
boolean b= false;
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
        
String s1=(String)session.getAttribute("Subject_Code");
String cc=(String)session.getAttribute("Course_Code");
 String s2=request.getParameter("Subject_Name");

 String s3=request.getParameter("Total_Unit");
 String s4=request.getParameter("Prerequist");
 

if(true){
 b=true;		 
   
    stmt.executeUpdate("UPDATE erp.subject SET Subject_Name='"+s2+"',Total_Unit='"+s3+"',Prerequist='"+s4+"' WHERE Subject_Code='"+s1+"'");
           rs = stmt.executeQuery("SELECT * FROM subject");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/subjectsearchp.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   