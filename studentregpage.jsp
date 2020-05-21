
<HTML>
<HEAD>
<TITLE>Student Registration Form </TITLE>
<%@ include file="studenthomepage2.jsp" %>
String ids=(String)session.getAttribute("Id");
<link rel="stylesheet" href="style.css" type="text/css">
</HEAD>
<BODY>
<h1>Student Regestration Form</h1>
<div class="reg container my-4">
<form  action="http://localhost:8080/examples/studentinsert.jsp" method="GET">
	<h2>Register Form</h2><br>
<label>First Name :</label><br>
<input type="text" name="FirstName" id="name" placeholder="Enter First Name"><br><br>
<label>Middle Name :</label><br>
<input type="text" name="MiddleName" id="name" placeholder="Enter Middle Name"><br><br>
<label>Last Name :</label><br>
<input type="text" name="LastName" id="name" placeholder="Enter Last Name"><br><br>
<label>Father Name :</label><br>
<input type="text" name="FatherName" id="name" placeholder="Enter Middle Name"><br><br>
<label>Father Occupation :</label><br>
<input type="text" name="OccuptionF" id="name" placeholder="Enter Middle Name"><br><br>
<label>Mother Name :</label><br>
<input type="text" name="MotherName" id="name" placeholder="Enter Middle Name"><br><br>
<label>Mother Occupation :</label><br>
<input type="text" name="OccuptionM" id="name" placeholder="Enter Middle Name"><br><br>
<label>Gmail :</label><br>
<input type="email" name="Email" id="name" placeholder="Enter Email"><br><br>
<label>Date of Birth :</label><br>
<input type="date" name="DOB" id="name" placeholder="Enter DOB"><br><br>
<label>Mobile Number :</label><br>
<input type="number" name="PhoneNo" id="name" placeholder="Enter Mobile Number"><br><br>
<label>Father Number :</label><br>
<input type="number" name="FatherNo" id="name" placeholder="Enter Mobile Number"><br><br>

<label>Gender :</label><br>
<input type="radio" name="Gender" value="M" v id="ma"> <span id="ma">Male</span>
<input type="radio" name="Gender" value="F" id="ma"> <span id="ma">Female</span>
<input type="radio" name="Gender" value="O" id="ma"> <span id="ma">Others</span><br><br>
<label>Session :</label><br>
<select name="session1" id="ses">
<option>2000</option>
<option>2001</option>
<option>2002</option>
<option>2003</option>
<option>2004</option>
<option>2005</option>
<option>2006</option>
<option>2007</option>
<option>2008</option>
<option>2009</option>
<option>2010</option>
<option>2011</option>
<option>2012</option>
<option>2013</option>
<option>2014</option>
<option>2015</option>
<option>2016</option>
<option>2017</option>
<option>2018</option>
<option>2019</option>
</select><br><br>
<h3>High School Detail :</h3>
<label>Board :</label>
<input type="text" name="BoardX" id="name" placeholder="Enter board">
<label>  Percentage :</label>
<input type="text" name="PercentageX"id="name" placeholder="Enter percentage"><br>
<label>Year Of Passing :</label>
<input type="text" name="YearOfPassingX"id="name" placeholder="Enter year"><br><br>
<h3>Intermediate Detail :</h3>
<label>Board :</label>
<input type="text" name="BoardXII" id="name" placeholder="Enter board">
<label>  Percentage :</label>
<input type="text" name="PercentageXII" id="name" placeholder="Enter percentage"><br>
<label>Year Of Passing :</label>
<input type="text" name="YearOfPassingXII" id="name" placeholder="Enter year"><br><br>

<label>Cast :</label>
<select name="Cast" id="name">
<option>GEN</option>
<option>SC</option>
<option>ST</option>
<option>OBC</option>
</select><br><br>
<h4>Permanent Address :</h4>
<label>Country :</label>
<select name="CountryP" id="name">
<option value="94">India</option>
	<option value="1">Afghanistan</option>
	<option value="240">Aland Islands</option>
	<option value="2">Albania</option>
	<option value="3">Algeria</option>
	<option value="4">American Samoa</option>
	<option value="5">Andorra</option>
	<option value="6">Angola</option>
	<option value="7">Anguilla</option>
	<option value="8">Antarctica</option>
	<option value="9">Antigua and Barbuda</option>
	<option value="206">Tajikistan</option>


	<option value="1000"> Other </option>
</select><br>
<label>City :</label>
<select name="CityP" id="name">
<option value="BSB">Varanasi</option>
<option value="ALD">Allabhad</option>
<option value="DLI">Delhi</option>
<option value="GZB">Ghaziabad</option>
</select><br>
<label>District :</label>
<select name="DistrictP" id="name">
<option value="UP">Uttar Pardesh</option>
<option value="MP">Madhya Pardesh</option>
<option value="WB">West Bengal</option>
</select><br>
<label>Pin Code :</label>
<input type="text" name="PinCodeP" id="name" placeholder="Enter the pincode"><br>
<label>Area :</label>
<input type="text" name="AreaP" id="name" placeholder="Enter your area"><br>
<label>Locality :</label>
<input type="text" name="LocalityP" id="name" placeholder="Enter your locality"><br>
<label>House Number :</label>
<input type="text name="HouseNoP" id="name" placeholder="Enter the house number"><br><br>

<h4>Local Address :</h4>
<label>Country :</label>
<select name="CountryL" id="name">
<option value="94">India</option>
	<option value="1">Afghanistan</option>
	<option value="240">Aland Islands</option>
	<option value="2">Albania</option>
	<option value="3">Algeria</option>


	<option value="118">Liechtenstein</option>
	
	<option value="160">Pakistan</option>
	<option value="161">Palau</option>

	<option value="184">Serbia</option>

	<option value="232">Virgin Islands, US</option>
	<option value="234">Wallis and Futuna Islands</option>
	<option value="235">Western Sahara</option>
	<option value="236">Yemen</option>
	<option value="238">Zambia</option>
	<option value="239">Zimbabwe</option>
	<option value="1000"> Other </option>
</select><br>
<label>City :</label>
<select name="CityL" id="name">
<option value="BSB">Varanasi</option>
<option value="ALD">Allabhad</option>
<option value="DLI">Delhi</option>
<option value="GZB">Ghaziabad</option>
</select><br>
<label>District :</label>
<select name="DistrictL" id="name">
<option value="UP">Uttar Pardesh</option>
<option value="MP">Madhya Pardesh</option>
<option value="WB">West Bengal</option>
</select><br>
<label>Pin Code :</label>
<input type="text" name="PinCodeL" id="name" placeholder="Enter the pincode"><br>
<label>Area :</label>
<input type="text" name="AreaL" id="name" placeholder="Enter your area"><br>
<label>Locality :</label>
<input type="text" name="LocalityL" id="name" placeholder="Enter your locality"><br>
<label>House Number :</label>
<input type="text name="HouseNoL" id="name" placeholder="Enter the house number"><br><br>
<label>Addhar Card Number :</label>
<input type="text" name="AddharNo" id="name" placeholder="Enter the adhaar card number"><br><br>

<input type="submit" value="Register" id="sub">
</form>

</BODY>
</HTML>
