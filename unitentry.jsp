
<html>
<body>
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<%@ include file="home2.jsp" %>
<%
boolean b= false;


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;



 String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
  String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");
String s2=request.getParameter("Unit_Name");
String s3= request.getParameter("Unit_Code");
String s4= request.getParameter("Total_Topic");

String s8= request.getParameter("Total_Lectures");
 
if(true){
b=true;

 stmt.executeUpdate("INSERT into unit values('"+sc+"','"+s3+"','"+s2+"','"+s4+"','"+s8+"')");
      rs = stmt.executeQuery("SELECT * FROM unit");
   }
            conn.close();
        } catch (Exception e) {
          b=false;
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
		if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/unitsearchp.jsp");
	dispatcher.forward(request,response);
	}

	
%>

	</body>
	</html>
	