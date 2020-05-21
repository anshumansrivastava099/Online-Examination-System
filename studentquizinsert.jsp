<%@ page import="java.sql.*"%>
<%
boolean b= false;

//HttpSession session= request.getSession(true);
String qn=(String)session.getAttribute("Quiz_Name");
String qc=(String)session.getAttribute("Quiz_Code");
String s3[]=request.getParameterValues("Batch_Code");
String s4[]=request.getParameterValues("Id");
String sc=(String)session.getAttribute("Course_Code");
String sn=(String)session.getAttribute("Course_Name");
//String bt=(String)session.getAttribute("Batch_Type");

int i,j;
for(i=0,j=0;i<s3.length&&j<s4.length;i++,j++)
{




try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
            ResultSet rs;

if(true){
b=true;

 stmt.executeUpdate("INSERT into student_quiz values('"+s3[i]+"','"+sn+"','"+sc+"','"+qc+"','"+s4[j]+"')");
      
            
            conn.close();
} }catch (Exception e) {

            System.out.println("Got an exception! ");
            System.out.println(e);
        }

	if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/topicsearchquiz.jsp");
	dispatcher.forward(request,response);
	}
}
%>