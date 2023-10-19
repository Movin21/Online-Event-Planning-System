<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Reservation</title>
    <style>
     body {
            margin-top: 100px;
        }
    </style>
</head>
<body>
<H1>Update Reservation</H1>
    <div class="update">
        <form action="updateServiceProviderServlet" method="post">
        <label for="reservationId">Reservation Id:</label>
            <input type="text" name="reservationId" value="<%= request.getParameter("reservationId") %>" required>><br>
            
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
    </div>
</body>
</html>
<jsp:include page="./Footer.jsp" />