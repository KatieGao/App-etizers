<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>App-etizer at SC </title>
<link href='https://fonts.googleapis.com/css?family=Big Shoulders Text' rel='stylesheet'>
<style>
	div.title{
		
		text-align:center;
		left:100px;
		width:auto;	
		left:450px;
		position:fixed;
	}
	div.content{
		position:fixed;
		text-align:center;
		bottom:400px;
		left:450px;
		
	}
	div.log{
	text-align:center;
	font-color: grey;
	font-weight:bold;
	font-size: 20px;
	width:auto;
	height:auto;
	
	
	}
	font.title{
		font-family: 'Big Shoulders Text';
	 font-style:oblique;
	 font-variant: small-caps;
		font-size:800%;
		 font-weight:bold; 
		color:white;
	}
	font.button{
		font-family: 'Big Shoulders Text';
	}
	a{
		line-height:20px;
		width:20%;
		height:50px;
		padding:5px 15px; 
   		 background-color: transparent;
   	 	border:0 none;
   		 cursor:pointer;
   		 color:white;
   		 font-weight: bold;
   		 font-family: 'Big Shoulders Text';
   		 font-size:30px;
	}
	a:hover{
		color:orange;
	}
	video{
		
		  position: fixed;
		  right: 0;
		  bottom: 0;
		  min-width: 100%;
		  min-height: 100%;

	}
	body{
		background:url(bj.jpg) no-repeat;	
		background-size: 2000px 1000px;
		
	}
	input.text{
		width:700px;
		height:50px;
		font-size:20px;
		font-family: 'Big Shoulders Text';
	}
	input.radio{
		-webkit-appearance: none;
	  -moz-appearance: none;
	  appearance: none;
	
	  border-radius: 50%;
	  width: 30px;
	  height: 30px;
	
	  border: 2px solid orange;
	  transition: 0.2s all linear;
	  margin-right: 5px;
	
	  position: relative;
	  top: 4px;
		
	}
	input.pop{
		width: 100%;
		  padding: 12px 20px;
		  margin: 8px 0;
		  display: inline-block;
		  border: 1px solid #ccc;
		  box-sizing: border-box;
	
	}
	input:checked{
		 border: 10px solid orange;
	}
	input.login{
		line-height:20px;
		width:20%;
		height:50px;
		padding:5px 15px; 
   		 background-color: transparent;
   	 	border:0 none;
   		 cursor:pointer;
   		 color:white;
   		 font-weight: bold;
   		 font-family: 'Big Shoulders Text';
   		 font-size:30px;
  	  /* -webkit-border-radius: 5px; */
  	  text-decoration:underline;
	
	}
	input.login:hover{
		color:orange;
	}
	input.search{
		line-height:20px;
		width:20%;
		height:50px;
		padding:5px 15px; 
   		 background:orange; 
   	 	border:0 none;
   		 cursor:pointer;
   		 color:white;
   		 font-weight: bold;
   		 font-family: Lucida Console;
   		 font-size:25px;
   		  font-family: 'Big Shoulders Text';
  	  -webkit-border-radius: 5px;
    	
	}
	input.search:hover{
	background-color: firebrick;
	}
	button.search{
		line-height:20px;
		width:20%;
		height:30px;
		padding:5px 15px; 
   		 background:grey; 
   	 	border:0 none;
   		 cursor:pointer;
   		 color:white;
   		 font-weight: bold;
   		 font-family: Lucida Console;
   		 font-size:20px;
  	  -webkit-border-radius: 5px;
    	border-radius: 5px; 
	}
		.dropbtn {
		  background-color: orange;
		  color: white;
		  padding: 16px;
		  width:200px;
		  height:60px;
		  font-size: 30px;
		  border: none;
		  font-family: 'Big Shoulders Text';
		    	  -webkit-border-radius: 5px;
		  
		}
		.dropdown {
		  position: relative;
		  display: inline-block;
		}
		
		.dropdown-content {
		  display: none;
		  position: absolute;
		  
		  min-width: 200px;
		  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
		  z-index: 1;
		}
		
		.dropdown-content a {
		  color: black;
		  padding: 12px 16px;
		  text-decoration: none;
		  display: block;
		}
		.dropdown-content a:hover {background-color: #ddd;}

		.dropdown:hover .dropdown-content {display: block;}

		.dropdown:hover .dropbtn {background-color: firebrick;}
	/* 	input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
} */

/* Set a style for all buttons */
/* button {
  
  color:white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
} */
 
/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */



.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>

<script>
function eraseCookieFromAllPaths(name) {
    // This function will attempt to remove a cookie from all paths.
    var pathBits = location.pathname.split('/');
    var pathCurrent = ' path=';

    // do a simple pathless delete first.
    document.cookie = name + '=; expires=Thu, 01-Jan-1970 00:00:01 GMT;';

    for (var i = 0; i < pathBits.length; i++) {
        pathCurrent += ((pathCurrent.substr(-1) != '/') ? '/' : '') + pathBits[i];
        document.cookie = name + '=; expires=Thu, 01-Jan-1970 00:00:01 GMT;' + pathCurrent + ';';
    }
}
	function send(){
		var xhttp = new XMLHttpRequest();
		//xhttp.open("GET","SearchResult?userinput="+document.bookSearch.userinput.value+"&bookname="+document.bookSearch.bookname.value+"&isbn="+document.bookSearch.isbn.value+"&authorname="+document.bookSearch.authorname.value+"&publishername="+document.bookSearch.publisher.value, false);
		xhttp.send();
		if(xhttp.responseText.trim().length > 0){
			document.getElementById("noresult").innerHTML=xhttp.responseText;			
			return false;
		}				
		return true;	
}

	function display(){
		
	<%
	Cookie[] cookies =request.getCookies();
	boolean status=false;
	for(Cookie cookie:cookies){
	
		if(	cookie.getName().contentEquals("user")) {status=true;}
	}
	/*  String x=(String)session.getAttribute("login"); */
	%>
	
	<%-- var p="<%=status%>"; --%>
	 if (<%=status%>){
		 var p=document.createElement("A");
			var q=document.createTextNode("Profile");
			
			p.setAttribute("href","profile.jsp");
			p.appendChild(q);
			document.getElementById("log").appendChild(p);
			var p1=document.createElement("A");
			var q1=document.createTextNode("          	Sign Out");
		
			p1.setAttribute("href","SearchPage.jsp");
			p1.setAttribute("onclick","eraseCookieFromAllPaths('user')");
			p1.appendChild(q1);
			document.getElementById("log").appendChild(p1); 
	}else{
		var m=document.createElement("INPUT");
		m.setAttribute("type","button");
		m.setAttribute("class","login");
		m.setAttribute("value","Register");
		m.setAttribute("onclick","document.getElementById('id02').style.display='block'");
		document.getElementById("log").appendChild(m);
		var n=document.createElement("INPUT");
		n.setAttribute("type","button");
		n.setAttribute("class","login");
		n.setAttribute("value","Log In");
		
		//var t1=document.createTextNode("|      Log In");
		
		n.setAttribute("onclick","document.getElementById('id01').style.display='block'");
		
		//n.setAttribute("href","login.jsp");
		//n.appendChild(t1);
		document.getElementById("log").appendChild(n);
	}
	}
	
	function send1(){
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET","validation?username="+document.register.uname.value+"&password="+document.register.psw.value+"&confirmedpassword="+document.register.cfpsw.value, false);
		xhttp.send();
		if(xhttp.responseText.trim().length > 0){
			document.getElementById("noresult").innerHTML=xhttp.responseText;			
			return false;
		}				
		return true;	
	}
	function validation(){
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET","validationforlogin?username="+document.sign.uname.value+"&password="+document.sign.psw.value, false);
		xhttp.send();
		if(xhttp.responseText.trim().length > 0){
			document.getElementById("errorforlogin").innerHTML=xhttp.responseText;			
			return false;
		}				
		return true;			
	}
	var modal = document.getElementById('id01');

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	    if (event.target == modal) {
	        modal.style.display = "none";
	    }
	}
</script>
</head>
<body>
		
	
		<video  autoplay muted loop >
	  				<source src="video.mp4" type="video/mp4" >
	 			
		</video>
		<div class="title">
			<img src="logo.jpg" alt="USC" height=200,width=200>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<font class="title">App-etizer at SC</font>
		</div>
		<div class="content">
			<form>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<input class="radio" type="radio" name="keyword" value="keyword" checked><font class="button" size="60%" color="FireBrick"><b>Keyword</b></font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="radio" type="radio" name="keyword" value="restaurant"><font class="button" size="60%"color="FireBrick" ><b>Restaurant</b></font>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<br>
			<input class="text" type="text"  name="userinput" placeholder="Search For Your Food..." autofocus>
			<div class="dropdown">
				   <button class="dropbtn">Find More!</button>			
				  <div class="dropdown-content">
				    <input class="radio" type="radio" name="keyword" value="genre"><font class="button" size="60%"color="white" ><b>Genre</b></font><br>
				    <input class="radio" type="radio" name="keyword" value="location"><font class="button" size="60%"color="white" ><b>Location</b></font><br>
				    <input class="radio" type="radio" name="keyword" value="rate"><font class="button" size="60%"color="white" ><b>Rate</b></font><br>
				  </div>
				</div>
				
			<br><br>
			<input class="search" type="submit" name="submit" value="Search!" />
			</form>
			<br><br>
			<div class="log" id="log">

			 <script>display()</script>
	
			</div>
			<!-- <button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button> -->

			<div id="id01" class="modal">
			  
			  <form class="modal-content animate" name="sign" method="GET" action="SearchPage.jsp" onsubmit="return validation()">
			   <!--  <form name="sign" method="GET" action="HomePage.jsp" onsubmit="return validation()"> -->
			
			    <div class="container">
			      <label for="uname"><b>Username</b></label><br>
			      <font size="3" color="red" id="errorforlogin"></font>
			      <input class="pop" type="text" placeholder="Enter Username" name="uname" required><br>
			
			      <label for="psw"><b>Password</b></label>
			      <input class="pop" type="password" placeholder="Enter Password" name="psw" required><br>
			        
			      <button class="search" type="submit">Login</button>
			     
			    </div>
			
			    <div class="container" style="background-color:#f1f1f1">
			      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
			    </div>
			  </form>
			</div>
			<div id="id02" class="modal">
			  
			  <form class="modal-content animate" name="register" method="GET" action="SearchPage.jsp" onsubmit="return send1()">
			   <!--  <form name="register" method="GET" action="HomePage.jsp" onsubmit="return send1()"> -->
			
			    <div class="container">
			    
			      <label for="uname"><b>Username</b></label><br>
			      <font size="3" color="red" id="noresult"></font>
			      <input class="pop" type="text" placeholder="Enter Username" name="uname" required><br>
			
			      <label for="psw"><b>Password</b></label>
			      <input class="pop" type="password" placeholder="Enter Password" name="psw" required><br>
			        
			       <label for="cfpsw"><b>Confirm Password</b></label>
			      <input class="pop" type="password" placeholder="Confirm Your Password" name="cfpsw" required><br>
			      <button class="search" type="submit">Register</button>
			     
			    </div>
			
			    <div class="container" style="background-color:#f1f1f1">
			      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
			    </div>
			  </form>
			</div>
			
		
		</div>
			
		
	
		
</body>

</html>