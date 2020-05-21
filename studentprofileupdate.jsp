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


String firstname=request.getParameter("FirstName");
String middlename=request.getParameter("MiddleName");
String lastname=request.getParameter("LastName");
String fathername=request.getParameter("FatherName");
String fatherocp=request.getParameter("OccuptionF");
String fmobile=request.getParameter("FatherNo");
String mothername=request.getParameter("MotherName");
String motherocp=request.getParameter("OccuptionM");
String gender=request.getParameter("Gender");
String dateofbirth=request.getParameter("DOB");
String mobile=request.getParameter("PhoneNo");
String email=request.getParameter("Email");
String ses=request.getParameter("session1");
String boardx=request.getParameter("BoardX");
String percentx=request.getParameter("PercentageX");
String yopx=request.getParameter("YearOfPassingX");
  String boardxii=request.getParameter("BoardXII");
String percentxii=request.getParameter("PercentageXII");
String yopxii=request.getParameter("YearOfPassingXII");
 String religion=request.getParameter("Religion");
String cast=request.getParameter("Cast");
 String cityp=request.getParameter("CityP");
String districtp=request.getParameter("DistrictP");
String pincodep=request.getParameter("PinCodeP");
 String areap=request.getParameter("AreaP");
String localityp=request.getParameter("LocalityP");
 String countryp=request.getParameter("CountryP");
String housep=request.getParameter("HouseNoP");
 String addhar=request.getParameter("AddharNo");
  String cityl=request.getParameter("CityL");
String districtl=request.getParameter("DistrictL");
String pincodel=request.getParameter("PinCodeL");
 String areal=request.getParameter("AreaL");
String localityl=request.getParameter("LocalityL");
 String countryl=request.getParameter("CountryL");
String housel=request.getParameter("HouseNoL");


if(true){
 b=true;		 
   

 stmt.executeUpdate("UPDATE erp.student SET FirstName=' "+firstname+" ',MiddleName=' "+middlename+" ',LastName=' "+lastname+" ',FatherName=' "+fathername+" ',OccuptionF=' "+fatherocp+" ',FatherNo=' "+fmobile+" ',MotherName=' "+mothername+" ',OccuptionM=' "+motherocp+" ',DOB=' "+dateofbirth+" ',Gender=' "+gender+" ',BoardX='"+boardx+"',YearOfPassingX='"+yopx+"',PercentageX='"+percentx+"',BoardXII='"+boardxii+"',YearOfPassingXII='"+yopxii+"',PercentageXII='"+percentxii+"',PhoneNo=' "+mobile+" ',Email=' "+email+" ',HouseNoP=' "+housep+" ',AreaP=' "+areap+" ',CityP=' "+cityp+" ',DistrictP=' "+districtp+" ',PinCodeP=' "+pincodep+" ',CountryP=' "+countryp+" ',Cast=' "+cast+" ',AddharNo=' "+addhar+" ',session1=' "+ses+" ',HouseNoL=' "+housel+" ',AreaL=' "+areal+" ',CityL=' "+cityl+" ',DistrictL=' "+districtl+" ',PinCodeL=' "+pincodel+" ',CountryL=' "+countryl+" ' WHERE Id='"+s2+"' ");

    
           rs = stmt.executeQuery("SELECT * FROM student");
         }
       
        
           conn.close();
       } catch (Exception e) {
         b=false;
           out.println("Got an exception! ");
           out.println(e);
}

if(b){
 RequestDispatcher dispatcher=request.getRequestDispatcher("/studentprofile2.jsp");
   dispatcher.forward(request,response);
   }
  
    

%>
   