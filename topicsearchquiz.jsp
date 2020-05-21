<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Topic View</title>
<%@ include file="home2.jsp" %>

</head>
<body>
<%


String qc=(String)session.getAttribute("Quiz_Code");
String cn=(String)session.getAttribute("Course_Name");
String cc=(String)session.getAttribute("Course_Code");

String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");%>


<%
String uc[]=request.getParameterValues("Unit_Code");

 String tn="";
 String tc="";
 





 

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;%>

            <div class="container" style="padding-top: 120px;">
              <div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
                List of all Topics
                </div>
              
              <table class="table table-hover table-bordered table-dark">
                <thead>
                  <tr>
                    <th scope="col" class="text-center">Select</th>
                    <th scope="col" class="text-center">Topic Name</th>
                    
                  </tr>
                </thead>
                <tbody>

        <%    for(int i=0;i<uc.length;i++)
            {
                    

 rs = stmt.executeQuery("SELECT * FROM topic WHERE Unit_Code='"+uc[i]+"' ");%>
 
       
<%
  out.println("<form action='http://localhost:8080/examples/questiondispalyquiz.jsp' method='POST'>");	 
	  while(rs.next())
		{
	
        tn=rs.getString("Topic_Name");
		
	
       tc=rs.getString("Topic_Code");%>
    
        <tr>
          <td class="text-center">		  
   <% out.println("<input type='checkbox' name='Topic_Code' value='"+tc+"'>");%></td>
    
   <td class="text-center"><% out.println(tn);%></td>
   
     </tr>
   
    
     
 <%		 
   }
  }
  
  %>
		  </tbody>  
  </table>
		
   <button type="submit" class="btn btn-warning">Search Questions</button>
 
   <%	out.println("</form>");
            conn.close();
        
        } 
        catch (Exception e) {

            System.out.println("Got an exception! ");
            System.out.println(e);
        }


    

	


%>

</body>
</html>