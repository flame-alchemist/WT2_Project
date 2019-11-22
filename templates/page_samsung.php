<!DOCTYPE html>
<html>
<head>
	<title>
		Samsung Smartphones
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
	<br/>
	<center>
		<img src="samsung1.png" alt="samsung" />	
	</center>
		<center>
			<table cellpadding="20" cellspacing="30" border = "0">
				<tr>
					<td id = "shad1" onmouseenter="shadow1()" onmouseleave="noshadow1()">
						
						<center>
							<h3>Samsung Galaxy S8</h3>
						<img src="gs8.jpg" alt="Galaxy S8" style = "height: 100%;"> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 5.8 inch Super AMOLED Quad HD Display </li>
							<li> Qualcomm® Snapdragon™ 835 Chipset </li>
							<li> 8MP Front Facing Camera 16MP Rear Camera </li>
						</ul>
						Price: <b class="green">Rs. 65,000</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
						
					</td>
					<td id = "shad2" onmouseenter="shadow2()" onmouseleave="noshadow2()">
						
						<center>
							<h3>Samsung Galaxy Note 8</h3>
						<img src="note8.jpg" alt="Galaxy Note 8" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 6.3 inch Infinity Edge AMOLED Display </li>
							<li> S-Pen for all your writing needs</li>
							<li> 3300 mAh battery</li>
							<li> Dual Camera with Optical Image Stabilisation </li>
						</ul>
						Price: <b class="green">Rs. 67,900</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
					
					</td>
					<td id = "shad3" onmouseenter="shadow3()" onmouseleave="noshadow3()">
						
						<center>
							<h3>Samsung Galaxy J3 Pro</h3>
						<img src="j3new.jpg" alt="Galaxy J3 Pro" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li>5 inch HD Display </li>
							<li>8 MP Rear Camera 5 MP Front Camera</li>
							<li>2600 mAh battery </li>
						</ul>
						<br>
						Price: <b class="green">Rs. 7,990</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
					
					</td>
				</tr>
				<tr>
					<td id = "shad4" onmouseenter="shadow4()" onmouseleave="noshadow4()">
						
						<center>
							<h3>Samsung Galaxy S7</h3>
						<img src ="s7.jpg" alt= "Galaxy S7" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 4GB RAM With 32 GB Internal Storage </li>
							<li> 2.3 GHz Octa-Core Processor </li>
							<li> 8MP Front Facing Camera 16MP Rear Camera </li>
						</ul>
						<br/>
						Price: <b class="green">Rs. 39,400</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
						
					</td>
					<td id = "shad5" onmouseenter="shadow5()" onmouseleave="noshadow5()">
						
						<center>
							<h3>Samsung Galaxy On 5</h3>
						<img src ="gon5.jpg" alt= "Galaxy On 5" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 1.5GB RAM With 8 GB Internal Storage (Expandable) </li>
							<li> 1.3 GHz Quad-Core Processor </li>
							<li> 8MP Rear Camera 5MP Front Camera </li>
						</ul>
						Price: <b class="green">Rs. 6,990</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
						
					</td>
					<td id = "shad6" onmouseenter="shadow6()" onmouseleave="noshadow6()">
						
						<center>
							<h3>Samsung Galaxy J7 Max</h3>
						<img src ="j7max.jpg" alt= "Galaxy J7" style = "height: 100%;"/> <br /> <br /></center>
						<b id="spec"> Specifications: </b><br />
						<ul>
							<li> 4GB RAM With 32 GB Internal Storage </li>
							<li> 2.3 GHz Octa-Core Processor </li>
							<li> 5.7 inch HD Display With 3300 mAh Battery </li>
						</ul>
						<br>
						Price: <b class="green">Rs. 17,900</b><br /><br />
						<button class="cart" onclick="cartAdded()"> Add to Cart </button>
						<a href="comment.php"><button class="comment"> Write A Review</button></a>
						
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
				function shadow6(){
					document.getElementById("shad6").style.boxShadow = "10px 10px 30px grey";
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
				function noshadow6(){
					document.getElementById("shad6").style.boxShadow = "0px 0px 0px grey";
				} 
			</script>
</body>
</html>