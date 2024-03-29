<!DOCTYPE html>
<html>
<head>
	<title>
		Google Smartphones
	</title>
	<link rel="stylesheet" type="text/css" href="showcase.css">
	<link rel = "stylesheet" type = "text/css" href = "project.css">
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
		<br/><br/><br/></center>
	<br><br><br>
	<center>
		<img src="glogo.png" alt="google" style="width: 130px;"></img>	
	</center><br><br><br>
			<center>
			<table cellpadding="20" cellspacing="30" border = "0">
				<tr>
					<td id = "shad1" onmouseenter="shadow1()" onmouseleave="noshadow1()">
						<center>
							<h3>Google Pixel 2</h3>
						<img src="pixel2.jpg" alt="Pixel 2" style = "height: 100%;"> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.0 inches AMOLED Capacitive Touchscreen</li>
							<li> Qualcomm® Snapdragon™ 835</li>
							<li> 8MP Front 12.2MP Rear Wide Angle Camera</li>
							<li> 2700 mAh Battery</li>
						</ul>
						Price: <b class="green">Rs. 58,999</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad2" onmouseenter="shadow2()" onmouseleave="noshadow2()">
						<center>
							<h3>Google Pixel</h3>
						<img src="pixel1.jpg" alt="Pixel" style = "height: 100%;"></img> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.0 inches AMOLED Capacitive Touchscreen</li>
							<li> Qualcomm® Snapdragon™ 821</li>
							<li> 8MP Front 12.3MP Rear Wide Angle Camera</li>
						</ul>
						<br>
						Price: <b class="green">Rs. 41,790</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad3" onmouseenter="shadow3()" onmouseleave="noshadow3()">
						<center>
							<h3>Google Nexus 6P</h3>
						<img src="nexus6p.jpg" alt="Nexus 6P" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.7 inches AMOLED Touchscreen</li>
							<li> 8MP Front 12.3MP Rear Camera</li>
							<li> Qualcomm® Snapdragon™ 810</li>
						</ul>
						<br>
						Price: <b class="green">Rs. 71,982</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
				</tr>
				<tr>
					<td id = "shad4" onmouseenter="shadow4()" onmouseleave="noshadow4()">
						<center>
							<h3>Google Nexus 5X</h3>
						<img src ="nexus5x.jpg" alt= "Nexus 5X" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.2 inches IPS LCD Capacitive Touchscreen</li>
							<li> Li-Po 2700 mAh Battery</li>
							<li> Qualcomm® Snapdragon™ 808</li>
						</ul>
						Price: <b class="green">Rs. 24,572</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
				</tr>
			</table>
			</center>
			<center>
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