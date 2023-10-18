<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Admin Portal</title>
  <style>
        body {
            margin-top: 80px;
            font-family: Arial, sans-serif;
            background-color: #F7F7F7;
            color: #333;
        }

        h1 {
            color: #1E0A3C;
        }

        h3 {
            color: #1E0A3C;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background-color: #1E0A3C;
            color: #FFFFFF;
        }

        tr:nth-child(even) {
            background-color: #F2F2F2;
        }

        .newAttendee {
            margin-top: 20px;
        }

        .newAttendee a {
            text-decoration: none;
        }

        .newAttendee input[type="submit"] {
            background-color: #D05716;
            color: #FFFFFF;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .newAttendee input[type="submit"]:hover {
            background-color: #FF7F43;
        }

        .updateAttendee, .deleteAttendee {
            display: inline-block;
        }

        .updateAttendee a, .deleteAttendee a {
            text-decoration: none;
        }

        .updateAttendee input[type="button"], .deleteAttendee input[type="button"] {
            background-color: #1E0A3C;
            color: #FFFFFF;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .updateAttendee input[type="button"]:hover, .deleteAttendee input[type="button"]:hover {
            background-color: #D05716;
        }
    </style>
</head>

<body>
    <h1>Welcome Admin</h1>

    <h3>Attendee Details</h3>
    <div class="newAttendee">
        <a href="adminCreateAttendee.jsp?">
            <input type="submit" value="Add New Attendee">
        </a>
    </div>
    <table border="1">
        <tr>
            <th>Attendee ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Tickets</th>
            <th>Previously Attended Events</th>
            <th>Username</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="attendee" items="${attendeeDetails}">

            <c:set var="attendeeId" value="${attendee.attendeeId}" />
            <c:set var="attendeeName" value="${attendee.attendeeName}" />
            <c:set var="attendeeAddress" value="${attendee.attendeeAddress}" />
            <c:set var="attendeePhone" value="${attendee.attendeePhone}" />
            <c:set var="attendeeEmail" value="${attendee.attendeeEmail}" />
            <c:set var="tickets" value="${attendee.tickets}" />
            <c:set var="previouslyAttendedEvents" value="${attendee.previouslyAttendedEvents}" />
            <c:set var="username" value="${attendee.username}" />
            <c:set var="password" value="${attendee.password}" />

            <tr>
                <td><c:out value="${attendee.attendeeId}" /></td>
                <td><c:out value="${attendee.attendeeName}" /></td>
                <td><c:out value="${attendee.attendeeAddress}" /></td>
                <td><c:out value="${attendee.attendeePhone}" /></td>
                <td><c:out value="${attendee.attendeeEmail}" /></td>
                <td><c:out value="${attendee.tickets}" /></td>
                <td><c:out value="${attendee.previouslyAttendedEvents}" /></td>
                <td><c:out value="${attendee.username}" /></td>

                <td>
                    <div class="updateAttendee">
                        <c:url value="adminUpdateAttendee.jsp" var="attendeeUpdate">
                            <c:param name="attendeeId" value="${attendeeId}" />
                            <c:param name="attendeeName" value="${attendeeName}" />
                            <c:param name="attendeeAddress" value="${attendeeAddress}" />
                            <c:param name="attendeePhone" value="${attendeePhone}" />
                            <c:param name="attendeeEmail" value="${attendeeEmail}" />
                            <c:param name="tickets" value="${tickets}" />
                            <c:param name="previouslyAttendedEvents" value="${previouslyAttendedEvents}" />
                            <c:param name="username" value="${username}" />
                            <c:param name="password" value="${password}" />
                        </c:url>
                        <a href="${attendeeUpdate}">
                            <input type="button" value="Update" name="update">
                        </a>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="deleteAttendee">
                        <a href="deleteAttendeeServlet?username=${username}">
                            <input type="button" value="Delete" name="Delete">
                        </a>
                    </div>
                </td>
            </tr>
        </c:forEach>
    </table>

</body>
</html>

<h3>Event Details</h3>
    <div class="newAttendee">
        <a href="adminCreateAttendee.jsp?">
            <input type="submit" value="Add New Attendee">
        </a>
    </div>
   <table border="1">
    <tr>
        <th>Event ID</th>
        <th>Event Name</th>
        <th>Venue</th>
        <th>Date</th>
        <th>Image Link</th>
        <th>Event Description</th>
        <th>Ticket Price</th>
        <th>Username</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="event" items="${eventDetails}">
        <tr>
            <td><c:out value="${event.eventId}" /></td>
            <td><c:out value="${event.eventName}" /></td>
            <td><c:out value="${event.venue}" /></td>
            <td><c:out value="${event.eventDate}" /></td>
            <td><c:out value="${event.eventImageLink}" /></td>
            <td><c:out value="${event.eventDescription}" /></td>
            <td><c:out value="${event.ticketPrice}" /></td>
            <td><c:out value="${event.username}" /></td>
            <td>
                <div class="updateEvent">
                    <c:url value="updateEvent.jsp" var="eventUpdate">
                        <c:param name="eventId" value="${event.eventId}" />
                        <!-- Add other parameters as needed -->
                    </c:url>
                    <a href="${eventUpdate}">
                        <input type="button" value="Update" name="update">
                    </a>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <div class="deleteEvent">
                    <a href="deleteEventServlet?eventId=${event.eventId}">
                        <input type="button" value="Delete" name="Delete">
                    </a>
                </div>
            </td>
        </tr>
    </c:forEach>
</table>

</html>
<jsp:include page="./Footer.jsp" />
