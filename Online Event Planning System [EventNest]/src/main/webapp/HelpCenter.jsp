<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Center</title>
<style>
body{
margin-top:80px;
}
</style>
</head>
<body>
 <form action="HelpCenterServlet" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required><br>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required><br>

    <label for="phone">Phone Number:</label>
    <input type="tel" id="phone" name="phone" required><br>

    <label for="issueType">Issue Type:</label>
    <select id="issueType" name="issueType">
        <option value="ticketIssue">Ticket Issue</option>
        <option value="eventDetails">Event Details Request</option>
        <option value="lostAndFound">Lost and Found</option>
        <option value="other">Other Inquiries</option>
    </select><br>

    <label for="description">Description:</label>
    <textarea id="description" name="description" rows="4" cols="50"></textarea><br>

    <input type="submit" value="Submit">
</form>

</body>
</html>
<jsp:include page="./Footer.jsp" />