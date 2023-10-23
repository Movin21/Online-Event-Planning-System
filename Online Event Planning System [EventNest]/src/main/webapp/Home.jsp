<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>

<style>

.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  height: 200px;
  width: 100%;
  margin-bottom: 300px;

}

/* Caption text */
.text1 {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext1 {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
  margin-top: -8000px;

}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* Additional content styles */
.additional-content {
  text-align: center;
  font-size: 60px; /* Very big font size */
  margin-top: 20px; /* Add some margin for separation */
  color: #1E0A3C; /* Use specified color for text */
  font-family: Nunito;
  font-weight: 600;
  margin-top: 100px;
}

.sub-content {
  font-size: 28px; /* Slightly smaller font size */
  color: #1E0A3C; /* Use specified color for text */
  font-family: Nunito;
  margin-top: 10px;
}
  /* Font-family for the introduction paragraph */
  .intro-paragraph {
    justify-content: center;
  }

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>

<h2>Automatic Slideshow</h2>
<p>Change image every 2 seconds:</p>



<div class="slideshow-container">

<div class="margin">

<div class="mySlides fade">
  <div class="numbertext1"></div>
  <img src="./images/1.png" style="width:100%">
  <div class="text1"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext1"></div>
  <img src="./images/2.png" style="width:100%">
  <div class="text1"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext1"></div>
  <img src="./images/3.png" style="width:100%">
  <div class="text"></div>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

</div>

<!-- Additional content -->
<div class="additional-content">What's happening in the World</div>
<div class="sub-content">Let's uncover the best events taking place in Everywhere</div>

<!-- Introduction paragraph with specified font-family -->
<div class="intro-paragraph">
  Welcome to EventNest, your one-stop destination for discovering and celebrating the world of events. Whether you're passionate about music, art, sports, or culture, EventNest brings you closer to the most exciting and diverse events happening in your city and beyond. Our platform is designed to make event exploration and ticket booking a breeze, ensuring you never miss out on memorable experiences. Join us in your journey of connecting with like-minded enthusiasts and embracing the spirit of every event. Let's make memories together!
</div>

<script>
		let slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  let i;
		  let slides = document.getElementsByClassName("mySlides");
		  let dots = document.getElementsByClassName("dot");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  for (i = 0; i < dots.length; i++) {
		    dots[i].className = dots[i].className.replace(" active", "");
		  }
		  slides[slideIndex-1].style.display = "block";  
		  dots[slideIndex-1].className += " active";
		  setTimeout(showSlides, 4000); // Change image every 2 seconds
}
</script>

</body>
</html> 



<jsp:include page="./Footer.jsp"/>