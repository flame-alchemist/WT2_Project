<!DOCTYPE html>
<html>
<head>
	<title>
		HTC Smartphones
	</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	
	<center>
		<img src="htc1.png" alt="htc Logo" />	
	</center>
		<center>
			<table cellpadding="20" cellspacing="30" border = "0">
				<tr>
					<td id = "shad1" onmouseenter="shadow1()" onmouseleave="noshadow1()">
						<center>
							<h3>htc U11 Plus</h3>
						<img class= "img" src="htcu11plus.jpg" alt="U11 Plus" style = "height: 100%"> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 6.0 inches Super LCD6 capacitive touchscreen</li>
							<li> Qualcomm® Snapdragon™ 835</li>
							<li> 8MP Front 12MP Rear Wide Angle Camera</li>
							<li> Li-Ion 3930 mAh Battery</li>
						</ul>
						<br/>
						Price: <b class="green">Rs. 44,999</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad2" onmouseenter="shadow2()" onmouseleave="noshadow2()">
						<center>
							<h3>htc One X10</h3>
						<img class="img" src="htconex10.jpg" alt="One X 10" style = "height: 100%"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.5 inches Full HD Display</li>
							<li> 8MP Front 16MP Rear Wide Angle Camera</li>
							<li> Li-Ion 4000 mAh Battery</li>
							<li> Mediatek MT6755 Helio P10</li>
						</ul><br>
						Price: <b class="green">Rs. 19,999</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad3" onmouseenter="shadow3()" onmouseleave="noshadow3()">
						<center>
							<h3>htc U Ultra</h3>
						<img class="img" src="htcuultra.jpg" alt="U Ultra" style = "height: 100%"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.7 inch qHD Display</li>
							<li> 16MP Front 12MP Rear Camera</li>
							<li> Qualcomm® Snapdragon™ 821</li>
						</ul><br><br>
						Price: <b class="green">Rs. 32,299</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
				</tr>
				<tr>
					<td id = "shad4" onmouseenter="shadow4()" onmouseleave="noshadow4()">
						<center>
							<h3>htc Desire 10 Pro</h3>
						<img class="img" src ="htcdesire10pro.jpg" alt= "Desire 10 Pro" style = "height: 100%"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.5 inches Full HD Display</li>
							<li> 13MP Front 20MP Rear Camera</li>
							<li> 3000 mAh Battery</li>
						</ul>
						Price: <b class="green">Rs. 18,500</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review </button></a>
					</td>
					<td id = "shad5" onmouseenter="shadow5()" onmouseleave="noshadow5()">
						<center>
							<h3>htc 10</h3>
						<img class="img" src ="htc10.jpg" alt= "htc 10" style = "height: 100%"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.2 inch Full HD Display</li>
							<li> Qualcomm® Snapdragon™ 820</li>
							<li> 3000 mAh Battery</li>
						</ul>
						Price: <b class="green">Rs. 34,999</b><br /><br />
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
				function shadow5(){
					document.getElementById("shad5").style.boxShadow = "10px 10px 30px grey";
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
				function noshadow5(){
					document.getElementById("shad5").style.boxShadow = "0px 0px 0px grey";
				}
			</script>
</body>
</html>