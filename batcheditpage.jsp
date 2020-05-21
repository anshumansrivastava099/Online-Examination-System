<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Batch Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String cc=request.getParameter("Course_Code");
String cn=request.getParameter("Course_Name");
String bc=request.getParameter("Batch_Code");
session.setAttribute("Batch_Code",bc);
       String a="";
	   String b=" ";
	   String c=" ";
	   String d=" ";
	   String f=" ";
	   String g=" ";
	   String h=" ";
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM batch_detail WHERE Batch_Code='"+bc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
		 
b= rs.getString("Batch_Name");
c=rs.getString("Batch_Start_Date");
 d=rs.getString("Batch_End_Date");
f=rs.getString("Batch_Start_Time");
g=rs.getString("Batch_End_Time");
a=rs.getString("Total_Student");
}


          conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}

%>

        <form action="http://localhost:8080/examples/batchedit.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <input type="hidden" name="Course_Code" value="<%=cc%>" >
                  <input type="hidden" name="Course_Name" value="<%=cn%>" >
                  <div class="d-inline p-2 bg-dark text-white">Batch Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(bc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Batch Name :-</label>
                          <input type="text" class="form-control" id="Batch_Name" name="Batch_Name" value="<%=b%>"    placeholder="Enter name of batch">
                        </div>
                         
                          <div class="form-group">
                            <label for="startdate">Batch Start Date :-</label>
                        <input type="date" class="form-control" id="Batch_Start_Date" name="Batch_Start_Date"  value="<%=c%>" placeholder="Enter batch start date">
                        </div>
                          <div class="form-group">
                            <label for="enddate">Batch End Date :-</label>
                       <input type="date" class="form-control" id="Batch_End_Date" name="Batch_End_Date" value="<%=d%>"  placeholder="Enter batch end date">
                          </div>
                          <div class="form-group">
                            <label for="startdate">Batch Start Time :-</label>
                        <input type="text" class="form-control" id="Batch_Start_Time" name="Batch_Start_Time"  value="<%=f%>" placeholder="Enter batch start time">
                        </div>
                          <div class="form-group">
                            <label for="enddate">Batch End Time :-</label>
                       <input type="text" class="form-control" id="Batch_End_Time" name="Batch_End_Time" value="<%=g%>"  placeholder="Enter batch end time">
                          </div>
                          <div class="form-group">
                            <label for="enddate">Total Students :-</label>
                       <input type="number" class="form-control" id="Total_Student" name="Total_Student" value="<%=a%>"  placeholder="Enter total student in the batch">
                          </div>
                            
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
