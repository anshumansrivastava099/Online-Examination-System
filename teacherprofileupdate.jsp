<%@ page import="java.sql.*"%>

<%
boolean b= false;
   
     try {
           String url = "jdbc:mysql://localhost:3306/erp";

           Connection conn = DriverManager.getConnection(url,"root","");
       
           Statement stmt = conn.createStatement();
                  ResultSet rs;
        
String s1=(String)session.getAttribute("Id");

String s2=request.getParameter("Id");

out.println(s1);
out.println(s2);
String FirstName=request.getParameter("FirstName");
String MiddleName=request.getParameter("MiddleName");
 String LastName=request.getParameter("LastName");
 String FatherName=request.getParameter("FatherName");
 String MotherName =request.getParameter("MotherName");
 
 String DOB=request.getParameter("DOB");
String Gender =request.getParameter("Gender");

String Ug_University=request.getParameter("Ug_University");
String Ug_Pass_Out_Year=request.getParameter("Ug_Pass_Out_Year");
String Ug_Subject=request.getParameter("Ug_Subject");
String Ug_Percentage=request.getParameter("Ug_Percentage");

String Pg_University=request.getParameter("Pg_University");
String Pg_Pass_Out_Year=request.getParameter("Pg_Pass_Out_Year");
String Pg_Subject=request.getParameter("Pg_Subject");
String Pg_Percentage=request.getParameter("Pg_Percentage");

 
 String PhoneNo=request.getParameter("PhoneNo");
String Email=request.getParameter("Email");

String HouseNoP=request.getParameter("HouseNoP");
String StreetNoP=request.getParameter("StreetNoP");
String CityP =request.getParameter("CityP");
String DistrictP=request.getParameter("DistrictP");
String PinCodeP=request.getParameter("PinCodeP");
String StateP=request.getParameter("StateP");
String CountryP=request.getParameter("CountryP");

String Experience=request.getParameter("Experience");
String Category =request.getParameter("Category");
String PanNo=request.getParameter("PanNo");
String Current_Session=request.getParameter("Current_Session");
String MainSub =request.getParameter("MainSub");
String BloodGroup=request.getParameter("BloodGroup");
String Status=request.getParameter("Status");

String HouseNoL=request.getParameter("HouseNoL");
String StreetNoL=request.getParameter("StreetNoL");
 String CityL=request.getParameter("CityL");
 String DistrictL=request.getParameter("DistrictL");
 String PinCodeL =request.getParameter("PinCodeL");
 String StateL=request.getParameter("StateL");
String CountryL=request.getParameter("CountryL");




if(true){
 b=true;		 
   

 stmt.executeUpdate("UPDATE erp.teacher SET FirstName=' "+FirstName+" ',MiddleName=' "+MiddleName+" ',LastName=' "+LastName+" ',FatherName=' "+FatherName+" ',MotherName=' "+MotherName+" ',DOB=' "+DOB+" ',Gender=' "+Gender+" ',Ug_University='"+Ug_University+"',Ug_Pass_Out_Year='"+Ug_Pass_Out_Year+"',Ug_Subject='"+Ug_Subject+"',Ug_Percentage='"+Ug_Percentage+"',Pg_University='"+Pg_University+"',Pg_Pass_Out_Year='"+Pg_Pass_Out_Year+"',Pg_Subject='"+Pg_Subject+"',Pg_Percentage='"+Pg_Percentage+"',PhoneNo=' "+PhoneNo+" ',Email=' "+Email+" ',Status=' "+Status+" ',HouseNoP=' "+HouseNoP+" ',StreetNoP=' "+StreetNoP+" ',CityP=' "+CityP+" ',DistrictP=' "+DistrictP+" ',PinCodeP=' "+PinCodeP+" ',StateP=' "+StateP+" ',CountryP=' "+CountryP+" ',Experience=' "+Experience+" ',Category=' "+Category+" ',PanNo=' "+PanNo+" ',Current_Session=' "+Current_Session+" ',MainSub=' "+MainSub+" ',BloodGroup=' "+BloodGroup+" ',HouseNoL=' "+HouseNoL+" ',StreetNoL=' "+StreetNoL+" ',CityL=' "+CityL+" ',DistrictL=' "+DistrictL+" ',PinCodeL=' "+PinCodeL+" ',StateL=' "+StateL+" ',CountryL=' "+CountryL+" ' WHERE Id='"+s2+"' ");

    
           rs = stmt.executeQuery("SELECT * FROM teacher");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/teacherprofile.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   