

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>About Us - EventNest</title>
</head>

<jsp:include page="Header.jsp" />
<style>

        .header4 {
            background-color: #1E0A3C;
            color: #FFFFFF;
            text-align: center;
            padding: 60px 0;
            width: 100%;
            margin-top: 60px;
        }

        .header4 > h1{
            font-size: 60px;
            font-weight: 600;
            
        }
        .about-container {
            margin-top: -70px;
            padding: 40px 20%;
            text-align: center;
        }
        .about-title {
            margin-top: 100px;
            font-size: 36px;
            font-weight: bold;
            color: #1E0A3C;

        }
        .about-text {

            font-size: 18px;
            color: #000000;
        }

        .about-text li{
            font-size: 15px;
            color: #000000;
        }
        .team-container {
            padding: 64px 0;
            text-align: center;
        }
        .team-title {
            font-size: 36px;
            font-weight: bold;
        }
        .team-subtitle {
            font-size: 20px;
            color: #555;
        }
        .team-member {
            width: 25%;
            display: inline-block;
            padding: 10px;
        }
        .team-member img {
            width: 45%;
            border-radius: 50%;
            transition: opacity 0.3s;
        }
        .team-member h3 {
            margin: 10px 0;
            font-size: 24px;
        }
        .team-member p {
            font-size: 18px;
            color: #777;
        }
        .team-member:hover img {
            opacity: 0.7;
        }
        .about-container ul {
            text-align: left;
            margin-left: 20px;
            font-size: 16px;
            line-height: 1.6;
        }
    </style>
</head>

<body>
    <div class="header4">
        <h1>About Us - EventNest</h1>
    </div>

    <div class="about-container" id="about">
        <h1 class="about-title">About Us</h1>
        <p class="about-text">
            At EventNest, we are passionate about bringing your dream events to life. We understand that every occasion, whether it's a wedding, corporate conference, or a birthday celebration, is a momentous chapter in your life. Our mission is to make your event planning experience seamless and memorable.
        </p>

        <h2 class="about-title">Our Work</h2>
        <p class="about-text">
            EventNest was founded with a vision to revolutionize the event planning industry by providing a comprehensive online platform that simplifies the entire process. We take pride in our work, which revolves around the following key principles:
        </p>
        <ul class="about-text">
            <li>Simplicity and Convenience: We believe that event planning should be stress-free. Our platform is designed to streamline every aspect of the planning process, from choosing the perfect venue to customizing the event decor. With EventNest, you can plan your event from the comfort of your home.</li>
            <li>Choice and Flexibility: EventNest offers an extensive selection of vendors, venues, and event services. We understand that every event is unique, and our platform allows you to customize and tailor your event according to your preferences.</li>
            <li>Expert Guidance: Our team of experienced event planners and vendors are always ready to provide expert advice and guidance. From selecting the right catering service to coordinating with decorators, we are here to support you at every step of your event journey.</li>
        </ul>

        <h2 class="about-title">About EventNest</h2>
        <p class="about-text">
            EventNest is your dedicated online event planning system. We have created a platform that combines cutting-edge technology with a passion for event planning. Our system offers the following features:
        </p>
        <ul class="about-text">
            <li>Vendor Directory: Browse through a vast vendor directory with a wide range of services, ensuring you find the perfect match for your event.</li>
            <li>Customization Tools: Use our customization tools to design your event space, select catering options, and personalize your event experience.</li>
            <li>Budget Management: Stay on top of your event expenses with our budget management tools, ensuring your event stays within financial expectations.</li>
            <li>Collaborative Planning: Collaborate with your event planning team and vendors seamlessly through our online platform.</li>
            <li>Real-time Updates: Stay informed with real-time updates on your event's progress, including RSVPs and guest communications.</li>
        </ul>

        <p class="about-text">
            At EventNest, we are committed to making event planning efficient, affordable, and enjoyable. We take pride in providing a platform that brings your vision to life while eliminating the stress of planning.
        </p>

        <h2 class="about-title">Join the EventNest Community</h2>
        <p class="about-text">
            We invite you to be part of the EventNest community. Whether you're planning a wedding, a corporate event, or any other special occasion, we are here to make your event dreams come true. Join us in shaping unforgettable moments and creating lasting memories.
        </p>

        <p class="about-text">
            Thank you for choosing EventNest as your event planning partner. We look forward to being a part of your extraordinary event journey.
        </p>
    </div>

    <!-- Team Container -->
    <div class="w3-container w3-padding-64 w3-center" id="team">
        <h1 class="team-title">OUR TEAM</h1>
        <h3 class="team-subtitle">Meet The Team - Our Office Rats:</h3>
    
        <div class="w3-row"><br>
    
        <div class="w3-quarter">
            <img src="./images/images.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
            <h3>Yasas Lakmina</h3>
            <p>Web Designer</p>
        </div>
    
        <div class="w3-quarter">
            <img src="./images/images.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
            <h3>Thenuka</h3>
            <p>Support</p>
        </div>
    
        <div class="w3-quarter">
            <img src="./images/images.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
            <h3>Movindu</h3>
            <p>Boss man</p>
        </div>
    
        <div class="w3-quarter">
            <img src="./images/images.png" alt="Boss" style="width:45%" class="w3-circle w3-hover-opacity">
            <h3>Sithija</h3>
            <p>Fixer</p>
        </div>
    
        </div>
    </div>
</body>
</html>

<jsp:include page="./Footer.jsp"/>