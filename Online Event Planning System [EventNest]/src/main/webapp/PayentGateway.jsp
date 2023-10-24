<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@ include file="Header.jsp" %>
<head>
    <style>
        .payment-container {
            text-align: center;
            margin: 20px;
        }

        .payment-form {
            border: 1px solid #ccc;
            padding: 20px;
            max-width: 400px;
            margin: 0 auto;
        }

        .payment-button {
            background-color: #1E0A3C;
            color: #fff;
            border: none;
            padding: 10px 20px;
            margin-top: 10px;
        }

        .payment-button:hover {
            background-color: #d05716;
        }
    </style>
</head>
<body>
<br><br><br><br>
    <div class="payment-container">
        <h1>Payment Gateway</h1>
        <div class="payment-form">
            <form action="processPaymentServlet" method="post">
                <label for="cardNumber">Card Number:</label>
                <input type="text" id="cardNumber" name="cardNumber" required><br><br>

                <label for="expiryDate">Expiry Date:</label>
                <input type="text" id="expiryDate" name="expiryDate" required><br><br>

                <label for="cvv">CVV:</label>
                <input type="text" id="cvv" name="cvv" required><br><br>

                <label for="amount">Amount:</label>
                <input type="text" id="amount" name="amount" required><br><br>

                <button class="payment-button" type="submit">Make Payment</button>
            </form>
        </div>
    </div>
</body>
<%@ include file="Footer.jsp" %>
</html>
