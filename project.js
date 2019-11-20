function searchfn(){
	var x = document.getElementById("mysearch");
    var y = document.getElementById("btn");
    y.value = x.value;
    console.log(y.value);
    switch(y.value){
    	case "Apple": 
    		window.location.href = "page_apple.html";
    		break;
    	case "Samsung": 
    		window.location.href = "page_samsung.html";
    		break;
    	case "OnePlus": 
    		window.location.href = "page_oneplus.html";
    		break;
    	case "Google": 
    		window.location.href = "page_google.html";
    		break;
    	case "Htc": 
    		window.location.href = "page_htc.html";
    		break;
    	default:
    		window.location.href = "project.html";
    }
}