
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="./CSS/style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com"  />
    <link
      href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;800&display=swap"
      rel="stylesheet"
    />

<link href='https://fonts.googleapis.com/css?family=Nunito' rel='stylesheet'>

<style>

.mySlides {
display: none;
margin-top: 14.6px;
}
img {
vertical-align: middle;
}

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
  font-size: 70px; 
  margin-top: 20px;
  color: #1E0A3C; 
  font-family: Nunito;
  font-weight: 600;
  margin-top: 100px;
}

.sub-content {
  font-size: 30px; /* Slightly smaller font size */
  color: #1E0A3C; /* Use specified color for text */
  font-family: Nunito;
}
  /* Font-family for the introduction paragraph */
  .intro-paragraph {
    justify-content: center;
    padding: 20px; 
	text-align: center;
	font-size: 15px;
	font-weight: 400;
	margin-top: 5px;
  }

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


<jsp:include page="./Header.jsp" />
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

 <!-- section - 01 -->

    <div class="section_01-03">
      <div class="section_wrapper">
        <!-- section header -->
        <div>
          <h2 class="section_header" align="center">Get paid, earn more</h2>
          <h3 class="section_description" align="center">
            Do what you love and earn more money with low-cost fees and quicker
            payouts
          </h3>
        </div>
        <!-- section body -->
        <div class="section_body_01-03">
          <!--section image-->
          <div class="media_content">
            <!--object-1-->
            <div class="media_object">
              <img src="./images/sell-tickets.svg" alt="" />
              <h3 class="media_header">Event Ticketing</h3>
              <p class="media_description">
                Sell more tickets with customizable event pages and a seamless
                checkout experience for attendees on a trusted platform
              </p>
            </div>
            <!--object-2-->
            <div class="media_object">
              <img src="./images/reports.svg" alt="" />
              <h3 class="media_header">Reporting & Analytics</h3>
              <p class="media_description">
                Learn more about your buyers and discover where sales are coming
                from with real-time analytics
              </p>
            </div>
            <!--object-3-->
          </div>
          <img class="section_image" src="./images/image 03.jpg" alt="" />
          <!--media objects-->
        </div>
      </div>
    </div>

    <!-- End of section 01 -->

    <!-- section - 02 -->

    <div class="section_02">
      <div class="section_wrapper">
        <!-- section header -->
        <div>
          <h2 class="section_header" align="center">Reach the right people</h2>
          <h3 class="section_description" align="center">
            Grow your community on a marketplace where millions of people look
            for things to do.
          </h3>
        </div>
        <!-- section body -->
        <div class="section_body">
          <!--section image-->
          <img class="section_image" src="./images/image 01.jpg" alt="" />
          <!--media objects-->
          <div class="media_content">
            <!--object-1-->
            <div class="media_object">
              <img src="./images/attendee.svg" alt="" />
              <h3 class="media_header">Attendee Discovery Personalized</h3>
              <p class="media_description">
                Personalized recommendations are tailored to attendees'
                interests and location, matching them with events they’d be most
                interested in attending
              </p>
            </div>
            <!--object-2-->
            <div class="media_object">
              <img src="./images/marketing.svg" alt="" />
              <h3 class="media_header">Marketing Tools</h3>
              <p class="media_description">
                Engage attendees and reach new ones with our suite of automated
                email and social marketing tools
              </p>
            </div>
            <!--object-3-->
            <div class="media_object">
              <img src="./images/eventbrite-ads.svg" alt="" />
              <h3 class="media_header">Eventbrite Ads</h3>
              <p class="media_description">
                Promote your event across Eventbrite and get 14x more visibility
                on our homepage, related events, search results, and more
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- End of section 02 -->

    <!-- section - 03 -->

    <div class="section_01-03">
      <div class="section_wrapper">
        <!-- section header -->
        <div>
          <h2 class="section_header" align="center">Get paid, earn more</h2>
          <h3 class="section_description" align="center">
            Do what you love and earn more money with low-cost fees and quicker
            payouts
          </h3>
        </div>
        <!-- section body -->
        <div class="section_body_01-03">
          <!--section image-->
          <div class="media_content">
            <!--object-1-->
            <div class="media_object">
              <img src="./images/wallet-money.svg" alt="" />
              <h3 class="media_header">Low-cost fees</h3>
              <p class="media_description">Clear value, transparent fees</p>
            </div>
            <!--object-2-->
            <div class="media_object">
              <img src="./images/payment-marketplace.svg" alt="" />
              <h3 class="media_header">Payment Processing</h3>
              <p class="media_description">
                Easily collect and simplify event payments with built-in,
                full-service payment processing
              </p>
            </div>
            <!--object-3-->
            <div class="media_object">
              <img src="./images/scheduled-payouts.svg" alt="" />
              <h3 class="media_header">Scheduled Payouts</h3>
              <p class="media_description">
                Get paid before your event takes place on a customized schedule
                of your choice
              </p>
            </div>
          </div>
          <img class="section_image" src="./images/image 02.jpg" alt="" />
          <!--media objects-->
        </div>
      </div>
    </div>

    <!-- End of section 03 -->

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