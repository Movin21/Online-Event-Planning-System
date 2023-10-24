<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <title>Reservation Management Portal</title>
    <link rel="stylesheet"
        href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0xQaY8fD5I7NXSktwxT39sKDjI7a80eOGf1jFfR5l5uF5H5z5F5H5t5"
        crossorigin="anonymous">
    <link rel="stylesheet" href="./CSS/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">
    <style>
    	a{
    	text-decoration:none;
    	
    	}
        body {
            background-color: #f5f5f5;
        }

        #navbar {
            background-color: tomato;
        }

        #navbar-brand {
            font-weight: bold;
        }

        #container {
            margin-top: 20px;
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        #btn-success {
            background-color: #28a745;
            color: #fff;
        }

        #table-bordered {
            border: 1px solid #ccc;
            border-collapse: collapse;
        }

        #table-bordered th,
        #table-bordered td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        #table-bordered th {
            background-color: #f2f2f2;
        }

        #table-bordered a {
            text-decoration: none;
            color: #007BFF;
        }

        #table-bordered a:hover {
            text-decoration: underline;
        }
        
        .text-left input[type="submit"] {
            background-color: #D05716;
            color: #FFFFFF;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .text-left input[type="submit"]:hover {
            background-color: #FF7F43;
        }
    </style>
</head>

<body>
    <jsp:include page="Header.jsp" />
    <header id="navbar">
        <nav id="navbar" class="navbar navbar-expand-md navbar-dark">
            <div>
                <a id="navbar-brand" class="navbar-brand">Reservation Management Portal</a>
            </div>

            <ul id="navbar" class="navbar-nav">
                <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Reservation</a></li>
            </ul>
        </nav>
    </header>
    <br>
    <div class="row">
        <div id="container">
            <h3 class="text-center">List of Reservations</h3>
            <hr>
            <div id="container" class="text-left">    
				<a href="res-form.jsp" id="btn-success" class="btn" >
				<input type="submit" value="Add New Reservation">
				</a>
            </div>
            <br>
            <table id="table-bordered" class="table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Crew</th>
                        <th>Type</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Username</th>
                        <th>Password</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="res" items="${reservations}">
                        <c:set var="reservationId" value="${res.reservationId}" />
                        <c:set var="reservationName" value="${res.reservationName}" />
                        <c:set var="numberOfCrew" value="${res.numberOfCrew}" />
                        <c:set var="reservationType" value="${res.reservationType}" />
                        <c:set var="reservationDescription" value="${res.reservationDescription}" />
                        <c:set var="reservationPrice" value="${res.reservationPrice}" />
                        <c:set var="username" value="${res.username}" />
                        <c:set var="password" value="${res.password}" />
                        <tr>
                            <td>${res.reservationId}</td>
                            <td>${res.reservationName}</td>
                            <td>${res.numberOfCrew}</td>
                            <td>${res.reservationType}</td>
                            <td>${res.reservationDescription}</td>
                            <td>${res.reservationPrice}</td>
                            <td>${res.username}</td>
                            <td>${res.password}</td>
                            <td>
                                <c:url value="res-update.jsp" var="update">
                                    <c:param name="reservationId" value="${reservationId}" />
                                    <c:param name="reservationName" value="${reservationName}" />
                                    <c:param name="numberOfCrew" value="${numberOfCrew}" />
                                    <c:param name="reservationType" value="${reservationType}" />
                                    <c:param name="reservationDescription" value="${reservationDescription}" />
                                    <c:param name="reservationPrice" value="${reservationId}" />
                                    <c:param name="username" value="${username}" />
                                    <c:param name="password" value="${password}" />
                                </c:url>
                                <a href="${update}">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="DeleteReservationServlet?reservationId=${reservationId}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <jsp:include page="Footer.jsp" />
</body>

</html>
