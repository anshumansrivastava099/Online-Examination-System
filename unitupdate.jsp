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
String s1=(String)session.getAttribute("Subject_Code");
String cc=(String)session.getAttribute("Course_Code");
 String s2=request.getParameter("Unit_Name");

 String s3=request.getParameter("Total_Topic");
 String s4=request.getParameter("Total_Lectures");
 

if(true){
 b=true;		 
   
    stmt.executeUpdate("UPDATE erp.unit SET Unit_Name='"+s2+"',Total_Topic='"+s3+"',Total_Lectures='"+s4+"' WHERE Unit_Code='"+uc+"'");
           rs = stmt.executeQuery("SELECT * FROM unit");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/unitsearchp.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   