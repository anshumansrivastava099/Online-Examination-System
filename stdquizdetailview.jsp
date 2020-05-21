<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Quiz Detail</title>
<%@ include file="studenthomepage2.jsp"%>


</head>
<body>
<%

String ids=(String)session.getAttribute("Id");
String qc=request.getParameter("Quiz_Code");
 
 	session.setAttribute("Quiz_Code",qc);

 
 String s1=" ";
  String s2=" ";
   String s3=" ";
    String s4=" ";
	 String s5=" ";
	  String s6=" ";
      String s7=" ";
      String s8=" ";
      String s9=" ";
 boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
          
           
   
          rs = stmt.executeQuery("SELECT * FROM quiz_detail_2 ,quiz_detail_4,quiz_detail_3,quiz_detail_5,course,subject WHERE quiz_detail_2.Quiz_Code='"+qc+"' AND quiz_detail_4.Quiz_Code='"+qc+"' AND (quiz_detail_3.Quiz_Code='"+qc+"' AND quiz_detail_3.Subject_Code=subject.Subject_Code) AND (quiz_detail_5.Quiz_Code='"+qc+"' AND quiz_detail_5.Course_Code=course.Course_Code)");
          %>
          
          
	<%out.println("<form action='http://localhost:8080/examples/quizdisplay.jsp' method='GET'>");
	
	  	
	    while(rs.next())
		  {
			 b=true;
			  
		  	  s1=rs.getString("Quiz_Code");
              
			   
               s2=rs.getString("Quiz_Name");
              s3=rs.getString("Quiz_Start_Date");
               
             s4=rs.getString("Quiz_End_Date");
			   
               
			   
			    s5=rs.getString("Total_Marks");
				 
			    s6=rs.getString("Total_Time");
                s7=rs.getString("Total_Question");
                s8=rs.getString("Course_Name");
                s9=rs.getString("Subject_Name");%>
               
                <div class="container" style="margin-top: 130px;">
                    <div class="d-inline p-2 bg-dark text-white" style="margin-left: 450px;">COURSE </div>
                    <span style='font-size:30px;'>&#8658;</span>
                     <div class="d-inline p-2 bg-primary text-white"><% out.println(s8);%></div>
                     <div class="d-inline p-2 bg-dark text-white" style="margin-left: 450px;">SUBJECT </div>
                    <span style='font-size:30px;'>&#8658;</span>
                     <div class="d-inline p-2 bg-primary text-white"><% out.println(s9);%></div>
                    
                            
                    <table class="table table-hover table-dark" style="margin-top: 20px;">
             
                <tbody>
                    <tr>
                      <th scope="row">--></th>
                      <td>Quiz Name</td>
                      <td><%out.println(s2);%></td>
                  </tr>
                  <tr>
                      <th scope="row">--></th>
                      <td>Quiz Code</td>
                      <td><%out.println(s1);%></td>
                  </tr>
                  <tr>
                    <th scope="row">--></th>
                    <td>Quiz Start Date</td>
                    <td><%out.println(s3);%></td>
                </tr>
               
                <tr>
                    <th scope="row">--></th>
                    <td>Quiz End Date</td>
                    <td><%out.println(s4);%></td>
                </tr>
               
                 
                  <tr>
                      <th scope="row">--></th>
                      <td>Maximum Marks</td>
                      <td><%out.println(s5);%></td>
                  </tr>
                  <tr>
                      <th scope="row">--></th>
                      <td>Maximum Hours</td>
                      <td><%out.println(s6);%></td>
                  </tr>
                  <tr>
                      <th scope="row">--></th>
                      <td>Total Question</td>
                      <td><%out.println(s7);%></td>
                  </tr>
                   
                  </tbody>
                
               
                 
          
         
                       
            <%  }%>
          </table>
          <div class="form-group">
            <%	out.println("<a class=\"btn btn-warning\" href=\"quizinstruction.jsp?Quiz_Code="+qc+"\"  role=\"button\">");
          out.println("Proceed");
              out.println("</a>");
               out.println("</td>");%>
            </div>
         </div>
     <%
    conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 		
	 
%>
    
	


     </body>
	 </html>