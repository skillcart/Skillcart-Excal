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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>login</title>
<style>
		body{margin-left:3.34vw;}
			#i{
		border:0.13vw solid #456879;
		border-radius:1vw;
		height: 2.67vw;
		width: 16.34vw;}
		#id{size:1.34vw;
			height:2vw;
			width:53%;
			border-radius: 0.67vw;
		}
		#i:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #0A7E8C;
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
	input[type=name]{background-color: #ABCABC;
		text-align: center; border: 0.067vw solid #58427C;
    color:crimson;font-size: 1.34vw;}
input[type=password]{background-color: #ABCABC;
		text-align: center; border: 0.067vw solid #58427C;
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
	var un=document.forms["myform"]["username"].value;
		if(un==NULL || un==null||un==" "||un=="")
		{

			alert("Username not entered");
			return false;
		}
	var ps=document.forms["myform"]["password"].value;
		if(ps==NULL || ps==null||ps==" "||ps=="")
		{

			alert("Password not entered");
			return false;
		}
	}


</script>
</head>
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

              <a class="nav-link" href="about.html">About</a>

            </li>

            <li class="nav-item">
 
             <a class="nav-link" href="index.html">Home</a>

            </li>

           <li class="nav-item">

              <a class="nav-link" href="contact.html">Contact</a>

            </li>

          </ul>

        </div>

      </div>

    </nav>


<center><div style="height: 60%;width: 34%;background-color: white;text-align: center;border-radius: 1.67vw;margin-top: 7.34vw;margin-bottom: 3.34vw; "><br/>
		<img style="width:6vw; height:6vw;margin-left: 0.86vw;"  src="Public/skill.png" alt="LOGO"  align="left" />
		<a href="index.jsp"><img style="margin: 0.86vw; width:2.67vw; height:2.67vw;"  src="Public/cross.png" alt="LOGO"  align="right" /></a>

	<h1 style="font-size:2.34vw;font-family: Trajan Pro;text-align: center;">Login</h1><br/><br/>
<form name="myform" method="post" action="loginhire.jsp" >
	<span style="font-family: Trajan Pro;font-size: 1.8vw">Username : </span><br><br><input type="name" name="loginemail" id="id" placeholder="Username" title="Enter your username"/><br><br>
	<span style="font-family: Trajan Pro;font-size: 1.8vw">Password : </span><br><br><input type="password" name="loginpassword" id="id" placeholder="Password" title="Enter your password"/><br><br><br>
	<input id="i" style="font-family: Trajan Pro;" type="submit" value="Login" onclick="return validateform();"/>
</form>
</div></center>

</body>
</html>