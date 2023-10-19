<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Reservation</title>
    <style>
        body {
            margin-top: 100px;
        }
    </style>
</head>
<body>
    <h1>Add new Reservation</h1>
    <form action="insertReservationServlet" method="POST">
        <label for="reservationId">Reservation ID:</label>
        <input type="number" name="reservationId" required><br>

        <label for="reservationName">Name:</label>
        <input type="text" name="reservationName" required><br>

        <label for="numberOfCrew">Number of Crew:</label>
        <input type="number" name="numberOfCrew" required><br>

        <label for="reservationType">Type:</label>
        <input type="text" name="reservationType" required><br>

        <label for="reservationDescription">Description:</label>
        <input type="text" name="reservationDescription" required><br>

        <label for="reservationPrice">Price:</label>
        <input type="number" name="reservationPrice" required><br>

        <label for="username">Username:</label>
        <input type="text" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" name="password" required><br>

        <input type="submit" value="Insert">
    </form>
</body>
</html>
<jsp:include page="./Footer.jsp" />
