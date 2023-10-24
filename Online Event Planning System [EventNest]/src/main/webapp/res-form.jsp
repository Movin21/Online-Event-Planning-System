<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Reservation Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #1E0A3C; /* Dark background color */
            color: #d05716; /* Text color */
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #d05716; /* Heading color */
        }

        form {
            background-color: #e9f2f2;
            color: #d05716;
            padding: 20px;
            border: 1px solid #d05716;
            border-radius: 5px;
            margin-top: 20px;
            width: 40%; /* Reduce the form width to 40% */
            margin: 0 auto; /* Center-align the form */
        }

        label {
            display: block;
            margin-top: 10px;
            color: #d05716;
        }

        input[type="text"],
        input[type="password"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #d05716;
            border-radius: 5px;
            background-color: white; /* Set the background color to white */
            color: #d05716;
        }

        input[type="submit"] {
            background-color: #d05716;
            color: #1E0A3C;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
            cursor: pointer;
            border-radius: 5px;
        }

        input[type="submit"]:hover {
            background-color: #1E0A3C;
            color: #d05716;
        }
    </style>
</head>
<body>
    <h1>Reservation Form</h1>
    <form action="InsertReservationServlet" method="post">
        <label for="reservationId">Reservation ID:</label>
        <input type="text" id="reservationId" name="reservationId" required><br>

        <label for="reservationName">Reservation Name:</label>
        <input type="text" id="reservationName" name="reservationName" required><br>

        <label for="numberOfCrew">Number of Crew:</label>
        <input type="text" id="numberOfCrew" name="numberOfCrew" required><br>

        <label for="reservationType">Reservation Type:</label>
        <input type="text" id="reservationType" name="reservationType" required><br>

        <label for="reservationDescription">Reservation Description:</label>
        <textarea id="reservationDescription" name="reservationDescription" required></textarea><br>

        <label for="reservationPrice">Reservation Price:</label>
        <input type="text" id="reservationPrice" name="reservationPrice" required><br>

        <label for="username">Service Provider Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Service Provider Password:</label>
        <input type="password" id="password" name="password" required><br>

        <input type="submit" value="Submit">
    </form>
    </body>
</html>
