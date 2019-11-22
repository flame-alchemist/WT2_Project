<? php
	session_start();
?>

<!DOCTYPE html>
<html>
<head>
	<title>Sign Up</title>
	<link rel = "stylesheet" type = "text/css" href = "project.css">
	<link rel = "stylesheet" type = "text/css" href = "signup.css">
	<script src="project.js"></script>
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
				<a id="home" href = "project.html">Home</a>
				</div>
				<div>
					<a id = "linkref" href = "">Cart</a>
				</div>
				<div>
					<a id = "linkrefsignin" href = "signup.php">Sign In</a>
					<span><img class = "avatar" src="avatar.png"></span>
				</div>
			</div>
		</div>
		<br/><br/><br/>
	</center>
<br/><br/><br>

	<center><h1 style="font-family: 'Helvetica';">Sign Up Form</h1></center>

<center><form action="project.php" method="post">

	<label><b>Username            </b></label>
    <input type="text" placeholder="Enter Username" name="username" style="width: 200px;" required><br>

    <label><b>Email                   </b></label>
    <input type="text" placeholder="Enter Email" name="email" style="width: 200px;" required><br>

    <label><b>Password             </b></label>
    <input type="password" placeholder="Enter Password" id="psw" style="width: 200px;" required><br>

    <input type="checkbox" checked="checked"><b style="font-family: 'Franklin Gothic Book';">Remember me</b>
    <p style="font-family: 'Helvetica';">By creating an account you agree to our <a style="font-family: 'Franklin Gothic Book';" href="privacy_policy.html">Terms Of Privacy</a>.</p>

    <div class="clearfix">
      <button type="button" id="cancel" onclick="window.location.href = 'signup.php'">Cancel</button>
      <button type="submit" id="signup" >Sign In</button>
    </div>
</form></center><br><br>

	<center>
		<footer>
            <p ><a id = "footref" href = "aboutus.html">About Us</a>
            <a id = "footref" href = "FAQ.html">FAQ</a>
            <a id = "footref" href="privacy_policy.html">Privacy Policy</a>
            <a id = "footref" href="contactus.html">Contact Us</a>
        </footer>
	</center>

</body>
</html>