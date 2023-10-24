<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #1E0A3C;
            color: #d05716;
        }

        h1 {
            color: #d05716;
        }

        form {
            background-color: #e9f2f2;
            color: #d05716;
            padding: 20px;
            border: 1px solid #d05716;
            border-radius: 5px;
            margin-top: 20px;
            width: 40%;
            margin: 0 auto;
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
            background-color: white;
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
    <meta charset="UTF-8">
    <title>Update Reservation</title>
</head>
<body>

    <center><h1>Update Reservation</h1></center>
    <form action="UpdateReservationServlet" method="post">

        <input type="hidden" name="reservationId" value="<%= request.getParameter("reservationId") %>">

        <label for="reservationName">Reservation Name:</label>
        <input type="text" id="reservationName" name="reservationName" value="<%= request.getParameter("reservationName") %>" required><br>

        <label for="numberOfCrew">Number of Crew:</label>
        <input type="text" id="numberOfCrew" name="numberOfCrew" value="<%= request.getParameter("numberOfCrew") %>" required><br>

        <label for="reservationType">Reservation Type:</label>
        <input type="text" id="reservationType" name="reservationType" value="<%= request.getParameter("reservationType") %>" required><br>

        <label for="reservationDescription">Reservation Description:</label>
        <textarea id="reservationDescription" name="reservationDescription" required><%= request.getParameter("reservationDescription") %></textarea><br>

        <label for="reservationPrice">Reservation Price:</label>
        <input type="text" id="reservationPrice" name="reservationPrice" value="<%= request.getParameter("reservationPrice") %>" required><br>

        <label for="username">Service Provider Username:</label>
        <input type="text" id="username" name="username" value="<%= request.getParameter("username") %>" required><br>

        <label for="password">Service Provider Password:</label>
        <input type="password" id="password" name="password" value="<%= request.getParameter("password") %>" required><br>

        <input type="submit" value="Update Reservation">
    </form>
</body>
</html>
