<%@ page import="java.sql.*"%>
<
<html>
<head>
<title>Subject Update Page</title>
<%@include file="home2.jsp"%>
</head>

<body>


<%
String qc=request.getParameter("Question_Code");
session.setAttribute("Question_Code",qc);
       String a="";
	   String b=" ";
       String c=" ";
       String d=" ";
       String f=" ";
       String g=" ";
	  
 	

      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
     
   
	  
      
    
            rs = stmt.executeQuery("SELECT * FROM insert_question_2 WHERE Question_Code='"+qc+"' ");
			
        
		 while(rs.next())
		  {
			
			  
            a=rs.getString("Question_Name");
            b=rs.getString("Option_A");
             c=rs.getString("Option_B");
           d=rs.getString("Option_C");
           f=rs.getString("Option_D");
           g=rs.getString("Answer");

}


          conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}

%>

        <form action="http://localhost:8080/examples/questiondisplayupdate.jsp" method="GET">
                <div class="container" style="margin-top: 110px;">
                  <div class="d-inline p-2 bg-dark text-white">Question Code</div>
                   <div class="d-inline p-2 bg-primary text-white"><% out.println(qc);%></div>
                        <div class="form-group">
                          <label for="questionname">Question Name :-</label>
                          <input type="text" class="form-control" value="<%=a%>""  id="Question_Name" name="Question_Name" placeholder="Enter name of question">
                        </div>
                        
                          <div class="form-group">
                            <label for="option">Option A :-</label>
                            <input type="text" class="form-control" value="<%=b%>"" id="Option_A" name="Option_A" placeholder="Enter option ">
                          </div>
                          <div class="form-group">
                            <label for="option">Option B :-</label>
                            <input type="text" class="form-control" value="<%=c%>"" id="Option_B" name="Option_B" placeholder="Enter option ">
                          </div>
                         
                          <div class="form-group">
                            <label for="option">Option C :-</label>
                            <input type="text" class="form-control" value="<%=d%>"" id="Option_C" name="Option_C" placeholder="Enter option ">
                          </div>
                         
                          <div class="form-group">
                            <label for="option">Option D :-</label>
                            <input type="text" class="form-control" value="<%=f%>"" id="Option_D" name="Option_D" placeholder="Enter option ">
                          </div>
                          <div class="form-group">
                              <label for="answer">Correct Option :-</label>
                          <div class="form-check">
                            <label class="form-check-label" style="margin-left: 130px;">
                              <input type="radio" class="form-check-input" name="Answer" value="a">Option A
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label" style="margin-left: 130px;">
                              <input type="radio" class="form-check-input" name="Answer" value="b">Option B
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label" style="margin-left: 130px;">
                              <input type="radio" class="form-check-input" name="Answer" value="c">Option C
                            </label>
                          </div>
                          <div class="form-check">
                            <label class="form-check-label" style="margin-left: 130px;">
                              <input type="radio" class="form-check-input" name="Answer" value="d">Option D
                            </label>
                          </div>
                          </div>
                          
                         
                          <button type="submit" class="btn btn-primary">Svae Changes</button>
                          <button type="reset" class="btn btn-primary" style="margin-left: 10px;">Reset</button>
                      </form>
                    </div>
            
            

</body>
</html>
