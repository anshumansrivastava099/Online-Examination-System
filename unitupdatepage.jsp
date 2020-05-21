<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Unit Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String uc=request.getParameter("Unit_Code");
session.setAttribute("Unit_Code",uc);
       String a="";
	   String b=" ";
       String c=" ";
       String d=" ";
       
	  
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM unit WHERE Unit_Code='"+uc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
		  a=rs.getString("Unit_Code");
b= rs.getString("Unit_Name");
c=rs.getString("Total_Topic");
d=rs.getString("Total_Lectures");


}


          conn.close();
        } catch (Exception f) {
            out.println("Got an exception! ");
            out.println(f);
}

%>

        <form action="http://localhost:8080/examples/unitupdate.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Unit Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(uc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Unit Name :-</label>
                          <input type="text" class="form-control" id="Unit_Name" name="Unit_Name" value="<%=b%>"    placeholder="Enter name of Unit">
                        </div>
                         <div class="form-group">
                            <label for="coursedescription">Total Topic :-</label>
                        <input type="number" class="form-control" id="Total_Topic" name="Total_Topic"  value="<%=c%>" placeholder="Enter total Topic in the unit">
                          </div>
                          
                         <div class="form-group">
                            <label for="coursedescription">Total Lectures Required :-</label>
                        <input type="number" class="form-control" id="Total_Lectures" name="Total_Lectures"  value="<%=d%>" placeholder="Enter total lecture required in the unit">
                          </div>
                          
                          
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
