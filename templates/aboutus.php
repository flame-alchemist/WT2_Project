<!DOCTYPE html>
<html>
<head>
	<title>About Us</title>
	<style type="text/css">
		.center{
			text-align: center;
			list-style-position: inside;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="aboutus.css">
	<link rel="stylesheet" type="text/css" href="project.css">
	<script src="project1.js"></script>
</head>
<body>
<center>
<div id = "wrapper">
			<div id = "navbar">
				<div>
					<img class="logo" src="cellcity1.png"/>
				</div>
				<div class = "searchwrapper">
					<input list="searchbox" type ="search" placeholder="Search" class = "searchbox" id = "mysearch">
					<datalist id="searchbox">
						<option id = "opt1" value="Apple">
						<option id = "opt2" value="Google">
						<option id = "opt3" value="Htc">
						<option id = "opt4" value="OnePlus">
						<option id = "opt5" value="Samsung">
					</datalist>
					<input type="button" id="btn" class = "searchbutton" onclick="searchfn()" value="Search" />
				</div>
				<div>
				<a id="home" href = "project.php">Home</a>
				</div>
				<div>
					<a id = "linkref" href = "">Cart</a>
				</div>
				<div>
					<a id = "linkrefsignin" href = "signup.php">Sign Out</a>
					<span><img class = "avatar" src="avatar.png"></span>
				</div>
			</div>
		</div>
		<br/><br/><br/>
	</center>
	<br>
	<center>
		<h1>
			About CellCity.com
		</h1>
		<div id="aboutus">
			<p id = "a">
			CellCity.com is a young and vibrant company that aims to provide good quality branded products. CellCity.com caters to the mobile needs of thousands of customers.
			</p>
			<p id = "a">
			At CellCity.com we strive to achieve the highest level of “Customer Satisfaction” possible. Our cutting edge E-commerce platform, highly experienced buying team, agile warehouse systems and state of the art customer care centre provides customer with:
			<ul>
			<li>Broader selection of products
			<li>Superior buying experience
			<li>On-time delivery of products
			<li>Quick resolution of any concerns
			</p>
			<p id = "a">
			Registered & Corporate Address - Cell City Private Limited, #8 12th Main, Indranagar, Bangalore, Karnataka - 560063
			</p>
			<br />
		</div><br><br>
		<footer>
            <p ><a id = "footref" href = "aboutus.php">About Us</a>
            <a id = "footref" href = "FAQ.php">FAQ</a>
            <a id = "footref" href="privacy_policy.php">Privacy Policy</a>
            <a id = "footref" href="contactus.php">Contact Us</a>
        </footer>
	</center>
</body>
</html>