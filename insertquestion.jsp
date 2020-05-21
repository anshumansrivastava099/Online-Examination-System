<%@ page import="java.sql.*"%>

<%@include file="home2.jsp"%>
<%
boolean b= false;


String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
 String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");
 String un=(String)session.getAttribute("Unit_Name");
 String uc=(String)session.getAttribute("Unit_Code");


String s1=request.getParameter("Question_Code");
session.setAttribute("Question_Code",s1);
String s3= request.getParameter("Question_Name");
String s4= request.getParameter("Option_A");
String s5=request.getParameter("Option_B");
String s6=request.getParameter("Option_C");
String s7=request.getParameter("Option_D");
String s8=request.getParameter("Answer");


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;

if(true){
b=true;

 stmt.executeUpdate("INSERT into insert_question_2 values('"+s1+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
      }
            
            conn.close();
        } catch (Exception e) {
	b=false;
            System.out.println("Got an exception! ");
            System.out.println(e);
        }

	if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("questionentrytopic.jsp");
	dispatcher.forward(request,response);
	}

%>