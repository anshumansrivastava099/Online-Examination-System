<html>
<body>
<%@ page import="java.sql.*"%>
<%
String s1=(String)session.getAttribute("Id");
String s2=request.getParameter("Password");
String s3=request.getParameter("newpassword");
String s4=request.getParameter("cnfpassword");
String s5="";
boolean b2=false;
boolean b3=false;

try{

String url="jdbc:mysql://localhost:3306/erp";

Connection conn=DriverManager.getConnection(url,"root","");
Statement stmt=conn.createStatement();
ResultSet rs;

boolean b1=false;

rs=stmt.executeQuery("SELECT * FROM login WHERE password='"+s2+"' and Id='"+s1+"'");
while(rs.next())
{
b1=true;
s5=rs.getString("status");
}
if(b1)
{
if(s3.equals(s4))
{
b2=true;
stmt.executeUpdate("UPDATE login SET password='"+s3+"' where ID='"+s1+"'");
}
else
{
if(s5.equals("s"))
{
b2=true;
RequestDispatcher rd=request.getRequestDispatcher("tchangepasswordpage.jsp");
	rd.forward(request,response);
	}
	else
	{
	RequestDispatcher rd=request.getRequestDispatcher("tchangepasswordpage.jsp");
	rd.forward(request,response);
	}
	}
	}
else
{
if(s5.equals("t"))
{
RequestDispatcher rd=request.getRequestDispatcher("tchangepasswordpage.jsp");
	rd.forward(request,response);
	}
else
{
RequestDispatcher rd=request.getRequestDispatcher("tchangepasswordpage.jsp");
	rd.forward(request,response);
	}
	}
b3=s5.equals("s");
conn.close();
}
catch (Exception e)
{
b2=false;
System.out.println("Got an Exception");
}
if(b2)
{
if(b3)
{
RequestDispatcher rd=request.getRequestDispatcher("studenthomepage2.jsp");
	rd.forward(request,response);
	}
	else
	{
	RequestDispatcher rd=request.getRequestDispatcher("home2.jsp");
	rd.forward(request,response);
	}
	}
	%>

</body>
</html>
