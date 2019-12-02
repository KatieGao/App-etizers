<!-- need implement : from search link jump to habit burger page-->

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Profile</title>
<link href='https://fonts.googleapis.com/css?family=Big Shoulders Text'
	rel='stylesheet'>
<style>
div.title {
	text-align: center;
	bottom: 500px;
	left: 100px;
	width: auto;
	position: fixed;
}

font.title {
	font-family: 'Big Shoulders Text';
	font-style: oblique;
	font-variant: small-caps;
	font-size: 200%;
	font-weight: bold;
	color: firebrick;
}

div.content {
	position: fixed;
	text-align: center;
	bottom: 490px;
	left: 450px;
}

font.button {
	font-family: 'Big Shoulders Text';
	font-size: 100%;
}

input.text {
	margin: 10px 10px;
	width: 300px;
	height: 20px;
	font-size: 15px;
	font-family: 'Big Shoulders Text';
}

input.radio {
	-webkit-appearance: none;
	-moz-appearance: none;
	appearance: none;
	border-radius: 50%;
	width: 15px;
	height: 15px;
	border: 2px solid orange;
	transition: 0.2s all linear;
	margin-right: 5px;
	position: relative;
	top: 4px;
}

input:checked {
	border: 5px solid orange;
}

input.search {
	font-family: 'Big Shoulders Text';
	font-size: 100%;
	line-height: 20px;
	width: 20%;
	height: 30px;
	padding: 5px 5px;
	background: orange;
	border: 0 none;
	cursor: pointer;
	color: firebrick;
	font-weight: bold;
	font-family: Lucida Console;
	font-size: 20px;
	font-family: 'Big Shoulders Text';
	-webkit-border-radius: 5px;
}

input.search:hover {
	background-color: firebrick;
}

button.search {
	line-height: 20px;
	width: 20%;
	height: 30px;
	padding: 5px 15px;
	background: grey;
	border: 0 none;
	cursor: pointer;
	color: firebrick;
	font-weight: bold;
	font-family: Lucida Console;
	font-size: 20px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

div.profile {
	position: fixed;
	text-align: center;
	top: 150px;
	left: 100px;
	max-width: 300px;
	margin: auto;
	padding: 16px;
	text-align: left;
	font-family: 'Big Shoulders Text';
}

button.side_bar{
	border-width: 2px;
	border-color: white;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white; 
	background-color : firebrick;
	text-align: left;
	padding: 10px;
	cursor: pointer;
	width: 50%;
	font-size: 18px;
	font-family: 'Big Shoulders Text';
	background-color: firebrick;
}

div.nameTitle {
	position: fixed;
	text-align: center;
	top: 100px;
	left: 350px;
	color: firebrick;
	max-width: 300px;
	margin: auto;
	padding: 16px;
	text-align: left;
	font-size: 30px;
	font-weight: bold;
	font-family: 'Big Shoulders Text';
}

div.sign {
	position: fixed;
	top: 230px;
	left: 350px;
	color: firebrick;
	padding: 16px;
	font-size: 13px;
	font-family: 'Big Shoulders Text';
}

div.overview {
	position: fixed;
	top: 330px;
	left: 350px;
	color: gray;
	padding: 16px;
	font-size: 18px;
	font-family: 'Big Shoulders Text';
}
div.subTitle
{	
position: fixed;
	top: 300px;
	left: 360px;
	color: orange;
	font-size: 28px;
	font-family: 'Big Shoulders Text';
}

hr.myhrline1 {
	margin-top: 110px;
}

hr.myhrline2 {
	margin-top: 170px;
	margin-right:50px;
}

button.side_bar:active {
	border-width: 2px;
	border-color: white;
	outline: 0;
	display: inline-block;
	padding: 8px;
	color: white; 
	background-color : firebrick;
	text-align: left;
	padding: 10px;
	cursor: pointer;
	width: 50%;
	font-size: 18px;
	font-family: 'Big Shoulders Text';
	background-color: orange;
}
</style>

<script>

function bookmark_Run() { 
	document.getElementById("sub_title").innerHTML = "Bookmarks"; 
	/* <side_bar style='background-color:#orange;'>; */
} 
function review_Run() { 
	document.getElementById("sub_title").innerHTML = "Reviews";
}
function activity_Run(){ 
	document.getElementById("sub_title").innerHTML ="Recent Activity";
}
</script>


</head>
<body>
	<div class="title">
		<img src="logo.jpg" alt="USC" height=50,width=50>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font class="title">App-etizer
			at SC</font>
	</div>
	<div class="content">
		<form>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; <input class="radio" type="radio"
				name="keyword" value="keyword" checked> <font class="button"
				size="40%" color="FireBrick"> <b>Keyword</b>
			</font>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="radio" type="radio" name="keyword" value="restaurant">
			<font class="button" size="40%" color="FireBrick"> <b>Restaurant</b>
			</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br> <input
				class="text" type="text" name="userinput"
				placeholder="Search For Your Food..." autofocus> <input
				class="search" type="submit" name="submit" value="Search!" />
		</form>
	</div>

	<hr align="center" width="90%" color="FireBrick" class="myhrline1">
	<div class="profile">

		<img src="katie.jpg" alt="Katie" style="width: 50%">
		<p>
			<button class="side_bar" onclick = "activity_Run()">Recent Activity</button>
		</p>
		<p>
			<button class="side_bar" onclick = "bookmark_Run()">Bookmarks</button>
		</p>
		<p>
			<button class="side_bar" onclick = "review_Run()">Reviews</button>
		</p>
	</div>

	<div class="nameTitle">
		<h1>Katie's Profile</h1>
	</div>
	<div class="sign">
		<img src="bookmark.jpg" alt="Bookmark" style="width: 3%"> &nbsp;
		0 Bookmarks &nbsp;&nbsp;&nbsp; <img src="review.jpg" alt="Review"
			style="width: 3%"> &nbsp; 0 Reviews <br> <br> 

	</div>
		<hr align="right" width="65%" color="FireBrick" class="myhrline2">
	
		<div id="sub_title" class = "subTitle">Recent Activity</div>
	<div class="overview">Nothing yet</div>

	
</body>
</html>