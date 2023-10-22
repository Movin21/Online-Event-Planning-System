<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
</head>
<body>
    <h1>Search Results</h1>
    
    
            
              <table border="1">
        <tr>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Venue</th>
            <th>Event Date</th>
            <th>Event Description</th>
            <th>Ticket Price</th>
            
        </tr>
        
        <c:forEach var="event" items="${results}">
            <tr>
                <td><c:out value="${event.eventId}" /></td>
                <td><c:out value="${event.eventName}" /></td>
                <td><c:out value="${event.venue}" /></td>
                <td><c:out value="${event.eventDate}" /></td>
                <td><c:out value="${event.eventDescription}" /></td>
                <td><c:out value="${event.ticketPrice}" /></td>
             
            </tr>
        </c:forEach>
    </table>
            
        
    
    
    <p><a href="Home.jsp">Back to Home</a></p>
</body>
</html>
