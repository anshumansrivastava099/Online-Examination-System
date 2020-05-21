<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Quiz Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String qc=request.getParameter("Quiz_Code");
session.setAttribute("Quiz_Code",qc);
       String a="";
	   String b=" ";
       String c=" ";
       String d=" ";
       String f=" ";
	  
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM quiz_detail_2 WHERE Quiz_Code='"+qc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
 a=rs.getString("Quiz_Name");
b= rs.getString("Start_Date");
c=rs.getString("Total_Marks");
d=rs.getString("Total_Time");
f=rs.getString("Total_Question");

}


          conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}

%>

        <form action="http://localhost:8080/examples/quizdetailupdate.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Quiz Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(qc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Quiz Name :-</label>
                          <input type="text" class="form-control" id="Quiz_Name" name="Quiz_Name" value="<%=a%>"    placeholder="Enter name of Quiz">
                        </div>
                         <div class="form-group">
                            <label for="coursedescription">Quiz Creation Date :-</label>
                        <input type="date" class="form-control" id="Start_Date" name="Start_Date"  value="<%=b%>" placeholder="Enter creation date of quiz">
                          </div>
                          <div class="form-group">
                            <label for="startdate">Total Marks :-</label>
                        <input type="text" class="form-control" id="Total_Marks" name="Total_Marks"  value="<%=c%>" placeholder="Enter Total Marks ">
                        </div>
                          <div class="form-group">
                            <label for="startdate">Total Time :-</label>
                        <input type="text" class="form-control" id="Total_Time" name="Total_Time"  value="<%=d%>" placeholder="Enter Total Time ">
                        </div>
                          <div class="form-group">
                            <label for="startdate">Total Question :-</label>
                        <input type="text" class="form-control" id="Total_Question" name="Total_Question"  value="<%=f%>" placeholder="Enter Total Question ">
                        </div>
                          
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
