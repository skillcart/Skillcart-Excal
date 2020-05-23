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
 <%@ page import="java.util.Date"%>
<%@ page import=" java.util.Timer"%>
<%@ page import=" java.util.TimerTask" %>

 <% 

	/*
	Statement stmt=null;
	Connection con=null;


    String namuser=request.getParameter("name");
    String cityuser=request.getParameter("city");
    String stateuser=request.getParameter("state");
    String contactuser=request.getParameter("contact");
    String emailuser=request.getParameter("mail");
    String occrqd=request.getParameter("occrqd");
    StringBuffer addressuser= new StringBuffer(request.getParameter("textarea1"));
    
    String aadharlabour=null;
    
	
System.out.println("occ:");
System.out.println(occrqd);


				
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
					
String sql=null,sql1=null,sql2=null;					
				



int initialDelay = 1000; // start after 30 seconds
int period = 2000;        // repeat every 5 seconds

// put below in timer loop 
TimerTask task = new TimerTask();
        timer.scheduleAtFixedRate(new TimerTask () 
         {               

	public void run() 
               {

			 sql=" Select * from online where  occupation='"+occrqd+"' and city='"+cityuser+"' order by id ASC" ;
				
				     stmt=con.createStatement();
				
					ResultSet rs = stmt.executeQuery(sql);
					
					int count =0;
					
					
					 if( rs.next() )
					 {
						out.print("<h1>Please Wait !! While We Find You With Best...</h1>");         	
						System.out.println("--city--");
						aadharlabour=rs.getString(11);
						System.out.println(rs.getString(1));
						sql2="Insert into search values('"+namuser+"','"+cityuser+"','"+stateuser+"','"+addressuser+"','"+contactuser+"','"+emailuser+"','"+occrqd+"','"+aadharlabour+"')";
						stmt.executeUpdate(sql2);
			
						System.out.println("Inserted in search");
						count=1;
						
				    
					 }
					  if(count==0)
					  {	 sql1=" Select * from online where  occupation='"+occrqd+"' and state='"+stateuser+"' order by id ASC" ;
							ResultSet rs1 = stmt.executeQuery(sql1);
							
							if(rs1.next())
							{
								count =0;
								System.out.println("--state--");
								sql2="Insert into search values('"+namuser+"','"+cityuser+"','"+stateuser+"','"+addressuser+"','"+contactuser+"','"+emailuser+"','"+occrqd+"','"+aadharlabour+"')";
								stmt.executeUpdate(sql2);
								System.out.println("Inserted in search");		
								System.out.println(rs1.getString(1));
								aadharlabour=rs1.getString(11);
								out.print("<h1>Please Wait !! While We Find You With Best...</h1>");
							}
			
						
					}
					  
					  
					  
					  
               }
, initialDelay, period);
         }

       */
					  
 %>


</body>
</html>