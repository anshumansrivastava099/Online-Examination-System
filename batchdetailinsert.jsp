<%@ page import="java.sql.*"%>
<%




String cc = request.getParameter("Course_Code");
String cn = request.getParameter("Course_Name");
String s1=request.getParameter("Batch_Name");
String s2=request.getParameter("Batch_Code");
String s5=request.getParameter("Batch_Start_Date");
String s6=request.getParameter("Batch_End_Date");
String s7=request.getParameter("Batch_Start_Time");
String s8=request.getParameter("Batch_End_Time");
String s9=request.getParameter("Total_Student");



boolean b= false;

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;

            if(true){
                b=true;

 stmt.executeUpdate("INSERT into batch_detail values('"+s1+"','"+s2+"','"+cc+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"')");
      
            }        
            conn.close();
        } catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
        if(b){
            RequestDispatcher dispatcher=request.getRequestDispatcher("/batchview.jsp");
                dispatcher.forward(request,response);
                }

	

%>