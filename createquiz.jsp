<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<%
boolean b= false;
HttpSession session= request.getSession(true);	

String qc=(String)session.getAttribute("Quiz_Code");
String s1[]=request.getParameterValues("Question_Code");
%>


    <%


int i;

	for(i=0;i<s1.length;i++)
{	



try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
		
            ResultSet rs;
			
	if(true){
b=true;

 stmt.executeUpdate("INSERT into quiz_detail values('"+qc+"','"+s1[i]+"')");
    }
     
            
            conn.close();
        } 



catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
    }
if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/quizdisplay2.jsp");
	dispatcher.forward(request,response);
	}


	
%>