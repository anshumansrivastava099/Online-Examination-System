<%@ page import="java.sql.*"%>
<%@ include file="home2.jsp" %>
<%
boolean b= false;
try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;

 String un=(String)session.getAttribute("Unit_Name");
 String uc=(String)session.getAttribute("Unit_Code");
 			
String s2=request.getParameter("Topic_Name");
String s3= request.getParameter("Topic_Code");
String s4= request.getParameter("About_Topic");

if(true){
    b=true;

 stmt.executeUpdate("INSERT into topic values('"+uc+"','"+s2+"','"+s3+"','"+s4+"')");
      rs = stmt.executeQuery("SELECT * FROM topic");
    
}       
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
        if(b){
            RequestDispatcher dispatcher=request.getRequestDispatcher("/topicsearchp.jsp");
            dispatcher.forward(request,response);
            }
%>