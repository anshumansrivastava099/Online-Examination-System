
<html>
<body>
<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<%
boolean b= false;


try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;


HttpSession session= request.getSession(true);
 String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
String s2=request.getParameter("Subject_Name");
String s3= request.getParameter("Subject_Code");
String s4= request.getParameter("Total_Unit");
String s5=request.getParameter("Prerequist");


if(true){
b=true;

 stmt.executeUpdate("INSERT into subject values('"+cc+"','"+s3+"','"+s2+"','"+s4+"','"+s5+"')");
      rs = stmt.executeQuery("SELECT * FROM subject");
   }
            conn.close();
        } catch (Exception e) {
          b=false;
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
		if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/subjectsearchp.jsp");
	dispatcher.forward(request,response);
	}

	
%>
\
	</body>
	</html>
	