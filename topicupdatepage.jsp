<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Topic Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String tc=request.getParameter("Topic_Code");
session.setAttribute("Topic_Code",tc);
       String a="";
	   String b=" ";
      
       
	  
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM topic WHERE Topic_Code='"+tc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
		
a= rs.getString("Topic_Name");
b=rs.getString("About_Topic");



}


          conn.close();
        } catch (Exception f) {
            out.println("Got an exception! ");
            out.println(f);
}

%>

        <form action="http://localhost:8080/examples/topicupdate.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Topic Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(tc);%></div>
                        <div class="form-group" style="margin-top: 20px;">
                          <label for="coursename">Topic Name :-</label>
                          <input type="text" class="form-control" id="Topic_Name" name="Topic_Name" value="<%=a%>"    placeholder="Enter name of topic">
                        </div>
                         <div class="form-group">
                            <label for="coursedescription">About Topic :-</label>
                        <input type="text" class="form-control" id="About_Topic" name="About_Topic"  value="<%=b%>" placeholder="Enter about topic">
                          </div>
                          
                        
                          
                          
                       <button type="submit" class="btn btn-primary">Save changes</button>
                        </div>
                       </form>
        
        


</body>
</html>
