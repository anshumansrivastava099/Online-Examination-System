<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Profile</title>
<%@ include file="studenthomepage2.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.title {
  color: grey;
  font-size: 18px;
}
button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


button:hover, a:hover {
  opacity: 0.7;
}

</style>
</head>
<body>

<%
String sa=(String)session.getAttribute("Id");
boolean b=false;

String s1=" ";
String s2=" ";
String s3=" ";
String s4=" ";
String s5=" ";
String s6=" "; 
String s7=" ";
String s8=" ";
String s9=" ";
String s10=" ";
String s11=" ";
String s12=" ";
String s13=" ";
String s14=" ";
String s15=" ";
String s16=" ";
String s17=" ";
String s18=" ";
String s19=" ";
String s20=" ";
String s21=" ";
String s22=" ";
String s23=" ";
String s24=" ";
String s25=" ";
String s26=" ";
String s27=" ";
String s28=" ";
String s29=" ";
String s30=" ";
String s31=" ";
String s32=" ";
String s33=" ";
String s34=" ";
String s35=" ";
String s36=" ";
String s37=" ";
String s38=" ";
String s39=" ";




try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
        rs = stmt.executeQuery("SELECT * FROM student WHERE Id='"+sa+"' ");
	
	  	
	    while(rs.next())
		  {
			 b=true;
			
				s1=rs.getString("FirstName");
				s2=rs.getString("MiddleName");
			    s3=rs.getString("LastName"); 
				s4=rs.getString("FatherName");
				s5=rs.getString("OccuptionF");
			    s6=rs.getString("FatherNo");
			    s7=rs.getString("MotherName");
		        s8=rs.getString("OccuptionM");
                 s9=rs.getString("Gender");
                s10=rs.getString("DOB");
                s11=rs.getString("PhoneNO");
               
                	   
			    s14=rs.getString("Email");
                	  
			   
                	 
			    s16=rs.getString("session1");
                	  
				s17=rs.getString("BoardX");
               
			    s18=rs.getString("PercentageX");
                
               s19=rs.getString("YearOfPassingX");
               
           
			   s20=rs.getString("BoardXII");
                	
			    s21=rs.getString("PercentageXII");
                	 
			    s22=rs.getString("YearOfPassingXII");
                	 

			   s39=rs.getString("AddharNo");
              
			
              

			    s24=rs.getString("Cast");
               
			   s25=rs.getString("CityP");
                	  
			    s26=rs.getString("DistrictP");
               

			    s27=rs.getString("PinCodeP");
              
			    s28=rs.getString("AreaP");
               

			    s29=rs.getString("LocalityP");
              

			   s30=rs.getString("CountryP");
              
               s31=rs.getString("HouseNoP");
               
			   s32=rs.getString("CityL");
              
			    s33=rs.getString("DistrictL");
                

			    s34=rs.getString("PinCodeL");
                	  
			    s35=rs.getString("AreaL");
                	   

			    s36=rs.getString("LocalityL");
              

			   s37=rs.getString("CountryL");
              
               s38=rs.getString("HouseNoL");%>
             

			   <div class="card" style="margin-top: 100px;">
				<img src="profile.jpg" alt="John" style="width:100%">
				<h1><% out.println(s1);%>  </h1>
				<p class="title">Student</p>
				<p>CWT</p>
				<p><button data-toggle="modal" data-target="#profileinfo">More About</button></p>
				<br>
				<p><button data-toggle="modal" data-target="#profileupdate">Update Profile</button></p>
			  </div>
			  
			  
			  <div class="modal fade" id="profileinfo" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">About Information</h5>
					   
					  </div>
					  
					  <div class="modal-body">
						  <div class="container">
							  <div class="d-inline p-2 bg-primary text-white">Name</div>
							  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s1);
																				  out.println(" "+s2);
																				  out.println(" "+s3);%></div><br><br><br>
																				  <hr>

							   <fieldset>
					            <legend>Gurdian Detail</legend>
								  <div class="d-inline p-2 bg-primary text-white">Father Name</div>
																				  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s4);%></div><br><br><br>
								  <div class="d-inline p-2 bg-primary text-white">Father Occupation</div>
																				  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s5);%></div><br><br><br>
							  
								  <div class="d-inline p-2 bg-primary text-white">Father Mobile Number</div>
																				  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s6);%></div><br><br><br>
							  
							  
								  <div class="d-inline p-2 bg-primary text-white">Mother Name</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s7);%></div><br><br><br>
								  <div class="d-inline p-2 bg-primary text-white">Mother Occupation</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s8);%></div><br><br><br>

							   </fieldset>

							   <hr>
							  
							  <div class="d-inline p-2 bg-primary text-white">Date of Birth</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s10);%></div><br><br><br>
							  
							  <div class="d-inline p-2 bg-primary text-white">Gender</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s9);%></div><br><br><br>
							  
							  
							  <div class="d-inline p-2 bg-primary text-white">Mobile Number</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s11);%></div><br><br><br>
							  
							  <div class="d-inline p-2 bg-primary text-white">Email-id</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s14);%></div><br><br><br>
							  <hr>
							  <fieldset>
							  <legend>X Details</legend>
							  <div class="d-inline p-2 bg-primary text-white">Board</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s17);%></div><br><br><br>
							  
							  <div class="d-inline p-2 bg-primary text-white">Passing Year</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s18);%></div><br><br><br>
							  
							  
							  <div class="d-inline p-2 bg-primary text-white">Percentage</div>
								  =
							  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s19);%></div><br><br><br>
							  
							  </fieldset>
							  <hr>
							  <fieldset>
								  <legend>XII Details</legend>
								  <div class="d-inline p-2 bg-primary text-white">Board</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s20);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Passing Year</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s22);%></div><br><br><br>
								  
								 
								  
								  <div class="d-inline p-2 bg-primary text-white">Percentage</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s21);%></div><br><br><br>
								  
								  </fieldset>
							  
								  <hr>
								  <fieldset>
									  <legend>About</legend>
									  <div class="d-inline p-2 bg-primary text-white">Category</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s24);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Current Session</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s16);%></div><br><br><br>
								  
								 
								  <div class="d-inline p-2 bg-primary text-white">Adhar Number</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s39);%></div><br><br><br>
							      </fieldset>
							  <hr>
								  <fieldset>
									  <legend>Permanent Address</legend>
									  <div class="d-inline p-2 bg-primary text-white">House Number</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s31);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Street Number</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s28);%></div><br><br><br>
							  
								  <div class="d-inline p-2 bg-primary text-white">Country</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s30);%></div><br><br><br>
							  
								  
								  <div class="d-inline p-2 bg-primary text-white">City</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s25);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">District</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s26);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Locality</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s29);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Pincode</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s27);%></div><br><br><br>
							  
								 
								 </fieldset>
							  <hr>
							  
								 <fieldset>
								  <legend>Local Address</legend>
								  <div class="d-inline p-2 bg-primary text-white">House Number</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s38);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Street Number</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s35);%></div><br><br><br>
							  
								  <div class="d-inline p-2 bg-primary text-white">Country</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s37);%></div><br><br><br>
							  
								  
								  <div class="d-inline p-2 bg-primary text-white">City</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s32);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">District</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s33);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Locality</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s36);%></div><br><br><br>
								  
								  <div class="d-inline p-2 bg-primary text-white">Pincode</div>
									  =
								  <div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s34);%></div><br><br><br>
							  
							  
							  
							  </fieldset>
							   </div>
							   </div>
				  
					  <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
					  </div>
					</div>
				  </div>
				</div>
			  </div>
			  
			  
			  
			  <div class="modal fade" id="profileupdate" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				  <div class="modal-dialog" role="document">
					<div class="modal-content">
					  <div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Upadte your Profile</h5>
					   
					  </div>
					  <form action="http://localhost:8080/examples/studentprofileupdate.jsp" method="POST">
					  <div class="modal-body">
						  <div class="container">
							  <input type="hidden" value="<%=sa%>" name="Id" >
								  <div class="form-group">
									<label for="coursename">First Name :-</label>
									<input type="text" class="form-control" id="FirstName" value="<%=s1%>" name="FirstName" placeholder="Enter your first name">
								  </div>
								  <div class="form-group">
									<label for="coursename">Middle Name :-</label>
									<input type="text" class="form-control" id="MiddleName" value="<%=s2%>" name="MiddleName" placeholder="Enter your middle name">
								  </div>
								  <div class="form-group">
									<label for="coursename">Last Name :-</label>
									<input type="text" class="form-control" id="LastName" value="<%=s3%>" name="LastName" placeholder="Enter your last name">
								  </div>
                                   <hr>
								  <fieldset>
									  <legend>Gurdian Detail</legend>								 
									   <div class="form-group">
									<label for="coursename">Father Name :-</label>
									<input type="text" class="form-control" id="FatherName" value="<%=s4%>" name="FatherName" placeholder="Enter your father name">
								  </div>
								  <div class="form-group">
									<label for="coursename">Father Occupation :-</label>
									<input type="text" class="form-control" id="FatherName" value="<%=s5%>" name="OccuptionF" placeholder="Enter your father Occupation">
								  </div>
								  <div class="form-group">
									<label for="coursename">Father Number :-</label>
									<input type="text" class="form-control" id="FatherName" value="<%=s6%>" name="FatherNo" placeholder="Enter your father number">
								  </div>
								  <div class="form-group">
									<label for="coursename">Mother Name :-</label>
									<input type="text" class="form-control" id="MotherName" value="<%=s7%>" name="MotherName" placeholder="Enter your mother name">
								  </div>
								  <div class="form-group">
									<label for="coursename">Mother Occupation :-</label>
									<input type="text" class="form-control" id="MotherName" value="<%=s8%>" name="OccuptionM" placeholder="Enter your mother Occupation">
								  </div>
								  </fieldset>
                                      <hr>

								  <div class="form-group">
									<label for="coursename">Date of Birth :-</label>
									<input type="date" class="form-control" id="DOB" value="<%=s10%>" name="DOB" placeholder="Enter your birth date">
								  </div>
								  <div class="form-group">
									  <label for="answer">Gender :-</label>
								  <div class="form-check">
									<label class="form-check-label" style="margin-left: 130px;">
									  <input type="radio" class="form-check-input" name="Gender" value="male">Male
									</label>
								  </div>
								  <div class="form-check">
									<label class="form-check-label" style="margin-left: 130px;">
									  <input type="radio" class="form-check-input" name="Gender" value="female">Female
									</label>
								  </div>
								 </div>
								 <div class="form-group">
								  <label for="coursename">Mobile Number :-</label>
								  <input type="number" class="form-control" id="PhoneNo" value="<%=s11%>" name="PhoneNo" placeholder="Enter your mobile number">
								</div>
								 <div class="form-group">
								  <label for="coursename">Email-Id :-</label>
								  <input type="email" class="form-control" id="" value="<%=s14%>" name="Email" placeholder="Enter your email-id">
								</div>
								<fieldset>
								  <legend>X Details</legend>
								  <div class="form-group">
									  <label for="coursename">Board :-</label>
									  <input type="text" class="form-control" id="Ug_University" value="<%=s17%>" name="BoardX" placeholder="Enter your Board">
									</div>
								  <div class="form-group">
									  <label for="coursename">Passing Year :-</label>
									  <input type="year" class="form-control" id="YearOfPassingX" value="<%=s17%>" name="YearOfPassingX" placeholder="Enter your passing year">
									</div>
								 
								  <div class="form-group">
									  <label for="coursename">Percentage :-</label>
									  <input type="text" class="form-control" id="PercentageX" value="<%=s18%>" name=PercentageX" placeholder="Enter your percentage">
									</div>
								</fieldset>
								<hr>
								<fieldset>
								  <legend>XII Details</legend>
								  <div class="form-group">
									  <label for="coursename">Board :-</label>
									  <input type="text" class="form-control" id="Ug_University" value="<%=s17%>" name="BoardXII" placeholder="Enter your Board">
									</div>
								  <div class="form-group">
									  <label for="coursename">Passing Year :-</label>
									  <input type="year" class="form-control" id="YearOfPassingXII" value="<%=s17%>" name="YearOfPassingXII" placeholder="Enter your passing year">
									</div>
								 
								  <div class="form-group">
									  <label for="coursename">Percentage :-</label>
									  <input type="text" class="form-control" id="PercentageXII" value="<%=s18%>" name=PercentageXII" placeholder="Enter your percentage">
									</div>
								</fieldset>
								<hr>
								
								<fieldset>
									<legend>About</legend>
			  
									<div class="form-group">
									  <label for="coursename">Category :-</label>
									  <input type="text" class="form-control" id="Cast" value="<%=s24%>" name="Cast" placeholder="Enter your Category">
									</div>
									<div class="form-group">
									  <label for="coursename">Current Session :-</label>
									  <input type="year" class="form-control" id="session1" value="<%=s16%>" name="session1" placeholder="Enter your current session">
									</div>
									
									<div class="form-group">
									  <label for="coursename">Addhar Number :-</label>
									  <input type="text" class="form-control" id="AddharNo" value="<%=s39%>" name="AddharNo" placeholder="Enter your Pancard Number">
									</div>
									
									
								</fieldset>

								<hr>
								<fieldset>
									<legend>Permanent Address</legend>
									<div class="form-group">
									  <label for="coursename">House Number :-</label>
									  <input type="text" class="form-control" id="HouseNoP" value="<%=s31%>" name="HouseNoP" placeholder="Enter your house number">
									</div>
									<div class="form-group">
									  <label for="coursename">Street Number :-</label>
									  <input type="text" class="form-control" id="AreaP" value="<%=s28%>" name="AreaP" placeholder="Enter your street number">
									</div>
									<div class="form-group">
									  <label for="coursename">Country :-</label>
									  <input type="text" class="form-control" id="CountryP" value="<%=s30%>" name="CountryP" placeholder="Enter your country">
									</div>
									<div class="form-group">
									  <label for="coursename">City :-</label>
									  <input type="text" class="form-control" id="CityP" value="<%=s25%>" name="CityP" placeholder="Enter your city">
									</div>
									<div class="form-group">
									  <label for="coursename">District :-</label>
									  <input type="text" class="form-control" id="DistrictP" value="<%=s26%>" name="DistrictP" placeholder="Enter your district">
									</div>
									<div class="form-group">
									  <label for="coursename">Locality :-</label>
									  <input type="text" class="form-control" id="LocalityP" value="<%=s29%>" name="LocalityP" placeholder="Enter your state">
									</div>
									<div class="form-group">
									  <label for="coursename">Pin Code :-</label>
									  <input type="number" class="form-control" id="PinCodeP" value="<%=s27%>" name="PinCodeP" placeholder="Enter your oincode">
									</div>
								</fieldset>

								<hr>
								<fieldset>
									<legend>Local Address</legend>
									<div class="form-group">
										<label for="coursename">House Number :-</label>
										<input type="text" class="form-control" id="HouseNoL" value="<%=s38%>" name="HouseNoL" placeholder="Enter your house number">
									  </div>
									  <div class="form-group">
										<label for="coursename">Street Number :-</label>
										<input type="text" class="form-control" id="AreaL" value="<%=s35%>" name="AreaL" placeholder="Enter your street number">
									  </div>
									  <div class="form-group">
										<label for="coursename">Country :-</label>
										<input type="text" class="form-control" id="CountryL" value="<%=s37%>" name="CountryL" placeholder="Enter your country">
									  </div>
									  <div class="form-group">
										<label for="coursename">City :-</label>
										<input type="text" class="form-control" id="CityL" value="<%=s32%>" name="CityL" placeholder="Enter your city">
									  </div>
									  <div class="form-group">
										<label for="coursename">District :-</label>
										<input type="text" class="form-control" id="DistrictL" value="<%=s33%>" name="DistrictL" placeholder="Enter your district">
									  </div>
									  <div class="form-group">
										<label for="coursename">Locality :-</label>
										<input type="text" class="form-control" id="LocalityL" value="<%=s36%>" name="LocalityL" placeholder="Enter your state">
									  </div>
									  <div class="form-group">
										<label for="coursename">Pin Code :-</label>
										<input type="number" class="form-control" id="PinCodeL" value="<%=s34%>" name="PinCodeL" placeholder="Enter your oincode">
									  </div>
									
								</fieldset>
			  
			  
			  
									</div>
							   </div>
				  
					  <div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-primary">Save changes</button>
					  </form>
					  </div>
					</div>
				  </div>
				</div>
				  





		<%	 }
	
			         
            conn.close();
        } catch (Exception e) {
			b=false;
            out.println("Got an exception! ");
            out.println(e);
}
	 
%>



     </body>
	 </html>