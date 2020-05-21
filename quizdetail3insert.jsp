<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<%
boolean b= false;
HttpSession session= request.getSession(true);
String sn=request.getParameter("Subject_Name");
String sc=request.getParameter("Subject_Code");
session.setAttribute("Subject_Name",sn);
session.setAttribute("Subject_Code",sc);
String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");

String qc=(String)session.getAttribute("Quiz_Code");


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
		
            ResultSet rs;
			
	if(true){
b=true;

 stmt.executeUpdate("INSERT into quiz_detail_3 values('"+qc+"','"+sc+"')");
     
            
            conn.close();
        } 


}
catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/unitsearchquiz.jsp");
	dispatcher.forward(request,response);
	}


	
%>