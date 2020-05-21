 <%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Cousrse Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String sc=request.getParameter("Course_Code");
session.setAttribute("Course_Code",sc);
     String a="";
	   String b=" ";
	   String c=" ";
	   String d=" ";
	   String t=" ";
	   String f=" ";
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM course WHERE Course_Code='"+sc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
		  a=rs.getString("Course_Code");
b= rs.getString("Course_Name");
c=rs.getString("Course_Desc");
 d=rs.getString("Start_Date");
t=rs.getString("End_Date");
f=rs.getString("Scope");
}


          conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}

%>

        <form action="http://localhost:8080/examples/courseedit.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Course Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(sc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Course Name :-</label>
                          <input type="text" class="form-control" id="Course_Name" name="Course_Name" value="<%=b%>"    placeholder="Enter name of course">
                        </div>
                         <div class="form-group">
                            <label for="coursedescription">Course Description :-</label>
                        <input type="text" class="form-control" id="Course_Desc" name="Course_Desc"  value="<%=c%>" placeholder="Enter description of course">
                          </div>
                          <div class="form-group">
                            <label for="startdate">Course Start Date :-</label>
                        <input type="date" class="form-control" id="Start_Date" name="Start_Date"  value="<%=d%>" placeholder="Enter course start date">
                        </div>
                          <div class="form-group">
                            <label for="enddate">Course End Date :-</label>
                       
                        <input type="date" class="form-control" id="End_Date" name="End_Date" value="<%=t%>"  placeholder="Enter course end date">
                          </div>
                            <div class="form-group">
                            <label for="coursescope">Course Scope :-</label>
                            <input type="text" class="form-control" id="Course_Scope" name="Scope" value="<%=f%>"  placeholder="Enter scope of course">
                          </div>
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
