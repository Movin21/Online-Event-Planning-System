
<!--Importing the Event DB packages-->
<%@ page import="java.util.List" %>
<%@ page import="com.Event.Model.Event" %>
<%@ page import="com.Event.Util.EventDBUtil" %>


<%@ page import="com.ServiceProvider.Util.*" %>
<%@ page import="com.ServiceProvider.Model.*" %>


<!--Retriving Details Using Scriplets!-->
<%	
	List<Event> eventDetails = EventDBUtil.getEvent();
    request.setAttribute("eventDetail", eventDetails);
    
	// Service Provider retrieve data
	List<Reservation> reservations = ReservationDBUtil.getReservations();
	request.setAttribute("reservations", reservations);

%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./CSS/home.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
    <link rel="icon" href="./images/favicon.ico">
    <title>Event Nest</title>
</head>
<body>
	<div class="header">
        <!--logo-->
        <a href="Home.jsp"><img class="logo1" src="./images/Screenshot 2023-10-01 212552.png" alt="EventNest"></a>
        <!--search bar-->
        
            <div class="search-bar">

    <form action="SearchBarServlet" method="GET">
        <input type="text" placeholder="Search events...." name="keyWord">
        <button type="submit" class="searchButton">
            <i class="fas fa-search"></i>
        </button>
    </form>
</div>

            <!--navigation bar-->
            <div class="menu-item">
                <ul class="nav">
                    <li><a href="Event.jsp">Find Events</a></li>
                    <li><a href="#">Buy Tickets</a></li>
                    <li><a href="Pricing.jsp">Pricing</a></li>
                    <!--dropdown menu-->
                    <li class="dropdown">
                        <a href="#">Help Center</a>
                        <div class="dropdown-content">
                            <a href="HelpCenter.jsp">Help Center</a>
                            <a href="HelpCenter.jsp">Contact Us</a>
                        </div>
                    </li>
            
                </ul>
            </div>

        <!--login signup buttons-->
        <div class="user-buttons">
            <button class="login"><a href="Login.jsp">Login</a></button>
            <button class="signin"><a href="#">Sign In</a></button>
        </div>
    </div>  
</body>
</html>