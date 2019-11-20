function searchfn(){
	var x = document.getElementById("mysearch");
    var y = document.getElementById("btn");
    y.value = x.value;
    console.log(y.value);
    switch(y.value){
    	case "Apple": 
    		window.location.href = "page_apple.php";
    		break;
    	case "Samsung": 
    		window.location.href = "page_samsung.php";
    		break;
    	case "OnePlus": 
    		window.location.href = "page_oneplus.php";
    		break;
    	case "Google": 
    		window.location.href = "page_google.php";
    		break;
    	case "Htc": 
    		window.location.href = "page_htc.php";
    		break;
    	default:
    		window.location.href = "project.php";
    }
}