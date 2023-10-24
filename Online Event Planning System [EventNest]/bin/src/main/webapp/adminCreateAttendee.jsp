<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Attendee </title>
    <style>
     body {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<H1>Add new attendee</H1>
    <form action="AttendeeServlet" method="POST">
    <label for="attendeeId">Attendee ID:</label>
    <input type="number" name="attendeeId" required><br>

    <label for="attendeeName">Name:</label>
    <input type="text" name="attendeeName" required><br>

    <label for="address">Address:</label>
    <input type="text" name="address" required><br>

    <label for="phone">Phone:</label>
    <input type="text" name="phone" required><br>

    <label for="email">Email:</label>
    <input type="text" name="email" required><br>

    <label for="tickets">Number of Tickets:</label>
    <input type="number" name="tickets" required><br>

    <label for="previouslyAttendedEvents">Previously Attended Events:</label>
    <input type="text" name="previouslyAttendedEvents" required><br>

    <label for="username">Username:</label>
    <input type="text" name="username" required><br>

    <label for="password">Password:</label>
    <input type="password" name="password" required><br>

    <input type="submit" value="Insert">
</form>

</body>
</html>
<jsp:include page="./Footer.jsp" />