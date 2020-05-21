<!DOCTYPE html>
<html>
<head>
<title> Teacher Registration Form</title>
<%@ include file="home2.jsp" %>
String idt=(String)session.getAttribute("Id");
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="container" style="margin-top: 80px;">
  <form action="http://localhost:8080/examples/teacherreg.jsp" method="GET">
<div class="reg">

<h2>Register Form</h2><br>
 <label>First Name:</label>
 <input type="text" name="FirstName" placeholder="First Name" id="name"><br><br>
  <label>Middle Name:</label>
  <input type="text" name="MiddleName" placeholder="MiddleName" id="name"><br><br>
<label>Last Name:</label>
<input type="text" name="LastName" placeholder="LastName" id="name"><br><br>
<label>Father Name:</label>
<input type="text" name="FatherName" placeholder="Father Name" id="name"><br><br>
<label>Date Of Birth:</label>
<input type="date" name="DOB" placeholder="First Name" id="name"><br><br>

<label>Gender :</label>
  <label>Female </label><input type="radio" id="ma" name="F" value=Female><span id="ma">
 <span id="ma">  
   <label>Male </label><input type="radio" id="ma"  name="F"  value=Male><span id="ma">
  <span id="ma">  <br><br>
    <label> Mobile Number</label>
<input type="number" name="Phon Number" placeholder="Mobile Number" id="name"><br><br>
<label>Email</label>
<input type="email" name="Email" placeholder="Email" id="name"><br><br>

 <hr>
 <fieldset>
   <legend>Under Graduation</legend>
   <label>University</label>
   <input type="text" name="Ug_University" placeholder="University" id="name"><br><br>
   <label>Passing Year</label>
   <input type="year" name="Ug_Pass_Out_Year" placeholder="Passing Year" id="name"><br><br>
   <label>Subject</label>
   <input type="year" name="Ug_Subject" placeholder="Subject" id="name"><br><br>
   <label>Percentage</label>
   <input type="text" name="Ug_Percentage" placeholder="Percentage" id="name"><br><br>
</fieldset>
 
<hr>
<fieldset>
  <legend>Post Graduation</legend>
  <label>University</label>
  <input type="text" name="Pg_University" placeholder="University" id="name"><br><br>
  <label>Passing Year</label>
  <input type="year" name="Pg_Pass_Out_Year" placeholder="Passing Year" id="name"><br><br>
  <label>Subject</label>
  <input type="year" name="Pg_Subject" placeholder="Subject" id="name"><br><br>
  <label>Percentage</label>
  <input type="text" name="Pg_Percentage" placeholder="Percentage" id="name"><br><br>
</fieldset>
<hr>
<fieldset>
  <legend>About</legend>
  <label> Experience</label>
<input type="text" name="Experience" placeholder="enter an experience" id="name"><br><br>
<label> Category</label>
<input type="text" name="Category" placeholder="Pin code" id="name"><br><br>
<label> Pan Number</label>
<input type="text" name="PanNo" placeholder="Pan Number" id="name"><br><br>
<label> Current Session</label>
<input type="text" name="Current_Session" placeholder="Session Year" id="name"><br><br>
<label>Main Sub</label>
<input type="text" name="MainSub" placeholder="enter main subject" id="name"><br><br>
  <label>Blood group</label>
<input type="text" name="BloodGroup" placeholder="enter the blood group" id="name"><br><br>
<label>Status:</label><br>
 <input type="radio" id="ma" name="p"><span id="ma">
 yes<span id="ma">  
  <input type="radio" id="ma"  name="p"><span id="ma">
 no<span id="ma">  <br><br>
 

</fieldset>

<hr>


<fieldset>
  <legend>Permanent Address</legend>
  <label>House No</label>
  <input type="text" name="HouseNoP" placeholder="House Number" id="name"><br><br>
  <label>Street No</label>
  <input type="text" name="StreetNoP" placeholder="Street number" id="name"><br><br>
  <label>City:</label>
  <input type="text" name="CityP" placeholder="Enter City" id="name"><br><br>
  
  <label>District:</label>
  <input type="text" name="DistrictP" placeholder="Enter District" id="name"><br><br>
  <label>Pin Code</label>
  <input type="Number" name="PinCodeP" placeholder="Pin code" id="name"><br><br>
  <label>State</label>
  <input type="text" name="StateP" placeholder="Enter State" id="name"><br><br>
  
  <label>Country</label>
  <input type="text" name="CountryP" placeholder="Enter Country" id="name"><br><br>
  

</fieldset>

 
<hr>
<fieldset>
  <legend>Local Address</legend>
  <label>House No</label>
  <input type="text" name="HouseNoL" placeholder="House Number" id="name"><br><br>
  <label>Street No</label>
  <input type="text" name="StreetNoL" placeholder="Street number" id="name"><br><br>
  <label>City:</label>
  <input type="text" name="CityL" placeholder="Enter City" id="name"><br><br>
  
  <label>District:</label>
  <input type="text" name="DistrictL" placeholder="Enter District" id="name"><br><br>
  <label>Pin Code</label>
  <input type="Number" name="PinCodeL" placeholder="Pin code" id="name"><br><br>
  <label>State</label>
  <input type="text" name="StateL" placeholder="Enter State" id="name"><br><br>
  
  <label>Country</label>
  <input type="text" name="CountryL" placeholder="Enter Country" id="name"><br><br>
  

</fieldset>

 
 <button type ="submit" id="sub">Register</button>
 </form>
</div>
1

  
  

</body>
</html>