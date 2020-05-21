<%@ page import="java.sql.*"%>
<%

boolean b= false;  	
      try {
            String url = "jdbc:mysql://localhost:3306/erp";

            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
		String s1=(String)session.getAttribute("Batch_Code");
      String cc = request.getParameter("Course_Code");
      session.setAttribute("Course_Code",cc);	
      String cn = request.getParameter("Course_Name");
      session.setAttribute("Course_Name",cn);	
	String bn=request.getParameter("Batch_Name");
	String bsd=request.getParameter("Batch_Start_Date");
	String bed=request.getParameter("Batch_End_Date");
	String bst=request.getParameter("Batch_Start_Time");
	String bet=request.getParameter("Batch_End_Time");
	String ts=request.getParameter("Total_Student");
	
  
      if(true){
            b=true;		 
    
     stmt.executeUpdate("UPDATE erp.batch_detail SET Batch_Name='"+bn+"',Batch_Start_Date='"+bsd+"',Batch_End_Date='"+bed+"',Batch_Start_Time='"+bst+"',Batch_End_Time='"+bet+"',Total_Student='"+ts+"'WHERE Batch_Code='"+s1+"'");
            rs = stmt.executeQuery("SELECT * FROM batch_detail");

		
        
		

      }
		

			
            
            conn.close();
        } catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
}
     
if(b){
      RequestDispatcher dispatcher=request.getRequestDispatcher("/batchview.jsp");
        dispatcher.forward(request,response);
        }
       

%>
    