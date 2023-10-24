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
    
    <label for="username">Username:</label>
    <input type="text" name="username" value="<%= request.getParameter("username") %>" required><br>
    
    <label for="password">Password:</label>
    <input type="password" name="password" value="<%= request.getParameter("password") %>" required><br>
    
    <input type="submit" value="Update">  
</form>

	
</body>
</html>
<jsp:include page="./Footer.jsp" />