<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>

<head>
	<title> All Question </title>
	<%@include file="home2.jsp"%>
</head>

<body>



	<%

	String s1="";
	String s2="";
	String s3="";
	String s4="";
	String s5="";
	String s6="";
	String s7="";
	
 int i=1;
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
  
			Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
         rs = stmt.executeQuery("SELECT * FROM insert_question_2 GROUP by Question_Code ");%>

		 <div class="container" style="margin-top: 150px;">  
	   
	<%  while(rs.next())
		{
		 
						
		 s1=rs.getString("Question_Name");
		 s2=rs.getString("Option_A");
		  s3=rs.getString("Option_B");
	    s4=rs.getString("Option_C");
		s5=rs.getString("Option_D");
		s6=rs.getString("Question_Code");
		s7=rs.getString("Answer");%>

		
		<div class="card" style="width: 30rem;">
			<div class="card-header">
				<div class="d-inline p-2 bg-dark text-white"><%out.print("Ques No. "+i +":-" );%></div>

			  </div>
	    <div class="card-body">
			
	
			  <h5 class="card-title"><%out.println(s1);%>?</h5>
			  <p class="card-text">a)<%out.println(" "+s2);%></p>
			  <p class="card-text">b)<%out.println(" "+s3);%></p>
			  <p class="card-text">c)<%out.println(" "+s4);%></p>
			  <p class="card-text">d)<%out.println(" "+s5);%></p>


			  <%out.println("<a href=\"questiondisplayupdatepage.jsp?Question_Code="+s6+"\" class=\"btn btn-primary\" >Update</a>");%>
			  <%out.println("<a href=\"questiondisplaydelete.jsp?Question_Code="+s6+"\" class=\"btn btn-primary\" style=\"margin-left: 30px;\">Delete</a>");%>
			 
			  
			  <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#<%=s6%>" aria-expanded="false" aria-controls="collapseExample" style="margin-left: 30px;">
				Show Answer
			  </button>

			  <div class="collapse" id="<%=s6%>">
				<div class="card card-body">
				  <%out.println(s7);%>
				</div>
			  </div>
			 


			</div>
		  </div>	  
         
		<br>	

<%i++;

		}
            conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>
<div class="form-group" style="margin-top: 20px;">
	<%	out.println("<a class=\"btn btn-warning\" href=\"questionentrycourse.jsp\" role=\"button\">");
  out.println("Add More");
	  out.println("</a>");
	  %>
	
</div>



</body>

</html>