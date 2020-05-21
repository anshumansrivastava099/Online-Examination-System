<%@ page session="false"%>

<%@include file="home2.jsp"%>

<html>
<body>


<title>Insert Question</title>
<h1>Insert Question:</h1>
<%

String un=request.getParameter("Unit_Name");
String uc=request.getParameter("Unit_Code");
 session.setAttribute("Unit_Name",un);
 session.setAttribute("Unit_Code",uc);

String cn=(String)session.getAttribute("Course_Name");
 String cc=(String)session.getAttribute("Course_Code");
 String sn=(String)session.getAttribute("Subject_Name");
 String sc=(String)session.getAttribute("Subject_Code");%>
 
   <div class="container" style="margin-top: 100px;">
        <form action="http://localhost:8080/examples/insertquestion.jsp" method="GET">
            <div class="form-group">
              <label for="questionname">Question Name :-</label>
              <input type="text" class="form-control" id="Question_Name" name="Question_Name" placeholder="Enter name of question">
            </div>
            <div class="form-group">
                <label for="questioncode">Question Code :-</label>
                <input type="text" class="form-control" id="Question_Code" name="Question_Code" placeholder="Enter code of question">
              </div>
              <div class="form-group">
                <label for="option">Option A :-</label>
                <input type="text" class="form-control" id="Option_A" name="Option_A" placeholder="Enter option ">
              </div>
              <div class="form-group">
                <label for="option">Option B :-</label>
                <input type="text" class="form-control" id="Option_B" name="Option_B" placeholder="Enter option ">
              </div>
             
              <div class="form-group">
                <label for="option">Option C :-</label>
                <input type="text" class="form-control" id="Option_C" name="Option_C" placeholder="Enter option ">
              </div>
             
              <div class="form-group">
                <label for="option">Option D :-</label>
                <input type="text" class="form-control" id="Option_D" name="Option_D" placeholder="Enter option ">
              </div>
              <div class="form-group">
                  <label for="answer">Correct Option :-</label>
              <div class="form-check">
                <label class="form-check-label" style="margin-left: 130px;">
                  <input type="radio" class="form-check-input" name="Answer" value="a">Option A
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label" style="margin-left: 130px;">
                  <input type="radio" class="form-check-input" name="Answer" value="b">Option B
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label" style="margin-left: 130px;">
                  <input type="radio" class="form-check-input" name="Answer" value="c">Option C
                </label>
              </div>
              <div class="form-check">
                <label class="form-check-label" style="margin-left: 130px;">
                  <input type="radio" class="form-check-input" name="Answer" value="d">Option D
                </label>
              </div>
              </div>
              
             
              <button type="submit" class="btn btn-primary">Relate Topics</button>
              <button type="reset" class="btn btn-primary" style="margin-left: 10px;">Reset</button>
          </form>
        </div>


</body>
</html>










