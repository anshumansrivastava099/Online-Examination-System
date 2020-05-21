<%@ page session="false"%>

<%@ page import="java.sql.*"%>
<%
boolean b= false;
HttpSession session= request.getSession(true);	
String qc=(String)session.getAttribute("Quiz_Code");
String id[]=request.getParameterValues("Id");

int i;
for(i=0;i<=id.length;i++)
{

try {
            String url = "jdbc:mysql://localhost:3306/erp";
                       
            Connection conn = DriverManager.getConnection(url,"root","");
		
            Statement stmt = conn.createStatement();
			
		
            ResultSet rs;


 rs=stmt.executeQuery("SELECT * FROM student_quiz WHERE Quiz_Code='"+qc+"' AND Id='"+id[i]+"'");
            String duplicate=null;

            while(rs.next()){
                duplicate=rs.getString(1);
            }			
	if(duplicate==null){		
if(true){	
b=true;
stmt.executeUpdate("INSERT into student_quiz values('"+id[i]+"','"+qc+"')");
}
    }
     
            
            conn.close();
        } 



catch (Exception e) {
	
            System.out.println("Got an exception! ");
            System.out.println(e);
        }
}

if(b){
	RequestDispatcher dispatcher=request.getRequestDispatcher("/home2.jsp");
	dispatcher.forward(request,response);
	}


	
%>