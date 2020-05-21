<%@ page import ="java.sql.*"%>  
<%
String s1= request.getParameter("Course_Code");
String s2= request.getParameter("Course_Name");
String s3= request.getParameter("Course_Desc");
String s4= request.getParameter("Start_Date");
String s5= request.getParameter("End_Date");
String s6= request.getParameter("Scope");
try {
            String url = "jdbc:mysql://localhost:3306/project"; 
            Connection conn = DriverManager.getConnection(url,"root","");
	
            Statement stmt = conn.createStatement();
		
            ResultSet rs;
            
 stmt.executeUpdate("UPDATE project.course SET Course_Code='"+s1+"',Course_Name='"+s2+"',Course_Desc='"+s3+"', Start_Date='"+s4+"',End_Date='"+s5+"',Scope='"+s6+"' where Course_Code='111' ");

                        rs = stmt.executeQuery("SELECT * FROM course");
			
 while ( rs.next() ) {
                      String a1 = rs.getString("Course_Code"); //column name
                      out.println(a1);  
                      String a2 = rs.getString("Course_Name"); 
                      out.println(a2);  
                      String a3 = rs.getString("Course_Desc");  
                      out.println(a3);  
                      String a4 = rs.getString("Start_Date");  
                      out.println(a4);  
                      String a5 = rs.getString("End_Date");  
                      out.println(a5);  
                      String a6 = rs.getString("Scope");  
                      out.println(a6);        
                    }
            conn.close();
        } catch (Exception e) {
            System.out.println("Got an exception! ");
            System.out.println(e);
        }

%>