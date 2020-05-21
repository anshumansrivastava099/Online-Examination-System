<%@ page session="false"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<title> Profile</title>
<%@ include file="home2.jsp" %>

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

String s0=(String)session.getAttribute("Id");
boolean b=false;


	 
    String s2="";
	String s3="";
	String s4="";
	String s5="";
	String s6="";
	String s7="";
	String s8="";
	String s9="";
    String s10="";
	String s11="";
	String s12="";
	String s13="";
	String s14="";
	String s15="";
	String s16="";
	String s17="";
    String s18="";
	String s19="";
	String s20="";
	String s21="";
	String s22="";
	String s23="";
	String s24="";
	String s25="";
    String s26="";
	String s27="";
	String s28="";
	String s29="";
	String s30="";
	String s31="";
	String s32="";
	String s33="";
	String s34="";
	String s35="";
	String s36="";
	String s37="";
	String s38="";
	String s39="";
	String s40="";
	String s41="";
	
try
	{
            String url = "jdbc:mysql://localhost:3306/erp";
            
            Connection conn = DriverManager.getConnection(url,"root","");
			
            Statement stmt = conn.createStatement();
			
            ResultSet rs;
           
   
       rs = stmt.executeQuery("SELECT * FROM teacher  WHERE Id='"+s0+"'");
	   	  
	   
	  while(rs.next())
		{
		
		 
	
		   
		   s2=rs.getString("FirstName");
		   
		   s3=rs.getString("MiddleName");
		   s4=rs.getString("LastName");
		   
		   s5=rs.getString("FatherName");
		   s6=rs.getString("MotherName");
		   
		   s7=rs.getString("DOB");
		   s8=rs.getString("Gender");
		   
		   s9=rs.getString("Ug_University");
		   s10=rs.getString("Ug_Pass_Out_year");
		  s11=rs.getString("Ug_Percentage");
		   s12=rs.getString("Ug_Subject");

		   s27=rs.getString("Pg_University");
		   s39=rs.getString("Pg_Pass_Out_Year");
		   s40=rs.getString("Pg_Percentage");
		   s41=rs.getString("Pg_Subject");
		   
		   s13=rs.getString("PhoneNo");
		   s14=rs.getString("Email");
		   
		   s15=rs.getString("Status");
		   s16=rs.getString("HouseNoP");
		   
		   s17=rs.getString("StreetNoP");
		   s18=rs.getString("CityP");
		   
		   s19=rs.getString("DistrictP");
		   s20=rs.getString("PinCodeP");

		     s21=rs.getString("StateP");
		   s22=rs.getString("CountryP");
		   
		   s23=rs.getString("Experience");
		   s24=rs.getString("Category");
		   
		   s25=rs.getString("PanNo");
		   s26=rs.getString("Current_Session");
		   
		   s28=rs.getString("HouseNoL");
		   
		   s29=rs.getString("StreetNoL");
		   s30=rs.getString("CityL");
		   
		   s31=rs.getString("DistrictL");
		   s32=rs.getString("PinCodeL");
		   s33=rs.getString("CountryL");
		   s34=rs.getString("StateL");
		   s35=rs.getString("BloodGroup");
		   s36=rs.getString("MainSub");
		 
		   %>

		

<div class="card" style="margin-top: 100px;">
  <img src="profile.jpg" alt="John" style="width:100%">
  <h1><% out.println(s2);%>  </h1>
  <p class="title">Assistant Proffesor</p>
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
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s2);
																	out.println(" "+s3);
																	out.println(" "+s4);%></div><br><br><br>
					<div class="d-inline p-2 bg-primary text-white">Father Name</div>
																	=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s5);%></div><br><br><br>
				
				
					<div class="d-inline p-2 bg-primary text-white">Mother Name</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s6);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Date of Birth</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s7);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Gender</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s8);%></div><br><br><br>
				
				
				<div class="d-inline p-2 bg-primary text-white">Mobile Number</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s13);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Email-id</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s14);%></div><br><br><br>
				
				<fieldset>
				<legend>Under Graduation</legend>
				<div class="d-inline p-2 bg-primary text-white">University</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s9);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Passing Year</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s10);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Subject</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s11);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Percentage</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s12);%></div><br><br><br>
				
				</fieldset>
				
				<fieldset>
					<legend>Post Graduation</legend>
					<div class="d-inline p-2 bg-primary text-white">University</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s27);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Passing Year</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s39);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Subject</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s41);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Percentage</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s40);%></div><br><br><br>
					
					</fieldset>
				
					
					<fieldset>
						<legend>About</legend>
						<div class="d-inline p-2 bg-primary text-white">Category</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s24);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Current Session</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s26);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Experience</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s23);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Pancard Number</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s25);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Status</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s15);%></div><br><br><br>
				
					<div class="d-inline p-2 bg-primary text-white">Blood Group</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s35);%></div><br><br><br>
				
					<div class="d-inline p-2 bg-primary text-white">Main Subject</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s36);%></div><br><br><br>
				
				
				
				
					</fieldset>
				
					<fieldset>
						<legend>Permanent Address</legend>
						<div class="d-inline p-2 bg-primary text-white">House Number</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s16);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Street Number</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s17);%></div><br><br><br>
				
					<div class="d-inline p-2 bg-primary text-white">Country</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s24);%></div><br><br><br>
				
					
					<div class="d-inline p-2 bg-primary text-white">City</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s18);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">District</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s19);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">State</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s21);%></div><br><br><br>
					
					<div class="d-inline p-2 bg-primary text-white">Pincode</div>
						=
					<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s20);%></div><br><br><br>
				
				   
				   </fieldset>
				
				
				   <fieldset>
					<legend>Local Address</legend>
					<div class="d-inline p-2 bg-primary text-white">House Number</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s28);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Street Number</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s29);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Country</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s33);%></div><br><br><br>
				
				
				<div class="d-inline p-2 bg-primary text-white">City</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s30);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">District</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s31);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">State</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s34);%></div><br><br><br>
				
				<div class="d-inline p-2 bg-primary text-white">Pincode</div>
					=
				<div class="d-inline p-2 bg-dark text-white" style="margin-left: 30px;"><%out.println(s32);%></div><br><br><br>
				
				
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
		<form action="http://localhost:8080/examples/teacherprofileupdate.jsp" method="POST">
		<div class="modal-body">
			<div class="container">
				<input type="hidden" value="<%=s0%>" name="Id" >
					<div class="form-group">
					  <label for="coursename">First Name :-</label>
					  <input type="text" class="form-control" id="FirstName" value="<%=s2%>" name="FirstName" placeholder="Enter your first name">
					</div>
					<div class="form-group">
					  <label for="coursename">Middle Name :-</label>
					  <input type="text" class="form-control" id="MiddleName" value="<%=s3%>" name="MiddleName" placeholder="Enter your middle name">
					</div>
					<div class="form-group">
					  <label for="coursename">Last Name :-</label>
					  <input type="text" class="form-control" id="LastName" value="<%=s4%>" name="LastName" placeholder="Enter your last name">
					</div>
					<div class="form-group">
					  <label for="coursename">Father Name :-</label>
					  <input type="text" class="form-control" id="FatherName" value="<%=s5%>" name="FatherName" placeholder="Enter your father name">
					</div>
					<div class="form-group">
					  <label for="coursename">Mother Name :-</label>
					  <input type="text" class="form-control" id="MotherName" value="<%=s6%>" name="MotherName" placeholder="Enter your mother name">
					</div>
					<div class="form-group">
					  <label for="coursename">Date of Birth :-</label>
					  <input type="date" class="form-control" id="DOB" value="<%=s7%>" name="DOB" placeholder="Enter your birth date">
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
					<input type="number" class="form-control" id="PhoneNo" value="<%=s13%>" name="PhoneNo" placeholder="Enter your mobile number">
				  </div>
				   <div class="form-group">
					<label for="coursename">Email-Id :-</label>
					<input type="email" class="form-control" id="" value="<%=s14%>" name="Email" placeholder="Enter your email-id">
				  </div>
				  <fieldset>
					<legend>Under Graduation</legend>
					<div class="form-group">
						<label for="coursename">University :-</label>
						<input type="text" class="form-control" id="Ug_University" value="<%=s9%>" name="Ug_University" placeholder="Enter your university">
					  </div>
					<div class="form-group">
						<label for="coursename">Passing Year :-</label>
						<input type="year" class="form-control" id="Ug_Pass_Out_Year" value="<%=s10%>" name="Ug_Pass_Out_Year" placeholder="Enter your passing year">
					  </div>
					<div class="form-group">
						<label for="coursename">Subject :-</label>
						<input type="text" class="form-control" id="Ug_Subject" value="<%=s12%>" name="Ug_Subject" placeholder="Enter your subject">
					  </div>
					<div class="form-group">
						<label for="coursename">Percentage :-</label>
						<input type="text" class="form-control" id="Ug_Percentage" value="<%=s11%>" name="Ug_Percentage" placeholder="Enter your percentage">
					  </div>
				  </fieldset>
				  <fieldset>
					<legend>Post Graduation</legend>
					<div class="form-group">
						<label for="coursename">University :-</label>
						<input type="text" class="form-control" id="Pg_University" value="<%=s27%>" name="Pg_University" placeholder="Enter your university">
					  </div>
					<div class="form-group">
						<label for="coursename">Passing Year :-</label>
						<input type="year" class="form-control" id="Pg_Pass_Out_Year" value="<%=s39%>" name="Pg_Pass_Out_Year" placeholder="Enter your passing year">
					  </div>
					<div class="form-group">
						<label for="coursename">Subject :-</label>
						<input type="text" class="form-control" id="Pg_Subject" value="<%=s41%>" name="Pg_Subject" placeholder="Enter your subject">
					  </div>
					<div class="form-group">
						<label for="coursename">Percentage :-</label>
						<input type="text" class="form-control" id="Pg_Percentage" value="<%=s40%>" name="Pg_Percentage" placeholder="Enter your percentage">
					  </div>
				  </fieldset>
				  <fieldset>
					  <legend>About</legend>

					  <div class="form-group">
						<label for="coursename">Category :-</label>
						<input type="text" class="form-control" id="Category" value="<%=s24%>" name="Category" placeholder="Enter your Category">
					  </div>
					  <div class="form-group">
						<label for="coursename">Current Session :-</label>
						<input type="year" class="form-control" id="Current_Session" value="<%=s26%>" name="Current_Session" placeholder="Enter your current session">
					  </div>
					  <div class="form-group">
						<label for="coursename">Experience :-</label>
						<input type="year" class="form-control" id="Experience" value="<%=s23%>" name="Experience" placeholder="Enter your Experience">
					  </div>
					  <div class="form-group">
						<label for="coursename">Pancard Number :-</label>
						<input type="text" class="form-control" id="PanNo" value="<%=s25%>" name="PanNo" placeholder="Enter your Pancard Number">
					  </div>
					  <div class="form-group">
						<label for="coursename">Status :-</label>
						<input type="text" class="form-control" id="Status" value="<%=s15%>" name="Status" placeholder="Enter your Status yes or no">
					  </div>
					  <div class="form-group">
						<label for="coursename">Blood Group :-</label>
						<input type="text" class="form-control" id="BloodGroup" value="<%=s35%>" name="BloodGroup" placeholder="Enter your blood group">
					  </div>
					  <div class="form-group">
						<label for="coursename">Main Subject :-</label>
						<input type="text" class="form-control" id="MainSub" value="<%=s36%>" name="MainSub" placeholder="Enter your blood group">
					  </div>
				  </fieldset>
				  <fieldset>
					  <legend>Permanent Address</legend>
					  <div class="form-group">
						<label for="coursename">House Number :-</label>
						<input type="text" class="form-control" id="HouseNoP" value="<%=s16%>" name="HouseNoP" placeholder="Enter your house number">
					  </div>
					  <div class="form-group">
						<label for="coursename">Street Number :-</label>
						<input type="text" class="form-control" id="StreetNoP" value="<%=s17%>" name="StreetNoP" placeholder="Enter your street number">
					  </div>
					  <div class="form-group">
						<label for="coursename">Country :-</label>
						<input type="text" class="form-control" id="CountryP" value="<%=s22%>" name="CountryP" placeholder="Enter your country">
					  </div>
					  <div class="form-group">
						<label for="coursename">City :-</label>
						<input type="text" class="form-control" id="CityP" value="<%=s18%>" name="CityP" placeholder="Enter your city">
					  </div>
					  <div class="form-group">
						<label for="coursename">District :-</label>
						<input type="text" class="form-control" id="DistrictP" value="<%=s19%>" name="DistrictP" placeholder="Enter your district">
					  </div>
					  <div class="form-group">
						<label for="coursename">State :-</label>
						<input type="text" class="form-control" id="StateP" value="<%=s21%>" name="StateP" placeholder="Enter your state">
					  </div>
					  <div class="form-group">
						<label for="coursename">Pin Code :-</label>
						<input type="number" class="form-control" id="PinCodeP" value="<%=s20%>" name="PinCodeP" placeholder="Enter your oincode">
					  </div>
				  </fieldset>
				  <fieldset>
					  <legend>Local Address</legend>
					  <div class="form-group">
						<label for="coursename">House Number :-</label>
						<input type="text" class="form-control" id="HouseNoL" value="<%=s28%>" name="HouseNoL" placeholder="Enter your house number">
					  </div>
					  <div class="form-group">
						<label for="coursename">Street Number :-</label>
						<input type="text" class="form-control" id="StreetNoL" value="<%=s29%>" name="StreetNoL" placeholder="Enter your street number">
					  </div>
					  <div class="form-group">
						<label for="coursename">Country :-</label>
						<input type="text" class="form-control" id="CountryL" value="<%=s33%>" name="CountryL" placeholder="Enter your country">
					  </div>
					  <div class="form-group">
						<label for="coursename">City :-</label>
						<input type="text" class="form-control" id="CityL" value="<%=s30%>" name="CityL" placeholder="Enter your city">
					  </div>
					  <div class="form-group">
						<label for="coursename">District :-</label>
						<input type="text" class="form-control" id="DistrictL" value="<%=s31%>" name="DistrictL" placeholder="Enter your district">
					  </div>
					  <div class="form-group">
						<label for="coursename">State :-</label>
						<input type="text" class="form-control" id="StateL" value="<%=s34%>" name="StateL" placeholder="Enter your state">
					  </div>
					  <div class="form-group">
						<label for="coursename">Pin Code :-</label>
						<input type="number" class="form-control" id="PinCodeL" value="<%=s32%>" name="PinCodeL" placeholder="Enter your pincode">
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

 



 <%	  	}
            conn.close();
        }
		catch (Exception e) {
            out.println("Got an exception! ");
            out.println(e);
           }
		   
%>

    </body>
	 </html>