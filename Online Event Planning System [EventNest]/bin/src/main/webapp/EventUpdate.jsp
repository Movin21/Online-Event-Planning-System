<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Event </title>
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

  form {
    width: 80%;
    margin: 0 auto; /* Center the form on the page */
  }

  label {
    display: block;
    margin-top: 10px;
    color: #1E0A3C;
    text-align: left; /* Left-align the labels */
  }

  input {
    width: 100%;
    padding: 10px;
    border: 1px solid #1E0A3C;
    border-radius: 5px;
  }

  input[type="number"] {
    width: 100%;
    padding: 10px;
    border: 1px solid #1E0A3C;
    border-radius: 5px;
  }

  input[type="submit"] {
  	width: 20%;
    background-color: #D05716;
    color: #FFFFFF;
    padding: 10px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right; 
    margin-top:25px;
    margin-bottom:15px;
    margin-right:-21px;
  }

  input[type="submit"]:hover {
    background-color: #FF7F43;
  }
</style>
</head>
<body>
	<H1>Update Event</H1>
  <form action="updateEventServlet" method="POST">
  	<label for="eventID">Event ID:</label>
    <input type="text" name="eventId" value="<%= request.getParameter("eventID") %>" required><br>
    
    <label for="eventName">Event Name:</label>
    <input type="text" name="eventName" value="<%= request.getParameter("eventName") %>" required><br>
    
    <label for="venue">Venue:</label>
    <input type="text" name="venue" value="<%= request.getParameter("venue") %>" required><br>
    
    <label for="eventDate">Date:</label>
    <input type="text" name="eventDate" value="<%= request.getParameter("eventDate") %>" required><br>
    
    <label for="imgLink">Image Link:</label>
    <input type="text" name="imgLink" value="<%= request.getParameter("eventImageLink") %>" required><br>
    
    <label for="description">Event Description:</label>
    <input type="text" name="description" value="<%= request.getParameter("eventDescription") %>" required><br>
    
    <label for="ticketPrice">Ticket Price:</label>
    <input type="text" name="ticketPrice" value="<%= request.getParameter("ticketPrice") %>" required><br>
 
    <input type="submit" value="Update Event Details">  
</form>

	
</body>
</html>
<jsp:include page="./Footer.jsp" />