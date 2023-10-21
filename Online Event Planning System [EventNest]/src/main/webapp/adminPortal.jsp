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
            margin:10px;
            margin-bottom:30px;
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

        .new {
            margin-top: 20px;
            margin-bottom:15px;
        }

        .new a {
            text-decoration: none;
        }

        .new input[type="submit"] {
            background-color: #D05716;
            color: #FFFFFF;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .new input[type="submit"]:hover {
            background-color: #FF7F43;
        }

        .update, .delete {
            display: inline-block;
        }

        .update a, .delete a {
            text-decoration: none;
        }

        .update input[type="button"], .delete input[type="button"] {
            background-color: #1E0A3C;
            color: #FFFFFF;
            padding: 5px 10px;
            border: none;
            cursor: pointer;
        }

        .update input[type="button"]:hover, .delete input[type="button"]:hover {
            background-color: #D05716;
        }
        .user-count-cards {
  display: flex;
  justify-content: space-between;
}

.user-count-cards {
  display: flex;
  justify-content: space-between;
  margin: 20px 10px;
}

.user-count-card {
  flex: 1;
  background-color: #F7F7F7;
  padding: 20px;
  border: 1px solid #1E0A3C;
  border-radius:8px;
  text-align: center;
  margin: 10px 10px; 
}

h1 {
  font-size: 48px;
  color: #1E0A3C;
}

h4 {
  color: #1E0A3C;
}

.new a {
  text-decoration: none;
  display: block;
  background-color: #D05716;
  color: #fff;
  padding: 10px 20px;
  margin-top: 20px;
  border: none;
  text-align: center;
  cursor: pointer;
}

.new a:hover {
  background-color: #FF7F43;
}
.logout-button {
  text-align: center;
  margin-top: 20px;
}

.logout-button a {
  display: inline-block;
  padding: 10px 20px;
  background-color: #1E0A3C;
  color: #fff;
  text-decoration: none;
  border: none;
  border-radius: 5px;
  font-weight: bold;
  margin-bottom:25px;
}

.logout-button a:hover {
  background-color: #D05716;
}
    </style>
</head>

<body>
    <h1>Welcome to Admin Protal</h1>

    <div class="user-count-cards">
  <div class="user-count-card">
    <h1>${attendeeCount}</h1>
    <h4>Registered Users</h4>
    <div class="new">
      <a href="adminCreateAttendee.jsp">
        <input type="submit" value="Add New Attendee">
      </a>
    </div>
  </div>

  <div class="user-count-card">
    <h1>${EventCount}</h1>
    <h4>Ongoing Events</h4>
  </div>
  
  <div class="user-count-card">
    <h1>${MessageCount}</h1>
    <h4>Inquiries to Respond</h4>
  </div>

  <div class="user-count-card">
    <h1>${ReservationCount}</h1>
    <h4>Service Providers</h4>
    <div class="new">
      <a href="adminCreateServiceProvider.jsp">
        <input type="submit" value="Add Service Provider">
      </a>
    </div>
  </div>
</div>

    <h3>Attendee Details</h3>
    <table border="1">
        <tr>
            <th>Attendee ID</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Uername</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="attendee" items="${attendeeDetails}">
            <tr>
                <td><c:out value="${attendee.attendeeId}" /></td>
                <td><c:out value="${attendee.attendeeName}" /></td>
                <td><c:out value="${attendee.attendeeAddress}" /></td>
                <td><c:out value="${attendee.attendeePhone}" /></td>
                <td><c:out value="${attendee.attendeeEmail}" /></td>
                <td><c:out value="${attendee.username}" /></td>

                <td>
                    <div class="update">
                        <c:url value="adminUpdateAttendee.jsp" var="attendeeUpdate">
                            <c:param name="attendeeId" value="${attendee.attendeeId}" />
                            <c:param name="attendeeName" value="${attendee.attendeeName}" />
                            <c:param name="attendeeAddress" value="${attendee.attendeeAddress}" />
                            <c:param name="attendeePhone" value="${attendee.attendeePhone}" />
                            <c:param name="attendeeEmail" value="${attendee.attendeeEmail}" />
                            <c:param name="username" value="${attendee.username}" />
                            <c:param name="password" value="${attendee.password}" />
                        </c:url>
                        <a href="${attendeeUpdate}">
                            <input type="button" value="Update" name="update">
                        </a>
                    </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <div class="delete">
                        <a href="deleteAttendeeServlet?username=${attendee.username}">
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
           
        </tr>
    </c:forEach>
</table>
<h3>Service Provider Details</h3>

<table border="1">
    <tr>
        <th>Reservation ID</th>
        <th>Name</th>
        <th>Number of Crew</th>
        <th>Type</th>
        <th>Description</th>
        <th>Price</th>
        <th>Username</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="reservation" items="${reservations}">
        <tr>
            <td><c:out value="${reservation.reservationId}" /></td>
            <td><c:out value="${reservation.reservationName}" /></td>
            <td><c:out value="${reservation.numberOfCrew}" /></td>
            <td><c:out value="${reservation.reservationType}" /></td>
            <td><c:out value="${reservation.reservationDescription}" /></td>
            <td><c:out value="${reservation.reservationPrice}" /></td>
            <td><c:out value="${reservation.username}" /></td>
            <td>
                <div class="update">
    <c:url value="adminUpdateServiceProvider.jsp" var="reservationUpdate">
        <c:param name="reservationId" value="${reservation.reservationId}" />
        <c:param name="reservationName" value="${reservation.reservationName}" />
        <c:param name="numberOfCrew" value="${reservation.numberOfCrew}" />
        <c:param name="reservationType" value="${reservation.reservationType}" />
        <c:param name="reservationDescription" value="${reservation.reservationDescription}" />
        <c:param name="reservationPrice" value="${reservation.reservationPrice}" />
        <c:param name="username" value="${reservation.username}" />
        <c:param name="password" value="${reservation.password}" />
    </c:url>
    <a href="${reservationUpdate}">
        <input type="button" value="Update" name="update">
    </a>
</div>
&nbsp;&nbsp;&nbsp;&nbsp;
<div class="delete">
    <a href="deleteServiceProviderServlet?reservationId=${reservation.reservationId}">
        <input type="button" value="Delete" name="Delete">
    </a>
</div>

            </td>
        </tr>
    </c:forEach>
</table>

<h3>Inquiries</h3>
<table border="1">
    <tr>
        <th>Inquiry ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Issue Type</th>
        <th>Description</th>
        <th>Actions</th>
    </tr>
    <c:forEach var="message" items="${Messages}">
        <tr>
            <td><c:out value="${message.id}" /></td>
            <td><c:out value="${message.name}" /></td>
            <td><c:out value="${message.email}" /></td>
            <td><c:out value="${message.phone}" /></td>
            <td><c:out value="${message.issueType}" /></td>
            <td><c:out value="${message.description}" /></td>

            <td>
                <div class="delete">
                    <a href="deleteHelpCenterServlet?id=${message.id}">
                        <input type="button" value="Mark As Read" >
                    </a>
                </div>
            </td>
        </tr>
    </c:forEach>
</table>

<div class="logout-button">
  <a href="adminLoginPage.jsp">Logout</a>
</div>

</html>
<jsp:include page="./Footer.jsp" />
