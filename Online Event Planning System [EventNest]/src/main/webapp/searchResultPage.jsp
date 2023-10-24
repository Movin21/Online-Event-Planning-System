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
            margin:  20px; /* Add a fixed margin on both sides */
     
        }
        
        .card img{
        	border-radius: 20px;
        }

        .cards_container {
            margin-top: 70px;
            margin-bottom: 50px;
            display: flex;
            flex-wrap: wrap; /* Allow cards to wrap to the next row */
            gap: 2%; /* Adjust the space between cards */
            justify-content: space-between; /* Distribute space evenly between cards */
            margin: 20px; /* Add a fixed margin on both sides */
            border-radius: 20px;
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
        
        .card h4{
        	margin-left: 5px;
        }
        
		.h4tag{
			margin-top: 5px;
			margin-right: 190px;
		}
		
		.venue p{
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

<!-- Event Body -->
<div class="cards_container">
     <c:forEach var="event" items="${results}">
        <div class="card">
            <img src="${event.eventImageLink}"><br>
            <h3><c:out value="${event.eventName}" /></h3><br> 
            <p><c:out value="${event.eventDescription}" /></p>
            <div class="venue">
            <p class="h4tag"><c:out value="${event.venue}" /></p><br>
            </div>
            <a href="About.php"><h4 class="arrow">Get Tickets $<c:out value="${event.ticketPrice}" /></h4></a>
        </div>
    </c:forEach>
</div>

</body>
</html>

<jsp:include page="./Footer.jsp"/>