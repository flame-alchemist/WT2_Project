<!DOCTYPE html>
<html>
<head>
	<title>
		Write A Review
	</title>
	<link rel = "stylesheet" type = "text/css" href = "project.css">
	<link rel = "stylesheet" type = "text/css" href = "comment.css">
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
		<br/><br/><br/>
	</center>
	<br/><br/><br/>
	<div class="title"><center><h1 style="font-family: 'Helvetica';">Reviews</h1>
	<button onclick = "post()" class="rev">Write A Review</button></center></div>
<br/><br/>
		<script type="text/javascript">
		var cnt2=0
		function post(){
			var p = prompt("Enter Phone Brand: ")
			var q = prompt("Enter Phone Model: ")
			var r = prompt("Enter Your Rating (0 to 5): ")
			var s = prompt("Enter Your Review: ")
			var block = document.createElement("div")
			block.setAttribute("id","block")

			var post = document.createElement("pre")
			post.textContent = p;
			var post2 = document.createElement("pre")
			post2.textContent = q;
			var post3 = document.createElement("pre")
			post3.textContent = r;
			var post4 = document.createElement("pre")
			post4.textContent = s;

			var button3 = document.createElement("input")
			button3.setAttribute("type","button");
			button3.setAttribute("id","dp");
			button3.setAttribute("value","Delete Review");
			button3	.setAttribute("onclick","delpst(this.id)");


			block.appendChild(post);
			block.appendChild(post2);
			block.appendChild(post3);
			block.appendChild(post4);
			block.appendChild(button3);
			document.body.appendChild(block);
		}

		function delpst(i){
    		var btn = document.getElementById(i);
			var pst = btn.parentNode;
			document.body.removeChild(pst);
		}

	</script>
  <center>
    <footer style=" position: fixed; bottom: 0; left: 0; right: 0;">
            <p ><a id = "footref" href = "aboutus.html">About Us</a>
            <a id = "footref" href = "FAQ.html">FAQ</a>
            <a id = "footref" href="privacy_policy.html">Privacy Policy</a>
            <a id = "footref" href="contactus.html">Contact Us</a>
        </footer>
  </center>
</body>
</html>