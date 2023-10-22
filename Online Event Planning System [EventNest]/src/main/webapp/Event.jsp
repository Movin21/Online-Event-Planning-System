<jsp:include page="./Header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        /* Cards */
        .cards_container {
            margin-top: 70px;
            margin-bottom: 50px;
            display: flex;
            flex-wrap: wrap; /* Allow cards to wrap to the next row */
            gap: 2%; /* Adjust the space between cards */
            justify-content: space-between; /* Distribute space evenly between cards */
            margin: 20px; /* Add a fixed margin on both sides */
        }

        .card {
            margin-top: 70px;
            display: flex;
            flex-direction: column;
            background: rgb(225, 225, 225);
            height: 420px;
            width: 22%; /* Divide the row into four columns, leave some space for gaps */
            border-radius: 20px;
            transition: transform 0.7s, box-shadow 0.7s; /* Apply transitions to entire card */
            box-shadow: 0 1px 10px transparent; /* Initial shadow is transparent */
            padding: 1px;
        }

        .card img {
            width: 318px;
            height: 190px;
            border-radius: 10px;
            margin-right: 10px;
        }

        .card:hover {
            transform: scale(1.02); /* Apply scaling on hover */
            box-shadow: 0 1px 10px black; /* Apply shadow on hover */
        }

        .arrow:hover {
            margin-left: 10px;
            transition: 0.5s;
            text-decoration: none;
        }

        .arrow {
            display: flex;
            color: #000000;
        }

        .card h3 {
            margin-left: 5px;
        }

        .card h4 {
            margin-left: 5px;
        }

        .h4tag {
            display: flex; /* Make the venue and date flex containers */
            align-items: center; /* Align items vertically in the flex container */
            margin-left: 5px; /* Add margin to the left of the text */
        }

        .location-icon::before {
            content: "\f041"; /* Unicode for location icon */
            font-family: FontAwesome; /* Use FontAwesome for the icon */
            margin-right: 5px; /* Add space between icon and text */
        }

        .calendar-icon::before {
            content: "\f073"; /* Unicode for calendar icon */
            font-family: FontAwesome; /* Use FontAwesome for the icon */
            margin-right: 5px; /* Add space between icon and text */
        }

        .venue p, .date p {
        	
            color: #6F7386;
            font-weight: 100;
        }

        .venue p, .date p {
            font-style: italic; /* Apply italic style to venue and date text */
        }
        
        .venue{
        	margin-top: 10px;
        	display: flex;
        	justify-content: flex-start;
        }
        
        .align{
        	justify-content: center;
        }
        

        .card p {
            font-size: 15px;
            margin-left: 5px;
            font-weight: 400;
        }

        .card a {
            font-size: 15px;
            margin-right: 180px;
            text-decoration: none;
            margin-top: auto; /* Push it to the bottom */
        }

        .section_1 .text1 {
            color: rgb(130, 10, 10);
        }

        .section_1 .text2 {
            color: rgb(58, 50, 123);
        }
    </style>
    <meta charset="UTF-8">
    <title>Event Nest</title>
</head>
<body>

<c:out value="${eventDescription}" />
<!-- Event Body -->
<div class="cards_container">
    <c:forEach var="event" items="${eventDetail}">
        <div class="card">
        <center>
            <img src="${event.eventImageLink}"><br>
            <h3><c:out value="${event.eventName}" /></h3><br>
        </center>
            <p><c:out value="${event.eventDescription}" /></p>
        
            <div class="venue">
                <span class="location-icon"></span><p class="h4tag"><c:out value="${event.venue}" /></p>
            </div>
            <div class="venue">
            <span class="calendar-icon"></span><p class="h4tag"><c:out value="${event.eventDate}" /></p>
            </div>
            <a href="About.php"><h4 class="arrow">Get Tickets $<c:out value="${event.ticketPrice}" /></h4></a>
        </div>
    </c:forEach>
</div>

</body>
</html>

<jsp:include page="./Footer.jsp" />
