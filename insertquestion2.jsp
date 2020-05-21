<%@ page import="java.sql.*"%>

<%@include file="home2.jsp"%>
<%
boolean b= false;
String s1[]=request.getParameterValues("Topic_Code");

 String qc=(String)session.getAttribute("Question_Code");


for(int i=0;i<=s1.length;i++)
{

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;



 stmt.executeUpdate("INSERT into insert_question values('"+s1[i]+"','"+qc+"')");
      
            
            conn.close();
        } catch (Exception e) {

            System.out.println("Got an exception! ");
            System.out.println(e);
        }

	if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/questiondisplay.jsp");
	dispatcher.forward(request,response);
	}
}
%>