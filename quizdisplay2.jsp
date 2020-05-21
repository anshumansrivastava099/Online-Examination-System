<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Quiz Question</title>
<%@ include file="home2.jsp"%>

</head>
<body>

<%

 
 

String qc =(String)session.getAttribute("Quiz_Code");


try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
String s1=" ";
String s2=" ";
String s3=" ";
String s4=" ";
String s5=" ";
String s6=" ";
String s0=" ";
int sno=0;
            ResultSet rs1;
			 


 
 
			
			
		
   
        rs1 = stmt.executeQuery("SELECT * FROM insert_question_2,quiz_detail WHERE Quiz_Code='"+qc+"' && insert_question_2.Question_Code=quiz_detail.Question_Code");%>
        <div class="container" style="padding-top: 120px;">
          <div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
            All Question in this Quiz
            </div>
            <table class="table table-hover table-bordered table-dark">
              <thead>
                <tr>
                  
                  <th scope="col" class="text-center">S No.</th>
                  <th scope="col" class="text-center">Question Name</th>
                  <th scope="col" class="text-center">Option A</th>
                  <th scope="col" class="text-center">Option B</th>
                  <th scope="col" class="text-center">Option C</th>
                  <th scope="col" class="text-center">Option D</th>
                  <th scope="col" class="text-center">Delete Option</th>
                  
                </tr>
              </thead>
	
	<%
	  	while(rs1.next())
	    {
        sno=sno+1;
			
			

s0=rs1.getString("Question_Code");		
s1=rs1.getString("Question_Name");
s2=rs1.getString("Option_A");
s3=rs1.getString("Option_B");
s4=rs1.getString("Option_C");
s5=rs1.getString("Option_D");%>
<tbody>
	<tr>
        
 <td class="text-center"><% out.println(sno);%></td>
 <td class="text-center"><% out.println(s1);%></td>
 <td class="text-center"><% out.println(s2);%></td>
 <td class="text-center"><% out.println(s3);%></td>
 <td class="text-center"><% out.println(s4);%></td>
 <td class="text-center"><% out.println(s5);%></td>
 <td class="text-center">
    <div class="form-group">
        <%	out.println("<a class=\"btn btn-warning\" href=\"quizdisplaydelete.jsp?Question_Code="+s0+"\" role=\"button\">");
      out.println("Delete");
          out.println("</a>");
           out.println("</td>");%>
        </div>

 </tr>
</tbody>

<%		 
}%>
</table>

	<button type="button" class="btn btn-primary mt-2" data-toggle="modal" data-target="#courseentrypage">
		Add More Question
	  </button>
</div>




<!-- ######################################################################################################################## -->
<!-- Add New Course -->
  <div class="modal fade" id="courseentrypage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="exampleModalLabel">Select the Question from List</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<form action="http://localhost:8080/examples/createquiz.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
<%
      String ques_n="";
      String ques_c=""; 
         rs1 = stmt.executeQuery("SELECT * FROM insert_question_2 WHERE NOT EXISTS (SELECT * FROM quiz_detail WHERE quiz_detail.Question_Code=insert_question_2.Question_Code AND Quiz_Code='"+qc+"')");

          while(rs1.next()){
            
            ques_n=rs1.getString("Question_Name");
            ques_c=rs1.getString("Question_Code");
			 %>
				<div class="form-group form-check">
					<input type="checkbox" class="form-check-input" id="exampleCheck1" name="Question_Code" value="<%=ques_c%>">
					<label class="form-check-label" for="exampleCheck1"><% out.println(ques_n);%></label>
				  </div>
				

<%		
}       %>
				</div>
		         </div>
	
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		  <button type="submit" class="btn btn-primary">Add to Quiz</button>
		</form>
		</div>
	  </div>
	</div>
  </div>



<%






 conn.close();
			

        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>



  </body>
	 </html>
			
			
		  
	
	
		  
	
	



	
    


