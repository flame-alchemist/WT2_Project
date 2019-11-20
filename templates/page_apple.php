<!DOCTYPE html>
<html>
<head>
	<title>
		Apple Smartphones
	</title>
	<link rel="stylesheet" type="text/css" href="showcase.css">	
	<link rel = "stylesheet" type = "text/css" href = "project.css">
	<script src="project1.js"></script>
</head>

<body>

	<center>
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
		<br/><br/><br/></center>

	<br><br><br>
	<center>
		<img src="apple1.png" alt="apple" style="width: 130px;"></img>	
	</center><br><br><br>
			<center>
			<table 	border = "0" cellspacing="30" cellpadding="20">
				<tr >
					<td id = "shad1" onmouseenter="shadow1()" onmouseleave="noshadow1()">
						<center>
							<h3>iPhone X</h3>
						<img src="iphonexdesign1.jpg" alt="iPhoneX" style = "height: 100%;"> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.8-inch All-Screen OLED Multi-Touch Display </li>
							<li> Enabled by TrueDepth Camera For Facial Recognition </li>
							<li> 12MP Wide-Angle And Telephoto Cameras </li>
						</ul>
						Price: <b class="green">Rs. 89,000</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment" type="submit"> Write A Review </button></a>
					</td>
					<td id = "shad2" onmouseenter="shadow2()" onmouseleave="noshadow2()">
						
						<center>
							<h3>iPhone 8 Plus</h3>
						<img src="iphone8plus.jpg" alt="iPhone8+" style = "height: 100%;"></img> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.5-inch Widescreen LCD Multi‑Touch Display with IPS Technology</li>
							<li> Fingerprint Sensor Built Into The Home Button</li>
							<li> 12MP Camera </li>
						</ul>
						Price: <b class="green">Rs. 73,000</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad3" onmouseenter="shadow3()" onmouseleave="noshadow3()">
						<center>
							<h3>iPhone 7 Plus</h3>
						<img src="7plus.jpg" alt="iPhone 7 Plus" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li>5.5 inch HD Display </li>
							<li>12 MP Rear Camera 7 MP Front Camera</li>
							<li>Apple A10 Fusion CPU </li>
						</ul><br/>
						Price: <b class="green">Rs. 59,000</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
	
					</td>
				</tr>
				<tr>
					<td id = "shad4" onmouseenter="shadow4()" onmouseleave="noshadow4()">
						<center>
							<h3>iPhone 7</h3>
						<img src ="iphone7.jpg" alt= "iphone7" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 4.7 inch HD Display </li>
							<li> 12 MP Rear Camera 7 MP Front Camera </li>
							<li> Fingerprint Sensor Built Into The Home Button</li>
						</ul>
						Price: <b class="green">Rs. 49,000</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
						
					</td>
				</tr>
			</table>
	</center>
	<center>
		<footer>
            <p ><a id = "footref" href = "aboutus.php">About Us</a>
            <a id = "footref" href = "FAQ.php">FAQ</a>
            <a id = "footref" href="privacy_policy.php">Privacy Policy</a>
            <a id = "footref" href="contactus.php">Contact Us</a>
        </footer>
	</center>
			<script type="text/javascript">
				function cartAdded(){
					alert("Added to the cart!");
				}
				function shadow1(){
					document.getElementById("shad1").style.boxShadow = "10px 10px 30px grey";
				}
				function shadow2(){
					document.getElementById("shad2").style.boxShadow = "10px 10px 30px grey";
				}
				function shadow3(){
					document.getElementById("shad3").style.boxShadow = "10px 10px 30px grey";
				}
				function shadow4(){
					document.getElementById("shad4").style.boxShadow = "10px 10px 30px grey";
				}
				function noshadow1(){
					document.getElementById("shad1").style.boxShadow = "0px 0px 0px grey";
				}
				function noshadow2(){
					document.getElementById("shad2").style.boxShadow = "0px 0px 0px grey";
				}
				function noshadow3(){
					document.getElementById("shad3").style.boxShadow = "0px 0px 0px grey";
				}
				function noshadow4(){
					document.getElementById("shad4").style.boxShadow = "0px 0px 0px grey";
				}
			</script>
</body>
</html>