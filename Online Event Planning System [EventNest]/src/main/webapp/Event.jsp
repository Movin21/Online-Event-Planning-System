<jsp:include page="./Header.jsp" />

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./CSS/Event.css">
<title>Event Nest</title>
</head>
<body>

	 <!--Event Body-->
	 <c:forEach var="event" items="${eventDetail}">
	  <div class="cards_container">
            <div class="card">
                <img src="Images/Content 2 images/6.png"><br>
                <c:out value="${event.eventID}" />
                <h3><c:out value="${event.eventName}" /></h3><br>
                <p>offering personalized solutions and guidance tailored to your unique requirements.</p>
               <br> <a href="About.php"><h4 class="arrow">About Us --></h4></a>
            </div>
      </div>
			
	  </c:forEach>
	 
	
	 
	 
	
	 

	 
     
	
</body>
</html>

<jsp:include page="./Footer.jsp"/>