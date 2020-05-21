<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<%
boolean b= false;
HttpSession session= request.getSession(true);
String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
	
String s1=request.getParameter("Quiz_Name");
String s2=request.getParameter("Quiz_Code");
session.setAttribute("Quiz_Code",s2);
String s3=request.getParameter("Start_Date");
String s4=request.getParameter("Total_Marks");
String s5=request.getParameter("Total_Time");
String s6=request.getParameter("Total_Question");


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
		
            ResultSet rs;
			
	if(true){
b=true;

 stmt.executeUpdate("INSERT into quiz_detail_2 values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
     
            
            conn.close();
        } 


}
catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/subjectsearchquiz.jsp");
	dispatcher.forward(request,response);
	}


	
%>