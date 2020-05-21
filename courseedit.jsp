 <%@ page import="java.sql.*"%>
 <%@include file="home2.jsp"%>
<%
boolean b= false;
	
      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
		           ResultSet rs;
		 
String s1=(String)session.getAttribute("Course_Code");
  String s2=request.getParameter("Course_Name");

  String s3=request.getParameter("Course_Desc");
  String s4=request.getParameter("Start_Date");
  String s5=request.getParameter("End_Date");
String s6=request.getParameter("Scope");

if(true){
  b=true;		 
    
     stmt.executeUpdate("UPDATE erp.course SET Course_Name='"+s2+"',Course_Desc='"+s3+"',Start_Date='"+s4+"',End_Date='"+s5+"' ,Scope='"+s6+"' WHERE Course_Code='"+s1+"'");
            rs = stmt.executeQuery("SELECT * FROM course");
          }
		
         
            conn.close();
        } catch (Exception e) {
          b=false;
            out.println("Got an exception! ");
            out.println(e);
}
 
if(b){
  RequestDispatcher dispatcher=request.getRequestDispatcher("/coursesearch.jsp");
    dispatcher.forward(request,response);
    }
   
     

%>
    