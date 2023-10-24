<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<style>
body {
    background: #f5f5f5;
    margin-top: 20px;
}

.container2 {
    max-width: 500px;
    width: 100%; /* Changed width to 100% */
    margin: auto;
    padding: 40px; /* Adjusted padding */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    border-radius: 20px;
    margin-bottom: 20px;
    margin-top: 80px;
}

.form-control {
    width: 100%; /* Adjusted width */
    padding: 10px; /* Added padding */
    margin-bottom: 15px; /* Added margin */
    border: 1px solid #ccc;
    border-radius: 5px;
    
}

.btn-primary {
    background-color: #007BFF;
    color: #fff;
    padding: 10px 20px; /* Added padding */
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.btn-default {
    background-color: #ccc;
    color: #000;
    padding: 10px 20px; /* Added padding */
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

</style>
</head>
<body>
    <div class="container2">
        <form action="customerUpdateServlet" method="post">
            <input type="hidden" name="username" value="<%= request.getParameter("username") %>">
            <label for="name2">Name</label>
            <input type="text" class="form-control" name="name" value="<%= request.getParameter("customerName") %>">

            <label for="email2">E-mail</label>
            <input type="text" class="form-control" name="email" value="<%= request.getParameter("customerEmail") %>">

            <label for="phone2">Phone Number</label>
            <input type="text" class="form-control" name="phone" value="<%= request.getParameter("customerPhone") %>">

            <label for="address2">Address</label>
            <input type="text" class="form-control" name="address" value="<%= request.getParameter("customerAddress") %>">

            <label for="password2">Current password</label>
            <input type="password" class="form-control" name="password" value="<%= request.getParameter("password") %>">

            <input type="submit" class="btn btn-primary" value="Save changes">
            <a href="attendee.jsp">
            <button type="submit" class="btn btn-default">Cancel</button>
            </a>
        </form>
    </div>
    <jsp:include page="./Footer.jsp"/>
</body>
</html>
