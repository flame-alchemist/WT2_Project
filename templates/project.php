<!DOCTYPE html>
<html>
<head>
	<title>    Home    </title>
<!--...........................................................................................................................-->
	
	<style type="text/css">
		 .slider-holder
        {
            width: 800px;
            height: 400px;
            background-color: yellow;
            margin-left: auto;
            margin-right: auto;
            margin-top: 0px;
            text-align: center;
            overflow: hidden;
            border: 2px solid #ccc;
            border-radius: 10px;
        }
        
        .image-holder
        {
            width: 2400px;
            background-color: red;
            height: 400px;
            clear: both;
            position: relative;
            
            -webkit-transition: left 2s;
            -moz-transition: left 2s;
            -o-transition: left 2s;
            transition: left 2s;
        }
        
        .slider-image
        {
            float: left;
            margin: 0px;
            padding: 0px;
            position: relative;
        }
        
        #slider-image-1:target ~ .image-holder
        {
            left: 0px;
        }
        
        #slider-image-2:target ~ .image-holder
        {
            left: -800px;
        }
        
        #slider-image-3:target ~ .image-holder
        {
            left: -1600px;
        }
        
        .button-holder
        {
            position: relative;
            top: -20px;
        }
        
        .slider-change
        {
            display: inline-block;
            height: 10px;
            width: 10px;
            border-radius: 5px;
            background-color: #0f1626;
        }
	</style>

<!--...........................................................................................................................-->


</head>
<link rel = "stylesheet" type = "text/css" href = "project.css">
<script src="project1.js"></script>
<body onload="func()">
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


		<div class = "topbrandsdiv">
			<div class="topbrands">	TOP BRANDS	</div>
			<a href="page_samsung.php"><img src="samsung1.png" class = "brandlogo"></a>
			<a href="page_oneplus.php""><img src="op1.png" class = "brandlogo"></a>
			<a href="page_apple.php"><img src="apple1.png" class = "brandlogo" style="width: 50px; height:50px; margin-bottom: 30px;"></a>
			<a href="page_htc.php"><img src="htc1.png" class = "brandlogo"></a>
			<a href="page_google.php"><img src="glogo.png" class = "brandlogo" style="width: 40px; height:40px; margin-bottom: 30px; margin-right: 4%;"></a>
		</div>
	</center>
		

		<center>
		<h2 style = "color:white; font-family: Franklin Gothic Book; color:#0f1626;"><i>New Arrivals</i></h2><br>
		<div class="slider-holder">
        <span id="slider-image-1"></span>
        <span id="slider-image-2"></span>
        <span id="slider-image-3"></span>
        <div class="image-holder">
            <img src="4.jpg" class="slider-image" />
            <img src="5.jpg" class="slider-image" />
            <img src="6.jpg" class="slider-image" />
        </div>
        <div class="button-holder">
            <a href="#slider-image-1" class="slider-change"></a>
            <a href="#slider-image-2" class="slider-change"></a>
            <a href="#slider-image-3" class="slider-change"></a>
        </div>
    </div>
	</center><br>


	<center>
		<footer>
            <p ><a id = "footref" href = "aboutus.php">About Us</a>
            <a id = "footref" href = "FAQ.php">FAQ</a>
            <a id = "footref" href="privacy_policy.php">Privacy Policy</a>
            <a id = "footref" href="contactus.php">Contact Us</a>
        </footer>
	</center>
</body>
<script type="text/javascript">
	function func(){
		alert("Welcome <?php echo $_POST['username']; ?>!")
	}
</script>
</html>