<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Center</title>
<style>
  body {
    display: flex;
    flex-direction: column; /* Stack elements vertically */
    justify-content: center; /* Vertically center content */
    align-items: center; /* Horizontally center content */
    font-family: Arial, sans-serif;
    height: 100vh;
    background-color:#e8e8e8;
  }

  .header-container {
  
    text-align: center; /* Center-align the text */
    margin-top: 380px; /* Adjust the top margin as needed */
    margin-bottom:20px;
  }

  .text {
 font-weight: bold;
    font-size: 36px; /* Increase font size */
    color: #1E0A3C;
  }

  .form-container1 {
	margin-bottom:20px;
    background-color: #f0f0f0;
    padding: 20px;
    border: 1px solid #ccc;
    border-radius: 5px;
     border-color: #1E0A3C;
    max-width: 500px;
    display: flex;
    flex-direction: column;
  }

  .form-container1 label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: black;
  }

  .form-container1 input[type="text"],
  .form-container1 input[type="email"],
  .form-container1 input[type="tel"],
  .form-container1 select,
  .form-container1 textarea {
    width: 95%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
  }

  .form-container1 input[type="submit"] {
    background-color: #1E0A3C;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
  }

  .form-container1 input[type="submit"]:hover {
    background-color: #D05716;
  }
</style>
</head>
<body class="body">
<div class="header-container">
    <div class="text">How Can We Help?</div>
</div>
<div class="form-container1">
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
</div>
</body>
</html>


<jsp:include page="./Footer.jsp" />
