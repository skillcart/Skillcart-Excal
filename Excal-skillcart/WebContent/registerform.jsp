<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.util.*" %>
 <%@ page import="java.sql.Connection" %>
 <%@ page import="java.sql.DriverManager" %>
 <%@ page import="java.sql.ResultSet" %>
 <%@ page import="java.sql.Statement" %>
 <%@ page import="my.AeSimpleSHA1" %>

 <% 

	Statement stmt=null;
	Connection con=null;

String name=request.getParameter("name").toLowerCase();
String age=request.getParameter("age").toLowerCase();
String gender=request.getParameter("gender").toLowerCase();
String occu=request.getParameter("occupation");

String xyzw=request.getParameter("aadhar").toLowerCase();;
String aadhar=AeSimpleSHA1.SHA1(xyzw);
String fathername=request.getParameter("fname").toLowerCase();
String contact=request.getParameter("contact").toLowerCase();
String mail=request.getParameter("mail").toLowerCase();
String status=request.getParameter("status").toLowerCase();
String city=request.getParameter("city").toLowerCase();
String state=request.getParameter("state").toLowerCase();
String username=request.getParameter("username").toLowerCase();

String xyz=request.getParameter("password");

String password=AeSimpleSHA1.SHA1(xyz);

	System.out.println(name);
	System.out.println(age);
	System.out.println(gender);
	System.out.println(occu);
	System.out.println(aadhar);
	System.out.println(fathername);
	System.out.println(contact);
	System.out.println(mail);
	System.out.println(status);
	System.out.println(city);
	System.out.println(state);
	System.out.println(username);
	System.out.println(password);
	System.out.println("\n");
	
try {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("--Driver Loaded--");
		String url="jdbc:mysql://localhost:3306/excal";
        con = DriverManager.getConnection(url,"root","");
        System.out.println("--Connection Esatblished--");
	}
	catch(Exception e) {
		System.out.println("Error while loading or connecting :"+ e);
	}
    	
		String sql="Insert into register values('"+name+"','"+age+"','"+gender+"','"+occu+"','"+aadhar+"','"+fathername+"','"+contact+"','"+mail+"','"+status+"','"+city+"','"+state+"','"+username+"','"+password+"',0)";
		stmt=con.createStatement();
		stmt.executeUpdate(sql);
		System.out.println("--Record Inserted--");
		out.print("<h1> You Are Registered Succesfully </h1>");
		//response.sendRedirect("login1.html");  
	
		
		%>






</body>
</html>