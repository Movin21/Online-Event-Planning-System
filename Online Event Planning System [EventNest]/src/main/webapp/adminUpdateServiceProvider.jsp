<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Reservation</title>
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
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    float: right; 
    margin:15px;
 
  }

  input[type="submit"]:hover {
    background-color: #FF7F43;
  }
</style>

</head>
<body>
<H1>Update Reservation</H1>
  
        <form action="updateServiceProviderServlet" method="post">
        <label for="reservationId">Reservation Id:</label>
            <input type="text" name="reservationId" value="<%= request.getParameter("reservationId") %>" required><br>
            
            <label for="reservationName">Reservation Name:</label>
            <input type="text" id="reservationName" name="reservationName" value="<%= request.getParameter("reservationName") %>" required><br>
            
            <label for="numberOfCrew">Number of Crew:</label>
            <input type="number" id="numberOfCrew" name="numberOfCrew" value="<%= request.getParameter("numberOfCrew") %>" required><br>
            
            <label for="reservationType">Reservation Type:</label>
            <input type="text" id="reservationType" name="reservationType" value="<%= request.getParameter("reservationType") %>"required><br>
            
            <label for="reservationDescription">Reservation Description:</label>
            <input id="reservationDescription" name="reservationDescription" value="<%= request.getParameter("reservationDescription") %>" required ><br>
            
            <label for="reservationPrice">Reservation Price:</label>
            <input type="number" id="reservationPrice" name="reservationPrice" value="<%= request.getParameter("reservationPrice") %>" required><br>

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%= request.getParameter("username") %>" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" value="<%= request.getParameter("password") %>" required><br>
            
            <input type="submit" value="Update" name="update">
        </form>
    
</body>
</html>
<jsp:include page="./Footer.jsp" />