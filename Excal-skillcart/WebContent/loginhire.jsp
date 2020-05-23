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

String Username=request.getParameter("loginemail").toLowerCase();

String temp=request.getParameter("loginpassword");

String Password=AeSimpleSHA1.SHA1(temp);
System.out.println(Username);
System.out.println(Password);

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
	
    //String sql=" Select  from register where username='"+Username+"' and password='"+Password+"' ";
	
	
	
        String sql=" Select * from register where username='"+Username+"' and password='"+Password+"' ";
		stmt=con.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		

		 if( rs.next() ){
			 
			 String nam = rs.getString(1);
			 String cont=rs.getString(7);
			 String em=rs.getString(8);
			 String cty=rs.getString(10);
			 String st = rs.getString(11);
			 String oc = rs.getString(4);
			 String ad = rs.getString(5);
			int logged = rs.getInt(14);	 
			if(logged==0){
				 out.print("<h1>You Are Added To Queue . Wait For Your Turn !!</h1>");
					
				String sql1="Insert into online values('"+nam+"','"+cont+"','"+em+"','"+cty+"','"+st+"','"+oc+"',null,null,null,0,'"+ad+"',null)";
				stmt=con.createStatement();
				stmt.executeUpdate(sql1);
				System.out.println("Inserted in online");
			String upsql= "Update  register set logged=1 where username='"+Username+"' and password='"+Password+"' ";
			stmt.executeUpdate(upsql);
			}
			else out.print("<h1> You Are Already Logged In .Kindly Please Wait</h1>");
		 }	
		 else{
			 System.out.println("failure while hire login");
			 out.print("<h1>LOGIN IS FAILURE </h1>");
				
		 }
		 %>


</body>
</html>