<html>
<body>
<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<%
	String sa=request.getParameter("Id");
	String sb=request.getParameter("Password");
		
		

      try {
            String url = "jdbc:mysql://localhost:3306/erp";
	    Connection conn = DriverManager.getConnection(url,"root","");
	     Statement stmt = conn.createStatement();
	       ResultSet rs;

	        rs = stmt.executeQuery("SELECT * FROM login WHERE Id='"+sa+"' and Password='"+sb+"' and status='s'");

if(rs.next())
	   {
	
	  HttpSession session= request.getSession(true);
	session.setAttribute("Id",sa);
	session.setAttribute("Password",sb);
		
		
	
	 RequestDispatcher rd=request.getRequestDispatcher("studenthomepage2.jsp");  
        rd.forward(request, response);  
	   }
	 

	   else
	   {  
		    RequestDispatcher rd=request.getRequestDispatcher("index.html");  
        rd.include(request, response); 
	   }
  
            conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}%>
	  


</html>
</body>
