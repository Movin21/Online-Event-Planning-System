<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Attendee </title>
     <style>
     body {
            margin-top: 100px;
        }
    </style>
</head>
<body>
	<H1>Update Attendee</H1>
  <form action="updateAttendeeServlet" method="POST">
  	<label for="attendeeId">Id:</label>
    <input type="text" name="attendeeId" value="<%= request.getParameter("attendeeId") %>" required><br>
    
    <label for="attendeeName">Name:</label>
    <input type="text" name="attendeeName" value="<%= request.getParameter("attendeeName") %>" required><br>
    
    <label for="address">Address:</label>
    <input type="text" name="attendeeAddress" value="<%= request.getParameter("attendeeAddress") %>" required><br>
    
    <label for="phone">Phone:</label>
    <input type="text" name="attendeePhone" value="<%= request.getParameter("attendeePhone") %>" required><br>
    
    <label for="email">Email:</label>
    <input type="text" name="attendeeEmail" value="<%= request.getParameter("attendeeEmail") %>" required><br>
    
    <label for="tickets">Number of Tickets:</label>
    <input type="number" name="tickets" value="<%= request.getParameter("tickets") %>" required><br>
    
    <label for="previouslyAttendedEvents">Previously Attended Events:</label>
    <input type="text" name="previouslyAttendedEvents" value="<%= request.getParameter("previouslyAttendedEvents") %>" required><br>
    
    <label for="username">Username:</label>
    <input type="text" name="username" value="<%= request.getParameter("username") %>" required><br>
    
    <label for="password">Password:</label>
    <input type="password" name="password" value="<%= request.getParameter("password") %>" required><br>
    
    <input type="submit" value="Update">  
</form>

	
</body>
</html>
<jsp:include page="./Footer.jsp" />