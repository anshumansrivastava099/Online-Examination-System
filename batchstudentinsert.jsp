<%@ page session="false"%>
<%@ page import="java.sql.*"%>

<html>
<head>
<title> Students</title>
<%@ include file="home2.jsp"%>

</head>
<body>


<%

String bc=(String)session.getAttribute("Batch_Code");
String ids[] = request.getParameterValues("Id");

boolean b=false;


try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
            if(true){
                b=true;

            int i;

            for(i=0;i<ids.length;i++){

                stmt.executeUpdate("INSERT into batch_student values('"+ids[i]+"','"+bc+"')");
                 rs = stmt.executeQuery("SELECT * FROM batch_student");
   
            }
        }
        conn.close();
    } 
       catch (Exception e) {
        b=false;
        System.out.println("Got an exception! ");
        System.out.println(e);
    }
    if(b){
RequestDispatcher dispatcher=request.getRequestDispatcher("/studentlist.jsp");
dispatcher.forward(request,response);
}

%>
   
