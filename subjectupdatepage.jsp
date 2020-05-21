<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Subject Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String sc=request.getParameter("Subject_Code");
session.setAttribute("Subject_Code",sc);
       String a="";
	   String b=" ";
       String c=" ";
       String d=" ";
	  
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM subject WHERE Subject_Code='"+sc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
		  a=rs.getString("Subject_Code");
b= rs.getString("Subject_Name");
c=rs.getString("Total_Unit");
d=rs.getString("Prerequist");

}


          conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}

%>

        <form action="http://localhost:8080/examples/subjectupdate.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Subject Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(sc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Subject Name :-</label>
                          <input type="text" class="form-control" id="Subject_Name" name="Subject_Name" value="<%=b%>"    placeholder="Enter name of subject">
                        </div>
                         <div class="form-group">
                            <label for="coursedescription">Total Units :-</label>
                        <input type="number" class="form-control" id="Total_Unit" name="Total_Unit"  value="<%=c%>" placeholder="Enter total unit in the subject">
                          </div>
                          <div class="form-group">
                            <label for="startdate">Prerequist :-</label>
                        <input type="text" class="form-control" id="Prerequist" name="Prerequist"  value="<%=d%>" placeholder="Enter Prerequist of the subject">
                        </div>
                          
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
