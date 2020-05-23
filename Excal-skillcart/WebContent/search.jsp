<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Custom fonts for this template -->

    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


    <!-- Custom styles for this template -->

    <link href="css/landing-page.css" rel="stylesheet">


<link rel = "stylesheet" type = "text/css" href = "style.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
	<style type="text/css">
	body{margin-left:3.34vw;}
		#i{
	border:0.13vw solid #456879;
	border-radius:1vw;
	height: 3.34vw;
	width: 10vw;}
	#id{size:1.34vw;
		height:1.86vw;
		width:53%;
		border-radius: 0.67vw;
	}
	#id:focus {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #c4ffcb;
	}
	#id:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #29AB87;
	}
	#i:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #0A7E8C;
	}
		#no{
	border:0.13vw solid #456879;
	border-radius:15px;
	height: 2vw;
	width: 8vw;}
    select{width: 1000%;
    padding: 1vw 1.67vw;
    border: none;
    border-radius: 0.27vw;
    background-color: #f1f1f1;
}
	input[type=name]{background-color: #ABCABC;
		text-align: center; border: 0.13vw solid #58427C;
    color:crimson;font-size: 1.34vw;}
textarea {

    background-color: #f8f8f8;
font-size: 1.34vw;} 
input[placeholder=Your Name]{color: black;}
input[value]{font-size: 1.8vw;}
	</style>

	<script type="text/javascript">
	function validateform()
	{
		var nam=document.forms["myform"]["name"].value;
		if(nam==null||nam==""||nam==" "||!isNaN(nam))
		{
			alert("Invalid Name");
			return false;

		}

var ct=document.forms["myform"]["city"].value;
		 	if(ct==null||ct==""||ct==" "||!isNaN(ct))
		{
			alert("Invalid city name");
			return false;

		}

		var st=document.forms["myform"]["state"].value;
		 	if(st==null||st==""||st==" "||!isNaN(st))
		{
			alert("Invalid state name ");
			return false;

		}


		var con=document.forms["myform"]["contact"].value;
		if(con.length!=10||isNaN(con)||con==null||con==""||con==" ")
		{
			alert("Invalid Contact Number");
			return false;
		}

		var conf=document.forms["myform"]["confirm"].value;
		if(conf!=con)
		{
			alert("Contact No. not matched");
			return false;
		}

	}
	</script></head>
<body style="background-color: black;">
<link href='https://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Lato:400,700,900' rel='stylesheet' type='text/css'>
<div class="back" style="z-index:-1;"></div>
<!-- Navigation -->

    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">

      <div class="container">
<img src="skill.png" style="width:3vw; height:3vw;"/>
        <a class="navbar-brand" href="index.html">SKILLCART</a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">

          <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">

         <ul class="navbar-nav ml-auto">

            <li class="nav-item">

              <a class="nav-link" href="#">About</a>

            </li>

            <li class="nav-item">
 
             <a class="nav-link" href="index.html">Home</a>

            </li>

           <li class="nav-item">

              <a class="nav-link" href="#">Contact</a>

            </li>

          </ul>

        </div>

      </div>

    </nav>


<center><div style="height: 45vw;width: 34vw;background-color: white;text-align: center;border-radius: 1.34vw;margin-top: 3.34vw;margin-bottom: 3.34vw; ">
		<img style="margin-left: 1vw;width:7vw; height:7vw;"  src="Public/logo.jpg" alt="LOGO"  align="left" />
<a href="index.jsp"><img style="margin: 1vw; width:2.67vw; height:2.67vw;"  src="Public/cross.png" alt="LOGO"  align="right" /></a>
	
	<h1 style="font-size:2.18vw;"><br><center>Need  Labour ?</center></h1><br><br>
	<form name="myform" method="post" action="SServlet" >
		<input type="name" id="id" name="name" placeholder="Your Name" title="Name can't be empty" /><br><br>
	<input type="name" id="id" name="city" placeholder="Your City" title="Enter your city name"><br><br>
	<input type="name" id="id" name="state" placeholder="Your State" title="Enter your state name"><br><br>
	<textarea rows="3" cols="25" title="Enter your complete address" name="textarea1" placeholder="Your Address..."></textarea><br><br>
	<input type="name" id="id" name="contact" placeholder="Your Contact Number" title="It must be of 10 digits"/><br><br>
	<input type="name" id="id" name="confirm" placeholder="Confirm Contact Number" title="It must be of 10 digits"/><br><br>
	<input type="email" id="id" name="mail"  placeholder="E-mail address" title="email must be valid" /><br><br>
	<span style="font-size: 1.8vw"><b>Required type :</b></span> &nbsp&nbsp
<select name="occrqd" style="width: 8vw;height: 1.75vw;font-size: 1vw;border-radius: 0.4vw;background-color: #9DE093;text-align: center;">
	<option autofocus>Carpenter</option>
	<option autofocus>Electrician</option>
	<option autofocus>Plumber</option>
	<option selected autofocus>Mason</option>
	<option autofocus>Others</option>
</select><br><br>
<input id="i" type="submit"  value="Search Now" title="Click to Search or Press Enter" onclick="return validateform();"/>

</form>
</div></center>

</body>
</html>