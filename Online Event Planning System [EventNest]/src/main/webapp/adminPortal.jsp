<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Portal</title>
    
</head>
<body>
    <h1>Welcome Admin</h1>
    
    <h3>Attendee Details</h3>
    <div class="newAttendee" >
        <form action="createAttendee.jsp" method="post">
        <input type="submit" value="Add New Attendee">
    </form>
    </div>
    <table border =1>
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
                
                    <td> <div class="updateAttendee" >
 <c:url value="updateAttendee.jsp" var="attendeeUpdate">
    	
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
    </div>&nbsp;&nbsp;&nbsp;&nbsp;
     <div class="deleteAttendee" >
      <a href="AttendeeDeleteServlet?username=${username}">
      <input type="button" value="Delete" name="Delete">
      </a>

    </div></td>
                
            </tr>
        </c:forEach>
    </table>


</body>
</html>