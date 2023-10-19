<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert Attendee </title>
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
<H1>Add new attendee</H1>
    <form action="insertAttendeeServlet" method="POST">
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