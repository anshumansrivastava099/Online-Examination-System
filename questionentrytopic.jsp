<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Topic  View</title>
<%@ include file="home2.jsp" %>

</head>
<body>


<%

 String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
  String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");
 String un=(String)session.getAttribute("Unit_Name");
 String uc=(String)session.getAttribute("Unit_Code");
 String qc=(String)session.getAttribute("Question_Code");

 


	String tn="";
	String tc="";
	int sno=0;
	
		

try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
			
           
   
	   rs = stmt.executeQuery("SELECT * FROM topic WHERE Unit_Code='"+uc+"' ");%>
	   <div class="container" style="padding-top: 120px;">
		<div class="alert alert-primary" role="alert" style="background-color: red; text-align: center;">
			Topic List for Question Entry
		  </div>
		<div class="d-inline p-2 bg-primary text-white" ><%out.println(cn);%></div>
		<div class="d-inline p-2 bg-dark text-white" ><%out.println(cc);%></div>
		--->
		<div class="d-inline p-2 bg-primary text-white" ><%out.println(sn);%></div>
		<div class="d-inline p-2 bg-dark text-white" ><%out.println(sc);%></div>
		--->
		<div class="d-inline p-2 bg-primary text-white" ><%out.println(un);%></div>
		<div class="d-inline p-2 bg-dark text-white" ><%out.println(uc);%></div>
		



		<table class="table table-hover tbale-bordered table-dark" style="margin-top: 30px;">
			<thead>
				<tr>
					<th scope="col" class="text-center">S No.</th>
					<th scope="col" class="text-center">Select</th>
					<th scope="col" class="text-center">Topic Name</th>
					
				</tr>
			</thead>
	   	  
	   
	 <%  out.println("<form action='http://localhost:8080/examples/insertquestion2.jsp' method='GET'>");	   
	  while(rs.next())
		{
	sno=sno+1;
        tn=rs.getString("Topic_Name");
		
	
		   tc=rs.getString("Topic_Code");%>
		   <tbody>
			<tr>
				<td class="text-center"><% out.println(sno);%>
				</td>
			<td class="text-center">		  
	 <% out.println("<input type='checkbox' name='Topic_Code' value='"+tc+"'>");%></td>
		 <td class="text-center"><% out.println(tn);%>
		  </td>
		 </tr>
		 </table>
		 
 <%		 
	 }%>
	 <button type="submit" class="btn btn-warning">Save Question</button>

 <%	out.println("</form>");
		  
	
			
	
            conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>




     </body>
	 </html	>