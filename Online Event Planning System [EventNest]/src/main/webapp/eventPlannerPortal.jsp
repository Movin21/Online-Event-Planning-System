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
            flex-wrap: wrap;
            gap: 2%;
            justify-content: space-between;
            margin: 20px;
            margin-top: -25px;
        }

        .card {
            margin-top: 70px;
            display: flex;
            flex-direction: column;
            align-items: center;
            background: rgb(225, 225, 225);
            height: 400px;
            width: 20%;
            transition: transform 0.7s, box-shadow 0.7s;
            box-shadow: 0 1px 10px transparent;
            padding: 3px;
            position: relative;
        }

        .card img {
            width: 292px;
            height: 180px;
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
            margin-top: 5px;
            margin-right: 190px;
        }

        .venue p {
            color: #6F7386;
            font-weight: 100;
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
            right: 0;
            display: flex;
            justify-content: space-between;
            padding: 10px;
            background-color: transparent;
        }

        .button {
            color: white;
            background-color: #1E0A3C;
            padding: 7px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.5s;
            font-weight: bold;
        }

        .buttons .button:hover {
            background-color: #d05716;
        }
        
        .create-event-button {
            margin-top: 80px;
            padding: 15px 30px; /* Increase padding for a larger button */
        }

        .create-event-button:hover {
            background-color: red; /* Change hover color to red */
        }
    </style>
    <meta charset="UTF-8">
    <title>Event Nest</title>
</head>
<body>
<!-- Create Event Button -->
<button class="button create-event-button">Create Event</button>

<!-- Event Body -->
<div class="cards_container">
    <c:forEach var="event" items="${eventDetail}">
        <div class="card">
            <img src="${event.eventImageLink}"><br>
            <h3><c:out value="${event.eventName}" /></h3><br> 
            <p><c:out value="${event.eventDescription}" /></p>
            <div class="venue">
                <p class="h4tag"><c:out value="${event.venue}" /></p><br>
            </div>
            <div class="buttons">
                <button class="button update">Update</button>
                <button class="button delete">Delete</button>
            </div>
        </div>
    </c:forEach>
</div>

</body>
</html>

<jsp:include page="./Footer.jsp" />
