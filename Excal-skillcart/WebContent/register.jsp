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


<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel = "stylesheet" type = "text/css" href = "style.css">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
	<style type="text/css">
	body{margin-left:3.34vw;}
		#i{
	border:0.13vw solid #456879;
	border-radius:1vw;
	height: 2.67vw;
	width: 12.67vw;}
	#i:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #0A7E8C;
	}
	#i1{
	border:0.134vw solid c;
	border-radius:1vw;
	height: 2.5vw;
	width: 36%;}
	#i1:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: cyan;
	}
	#id{size:20;
		height:2vw;
		width:57%;
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
	#toCheckNum{size:20;
		height:2vw;
		wtoCheckNumth:57%;
		border-radius: 0.67vw;
	}
	#toCheckNum:focus {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #c4ffcb;
	}
	#toCheckNum:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #29AB87;
	}
	#i8{size:20;
		height:2vw;
		width:29%;
		border-radius: 0.67vw;
		background-color:white;
	}
	#i8:focus {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: #c4ffcb;
	}
	#i8:hover {
    transition: all 0.5s;
	transform: scale(1.05);
	background-color: cyan;
	}
select{width: 1000%;
    padding: 1vw 1.64vw;
    border: none;
    border-radius: 0.27vw;
    background-color: #f1f1f1;
}
input[type=name]{background-color: #ABCABC;
		text-align: center; border: 0.13vw solid #58427C;
    color:crimson;font-size: 1.67vw;}
input[type=password]{background-color: #ABCABC;
		text-align: center; border: 0.13vw solid #58427C;
    color:crimson;font-size: 1.67vw;}
textarea {

    background-color: #f8f8f8;
font-size: 1.67vw;} 
input[placeholder=Your Name]{color: black;}
input[value]{font-size: 1.8vw;}
	</style>
	 <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js">
  <script type="text/javascript" src="Verhoeff.js"></script>
	<script type="text/javascript">
	
	function ultimatecheck()
	{
	var x=vhCheck()&&validateform()&&cookika();
	return x;
	}
	function vhCheck()
		{
			var strVal = document.getElementById('toCheckNum').value;
			if (strVal.length < 10) // Minimum length.
				return false;
			var x= strVal.verhoeffCheck();
if(x===false)
{
alert('Invalid aadhar number');
return false;
}
		};
		
		function copy(){
			
			if(con.length!=10||isNaN(con))
			{
				alert("Invalid Contact Number While verifying");
				return false;
			}	
			
		}
		
		
		function setcookie(){
			
			document.cookie = "c=0";

		}
		function readCookie(name) {
	 	    var nameEQ = name + "=";
	 	    var ca = document.cookie.split(';');
	 	    for(var i=0;i < ca.length;i++) {
	 	        var d = ca[i];
	 	        while (d.charAt(0)==' ') d = d.substring(1,d.length);
	 	        if (d.indexOf(nameEQ) == 0) return d.substring(nameEQ.length,d.length);
	 	    }
	 	    
	 	    
	 	    return "0";
	 	}
	 
		function cookika(){
			var cookie_read= readCookie("c");
	 		alert(cookie_read);
	 		
	 		if(cookie_read.equals('0'))
	 			{
	 			
	 			alert("Please Verify Number Using Corect Otp Process");
	 			return false;
	 			}
	 		else {
	 			alert('hi');
	 			return true;
	 		}
	 	
		}
	function validateform()
	{
		
		
		
		
		var nam=document.forms["myform"]["name"].value;
		if(nam==null||nam==""||nam==" "||!isNaN(nam))
		{
			alert("Invalid Name");
			return false;

		}

		var ag=document.forms["myform"]["age"].value;
		if(isNaN(ag)||ag==null||ag==""||ag==" ")
		{
			alert("Invalid age");
			return false;
		}

		
		var fnam=document.forms["myform"]["fname"].value;
		if(fnam==null||fnam==""||fnam==" "||!isNaN(fnam))
		{
			alert("Invalid Father's name");
			return false;

		}

		var con=document.forms["myform"]["contact"].value;
		if(con.length!=10||isNaN(con))
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
		 	
		 	
		 	
		 	
		 	
	
	}

	</script>

</head>
<body style="background-color:#222222;max-width:100%;max-height:100%"  onload="setcookie();" >


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


<center><div style="height: 135%;width: 33.4%;background-color: white;z-index:10;text-align: center;border-radius: 1.67vw;margin-top: 3.34vw;margin-bottom: 3.34vw; ">
<div>
	<img style="margin-left: 0.86vw;width:7vw; height:7vw;"  src="Public/skill.png" alt="LOGO"  align="left" />
	<a href="index.jsp"><img style="margin: 1vw;width:3.67vw; height:3.67vw; "  src="Public/cross.png" alt="LOGO"  align="right" /></a>
	<h1 style="font-size:2.34vw;"><u><i>Register</i></u></h1>
	<br/>
</div>
<p style="font-size:1.7vw;text-align: center;">Join our community !!</p>
<!-- 
<form name="otpform" action="MobileVerify" method="post">
<input type="name"  name="contact1" placeholder="Contact Number" title="It must be of 10 digits"/><br><br>
<input id ="i1" type="submit" name="sendotp" value="SendOTP" title="CLick to get OTP"  onclick="return copy();">&nbsp&nbsp&nbsp&nbsp

</form>

<form name="filled" action="MobileConfirm">
<input type="name" id="i8" name="verifyotp" placeholder="Verify OTP">
<input  type="submit" name="verifyingotp" value="VerifyOTP" title="CLick to get OTP"  >
</form>-->
<br><br>
<form name="myform" method="post" action="registerform.jsp" >
<input type="name" id="id" name="name" placeholder="Name" title="Name can't be empty" /><br><br>
<input type="name" id="id" name="age" placeholder="Age" title="Age must be integer" /><br><br>
<input type="radio" name="gender"><span style="font-size: 1.7vw">&nbsp&nbspMale</span>&nbsp&nbsp&nbsp&nbsp<input type="radio" name="gender"><span style="font-size: 1.7vw">&nbsp&nbspFemale</span><br><br>
<span style="font-size: 1.7vw">Occupation :</span> &nbsp&nbsp
<select name="occupation" style="width: 8vw; height: 1.7vw;font-size: 1vw;border-radius: .45vw;background-color: #9DE093;text-align: center;">
	<option autofocus>Carpenter</option>
	<option selected autofocus>Electrician</option>
	<option autofocus>Plumber</option>
	<option autofocus>Mason</option>
	<option autofocus>Others</option>
</select><br><br>

		
	
	
<input type="name" id="toCheckNum" name="aadhar"  placeholder="Aadhar Card No" title="It must be of 12 digits" /><br><br>
<input type="name" id="id" name="fname"  placeholder="Father's Name" title="Name can't be empty"/><br><br>
<input type="name" id="id" name="contact" placeholder="Contact Number" title="It must be of 10 digits"/><br><br>
<input type="name" id="id" name="confirm" placeholder="Confirm Contact Number" title="It must be of 10 digits"/><br><br>
<input type="email" id="id" name="mail"  placeholder="E-mail address " title="email must be valid" /><br><br>
<input  type="radio" name="status"><span style="font-size: 1.7vw;">&nbsp&nbspSingle</span>&nbsp&nbsp&nbsp&nbsp<input id="1" type="radio" name="status"><span style="font-size:1.7vw">&nbsp&nbspMarried</span><br><br>
<input type="name" id="id" name="city" placeholder="City" title="Enter your city name"><br><br><input type="name" id="id" name="state" placeholder="State" title="Enter your state name"><br><br>
<input type="name" name="username" id="id" placeholder="Username" title="Userame must be less than 7 characters"><br><br>
<input type="password" name="password" id="id" placeholder="Password" title="Password must have at least 1 digit, 1 uppercase, 1 lowercase and length 6-20 "><br><br>
<br>
<input id="i" type="submit" value="Register Now"  title="Click to Register or Press Enter" onclick="return ultimatecheck();"/>
</form>
<center><br>
<!--  
<h4>Please Verify your Mobile Number Before Registration</h4><br>
-->
</center>


</div></center>
</body>
</html>