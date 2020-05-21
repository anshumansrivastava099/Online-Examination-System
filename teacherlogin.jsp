<html>
	<head>
		<link rel="stylesheet" href="teacherhomepage.css" type="text/css">
	</head>
<body>
<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<%
	String sa=request.getParameter("Id");
	String sb=request.getParameter("Password");
	
	HttpSession session= request.getSession(true);
	session.setAttribute("Id",sa);
	
		
		
		

      try {
            String url = "jdbc:mysql://localhost:3306/erp";
	    Connection conn = DriverManager.getConnection(url,"root","");
	     Statement stmt = conn.createStatement();
	       ResultSet rs;

	        rs = stmt.executeQuery("SELECT * FROM login WHERE Id='"+sa+"' and Password='"+sb+"' and status='t'");

if(rs.next())
	   {
	
		
	
	 RequestDispatcher rd=request.getRequestDispatcher("home2.jsp");  
        rd.forward(request, response);  
	   }
	 

	   else
	   {  
		    RequestDispatcher rd=request.getRequestDispatcher("teacherloginpage.jsp");  
        rd.include(request, response); 
	   }
  
            conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}%>
	  


</html>
</body>
