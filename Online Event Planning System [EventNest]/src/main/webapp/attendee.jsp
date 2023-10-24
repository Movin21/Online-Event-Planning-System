<jsp:include page="./Header.jsp" />
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page import="java.util.List" %>
    <%@ page import="com.Customer.Signup.Customer" %>
    <%@ page import="com.Customer.Signup.CustomerDbUtil"%>
    <%String username = (String) request.getAttribute("username");
    List<Customer> attendee=CustomerDbUtil.getCustomerDetails(username);
	 request.setAttribute("attendeeDetails", attendee);%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
		.customer-table {
    border-collapse: collapse;
    width: 1300px;
    margin: 20px auto;
    height: 80px
}

.customer-table tr:nth-child(even) {
    background-color: #f2f2f2;
    height : 80px;
}

.customer-table td {
    padding: 10px;
    border: 1px solid #ccc;
     height : 100px;
}

.customer-table td:first-child {
    font-weight: bold;
    width: 150px;
    
}
body{
margin-top:80px;
}
.custom-button {
    font-size: 25px; 
    padding: 10px 20px; 
    background-color: #1E0A3C; 
    color: #fff; 
    border: none; 
    cursor: pointer; 
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.7);
    margin-bottom:80px;
}

	</style>
</head>
<body>
	
	<table class = "customer-table">
	<c:forEach var = "cus" items = "${attendeeDetails}">
	
	<c:set var = "name" value = "${cus.customerName }"/>
	<c:set var = "address" value = "${cus.customerAddress }"/>
	<c:set var = "phone" value = "${cus.customerPhone}"/>
	<c:set var = "email" value = "${cus.customerEmail }"/>
	<c:set var = "password" value = "${cus.password }"/>
	<tr>
		<td>Name</td>
		<td>${cus.customerName }</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${cus.customerAddress}</td>
	</tr>
	<tr>
		<td>Phone Number</td>
		<td>${cus.customerPhone}</td>
	</tr>
	<tr>
		<td>E-Mail</td>
		
		<td>${cus.customerEmail}</td>
	</tr>
	<tr>
		<td>Password</td>
		<td>${cus.password }</td>
	</tr>
	<c:url value="updatecustomer.jsp" var="customerUpdate">
                            <c:param name="username" value="${cus.username }" />
                            <c:param name="customerName" value="${cus.customerName }" />
                            <c:param name="customerAddress" value="${cus.customerAddress}" />
                            <c:param name="customerPhone" value="${cus.customerPhone}" />
                            <c:param name="customerEmail" value="${cus.customerEmail}" />
                            <c:param name="password" value="${cus.password}" />
                        </c:url>
	</c:forEach>
	</table>
	
	   
                        <a href="${customerUpdate}">
                            <input type="button" name="update" value="Update data" class="custom-button">
                        </a>


</body>
</html>
<jsp:include page="./Footer.jsp"/>