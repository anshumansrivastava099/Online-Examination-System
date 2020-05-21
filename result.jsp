<%@page import= "java.sql.*" %>
<%
boolean bol= false;

String sa =(String)session.getAttribute("Id");
String q =(String)session.getAttribute("Quiz_Code");

  String hidden = request.getParameter("inputName"); 
    int j=Integer.parseInt(hidden);

    String s[] = new String[j];
	int k=0;
    for (int i=0; i<j; i++){
        k++;
    s[i] = request.getParameter(Integer.toString(k)); 
    //out.println(s[i]);
    }

    //Attempt_Find

    int attempt=0;
    int at;
    String a="a", b="b" , c="c" , d="d";

    for(at=0;at<s.length;at++)
    {
        if(a.equals(s[at]) || b.equals(s[at]) || c.equals(s[at]) || d.equals(s[at]))
        {
            attempt++;
        }
    }
    //out.println(attempt);
    
	String qc[] = request.getParameterValues("Question_Code");
	int l;

	
int marks=0;
int correct = 0;
           
try {
	
String s1 = " ";
            String url = "jdbc:mysql://localhost:3306/erp";
	        Connection conn = DriverManager.getConnection(url,"root","");
	        Statement stmt = conn.createStatement();
			
			
            ResultSet rs;
           
            int m;
            for(m=0;m<qc.length;m++)
            {
            
            rs = stmt.executeQuery("SELECT * FROM insert_question_2 WHERE Question_Code='"+qc[m]+"' ");

            while(rs.next()){

                s1=rs.getString("Answer");
            }
            
            if(s1.equals(s[m])){
                marks=marks+5;
                correct++;
            }
            else
            {
                marks--;
            }

        }
            //out.println(marks);

            rs=stmt.executeQuery("SELECT * FROM result WHERE Quiz_Code='"+q+"' AND Id='"+sa+"'");
            String duplicate=null;

            while(rs.next()){
                duplicate=rs.getString(1);
            }

            if(duplicate==null)
            {
            if(true){
                bol=true;
            stmt.executeUpdate("INSERT into result values('"+q+"','"+sa+"','"+marks+"','"+attempt+"','"+correct+"')");
             rs = stmt.executeQuery("SELECT * FROM result");
            }
        }
        else{
            RequestDispatcher dispatcher=request.getRequestDispatcher("/alreadygivenquizpage.jsp");
                dispatcher.forward(request,response);
        }
			
            conn.close();
		} 
        
            catch (Exception e) {
		    
            System.out.println("Got an exception! ");
            out.println(e);
        }
		
        if(bol){
            RequestDispatcher dispatcher=request.getRequestDispatcher("/quizsubmitpage.jsp");
                dispatcher.forward(request,response);
                }   
				  
		
   
  %>