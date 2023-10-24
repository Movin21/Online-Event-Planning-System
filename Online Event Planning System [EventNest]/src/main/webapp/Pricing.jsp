

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pricing</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="./CSS/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<jsp:include page="Header.jsp" />
	<body id="myPage">

<!-- Pricing Row -->
<div class="w3-row-padding w3-center w3-padding-64" id="pricing">
    <h2>PRICING</h2>
    <p>Choose a pricing plan that fits your needs.</p><br>
    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Basic</p>
        </li>
        <li class="w3-padding-16"><b>Up to 10 hours</b>  of consultation</li>
        <li class="w3-padding-16"><b>Basic event design</b></li>
        <li class="w3-padding-16"><b>Vendor recommendations and negotiations</b></li>
        <li class="w3-padding-16"><b>Day-of coordination</b></li>
        <li class="w3-padding-16"><b>---</b></li>
        <li class="w3-padding-16">
          <h2 class="w3-wide"><i class="fa fa-usd"></i> 10</h2>
          <span class="w3-opacity">per month</span>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
          <button class="w3-button w3-teal w3-padding-large"><i class="fa fa-check"></i> Sign Up</button>
        </li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme-l2">
          <p class="w3-xlarge">Pro</p>
        </li>
        <li class="w3-padding-16"><b>Up to 20 hours</b>  of consultation</li>
        <li class="w3-padding-16"><b>Detailed event design</b></li>
        <li class="w3-padding-16"><b>Vendor recommendations and negotiations</b></li>
        <li class="w3-padding-16"><b>RSVP management</b></li>
        <li class="w3-padding-16"><b>Day-of coordination</b></li>
        <li class="w3-padding-16">
          <h2 class="w3-wide"><i class="fa fa-usd"></i> 25</h2>
          <span class="w3-opacity">per month</span>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
          <button class="w3-button w3-teal w3-padding-large"><i class="fa fa-check"></i> Sign Up</button>
        </li>
      </ul>
    </div>

    <div class="w3-third w3-margin-bottom">
      <ul class="w3-ul w3-border w3-hover-shadow">
        <li class="w3-theme">
          <p class="w3-xlarge">Premium</p>
        </li>
        <li class="w3-padding-16"><b>Unlimited consultation</b> </li>
        <li class="w3-padding-16"><b>Custom event design</b></li>
        <li class="w3-padding-16"><b>Full vendor recommendations and negotiations</b></li>
        <li class="w3-padding-16"><b>Guest list management</b></li>
        <li class="w3-padding-16"><b>Full event day coordination</b></li>
        <li class="w3-padding-16">
          <h2 class="w3-wide"><i class="fa fa-usd"></i> 50</h2>
          <span class="w3-opacity">per month</span>
        </li>
        <li class="w3-theme-l5 w3-padding-24">
          <button class="w3-button w3-teal w3-padding-large"><i class="fa fa-check"></i> Sign Up</button>
        </li>
      </ul>
    </div>
</div>

	
</body>
</html>

<jsp:include page="./Footer.jsp"/>