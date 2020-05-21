<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Result</title>
<%@ include file="studenthomepage2.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


button:hover, a:hover {
  opacity: 0.7;
}

</style>
</head>
<body>

<%
String sa=(String)session.getAttribute("Id");

String qc=request.getParameter("Quiz_Code");
String qn=request.getParameter("Quiz_Name");

String s1="";
String s2="";
String s3="";
String s4="";
String s5="";
String s6="";
String s7="";
String s8="";
String s9="";
boolean b=false;



try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
        rs = stmt.executeQuery("SELECT * FROM student,result,quiz_detail_5,course,quiz_detail_3,subject,quiz_detail_2 WHERE result.Id=student.Id AND result.Quiz_Code='"+qc+"' AND (quiz_detail_5.Quiz_Code='"+qc+"' AND quiz_detail_5.Course_Code=course.Course_Code ) AND (quiz_detail_3.Quiz_Code='"+qc+"' AND quiz_detail_3.Subject_Code=subject.Subject_Code ) AND quiz_detail_2.Quiz_Code='"+qc+"' ");


        while(rs.next()){
           s1=rs.getString("FirstName");
           s2=rs.getString("MiddleName");
           s3=rs.getString("LastName");
           s4=rs.getString("Course_Name");
           s5=rs.getString("Subject_Name");
           s6=rs.getString("Total_Question");
           s7=rs.getString("Total_Attempt");
           s8=rs.getString("Correct");
           s9=rs.getString("Marks");

        }
	%>
	  
			
				 

			   <div class="card" style="margin-top: 100px;">
				<img src="result.jpeg" alt="John" style="width:100%">
                <p class="title">Result</p>
                <div class="container">
                <p><b>Name</b>:-<% out.println(s1);
                    out.println(s2);
                    out.println(s3); %></p>
                <p><b>Roll Number</b>:-<% out.println(sa); %></p>
                <p><b>Quiz Name</b>:-<% out.println(qn); %></p>
                <p><b>Quiz Code</b>:-<% out.println(qc); %></p>
                <p><b>Course</b>:-<% out.println(s4); %></p>
                <p><b>Subject</b>:-<% out.println(s5); %></p>
            </div>
               <p><button data-toggle="modal" data-target="#result">Show Result</button></p>
				
			  </div>
              
              

              <div class="modal fade" id="result" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="exampleModalLabel">Your Progress Report</h5>
                     
                    </div>
                    
                    <div class="modal-body">
                        <div class="container">
                            <p><b>Total Question</b>:- <% out.println("  "+s6); %></p>
                            <br>
                            <p><b>Total Attempt</b>:-  <% out.println("  "+s7); %></p>
                            <br>

                            <p><b>Correct</b>:-   <% out.println("  "+s8); %></p>
                            <br>
                            <hr>
                            <p><b>Total Marks You Got</b>:-  <% out.println("  "+ s9); %></p>
                             </div>
                             </div>
                
                    <div class="modal-footer">
                      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                  </div>
                </div>
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