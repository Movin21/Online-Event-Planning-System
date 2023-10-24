<jsp:include page="./Header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
    <style>
        /* Background Image */
        body {
        	width: 100%;
            background-image: url('https://img.freepik.com/free-photo/glowing-stage-light-illuminates-cheering-rock-fans-generated-by-ai_188544-37983.jpg?w=1380&t=st=1698062974~exp=1698063574~hmac=32d9867b132030d1ee53223403719fb3ce59965df8d7b85304487803b33381b6');
            background-size: cover; /* Adjust background size as needed */
            background-repeat: no-repeat;
            background-attachment: fixed; /* Keeps the image fixed as you scroll */
        }

        /* Header Section */
        .header1 {
            margin-top: 100px;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .header1 h1 {
            font-size: 45px;
            margin: 0;
        }

        .header1 p {
            font-size: 18px;
            margin: 0;
        }
        
        .cards_container {
        	background-image: url('');
            background-size: cover; /* Adjust background size as needed */
            background-repeat: no-repeat;
            background-attachment: fixed; /* Keeps the image fixed as you scroll */
            margin-top: 70px;
            margin-bottom: 50px;
            display: flex;
            flex-wrap: wrap;
            gap: 2%;
            justify-content: space-between;
            margin: 20px;
            position: relative;
        }

        .card {
            margin-top: 70px;
            display: flex;
            flex-direction: column;
            background: rgb(225, 225, 225);
            height: 425px;
            width: 22%;
            transition: transform 0.7s, box-shadow 0.7s;
            box-shadow: 0 1px 10px transparent;
            padding: 2px;
            position: relative;
        }

        .card img {
            width: 315px;
            height: 180px;
            margin-right: 10px;
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
            display: flex;
            align-items: center;
            margin-left: 5px;
        }

        .location-icon::before {
            content: "\f041";
            font-family: FontAwesome;
            margin-right: 5px;
        }

        .calendar-icon::before {
            content: "\f073";
            font-family: FontAwesome;
            margin-right: 5px;
        }

        .venue p, .date p {
            color: #6F7386;
            font-weight: 100;
        }

        .venue p, .date p {
            font-style: italic;
        }

        .venue {
            margin-top: 10px;
            display: flex;
            justify-content: flex-start;
        }

        .align {
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
            margin-top: auto;
        }

        .buttons {
            position: absolute;
            bottom: 0;
            left: 0;
            display: flex;
            flex-direction: row;
            align-items: center;
        }

        .buttons input[type="submit"].update,
        .buttons button.delete {
            background-color: #1E0A3C;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 5px 10px;
            margin: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .buttons input[type="submit"].update:hover,
        .buttons button.delete:hover {
            background-color: #d05716;
        }

        .section_1 .text1 {
            color: rgb(130, 10, 10);
        }

        .section_1 .text2 {
            color: rgb(58, 50, 123);
        }

        /* Create Event Button */
        .create-event-button {
            background-color: #1E0A3C;
            color: white;
            border: none;
            border-radius: 0;
            padding: 20px 70px;
            font-size: 20px;
            margin-top: 50px;
            transition: background-color 0.3s;
            text-decoration: none;
        }
        
        .create-event-button:hover {
            background-color: #d05716;
        }

        #del {
            margin-left: -100px;
        }

        #upd {
            margin-right: -100px;
        }
        
        /* Adjust the rest of your styles as needed */

    </style>
    <meta charset="UTF-8">
    <title>Event Nest</title>
</head>
<body>
    <div class="header1">
        <h1>Welcome to Event Planner Dashboard!</h1>
    </div>

    <!-- Create Event Button -->
    <a href="CreateEvent.jsp">
        <button class="create-event-button"><h3>Create Event</h3></button>
    </a>

    <!-- Event Body -->
    <div class="cards_container">
        <c:forEach var="event" items="${eventDetail}">
            
            <c:set var="eventName" value="${event.eventName}"/>
            <c:set var="eventID" value="${event.eventID}"/>
            <c:set var="venue" value="${event.venue}"/>
            <c:set var="eventDate" value="${event.eventDate}"/>
            <c:set var="eventImageLink" value="${event.eventImageLink}"/>
            <c:set var="eventDescription" value="${event.eventDescription}"/>
            <c:set var="ticketPrice" value="${event.ticketPrice}"/>

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
                <h4 class="arrow">$<c:out value="${event.ticketPrice}" /></h4>
                
                <c:url value="EventUpdate.jsp" var="update">
                    <c:param name="eventID" value="${eventID}"/>
                    <c:param name="eventName" value="${eventName}"/>
                    <c:param name="venue" value="${venue}"/>
                    <c:param name="eventDate" value="${eventDate}"/>
                    <c:param name="eventImageLink" value="${eventImageLink}"/>
                    <c:param name="eventDescription" value="${eventDescription}"/>
                    <c:param name="ticketPrice" value="${ticketPrice}"/>
                </c:url>
                
                <div class="buttons">
                    <a href="${update}">
                        <input type="submit" class="update" name="update" value="Update"  id="upd"/>
                    </a>
                    <a href="deleteEventServlet?eventId=${eventID}">
                        <input type="submit" class="update" name="delete" value="Delete" id="del" />
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>
</body>
</html>

<jsp:include page="./Footer.jsp" />
