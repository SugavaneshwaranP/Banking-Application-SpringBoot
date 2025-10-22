<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Money Transfer</title>
	
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

	
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <style>
        body {
            background: linear-gradient(to right, #e0f7fa, #f1f8e9);
            font-family: 'Segoe UI', sans-serif;
        }
        .transfer-card {
            max-width: 450px;
            margin: 80px auto;
            background: #fff;
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
        }
        .form-label {
            font-weight: 600;
        }
        .btn-transfer {
            background: #007bff;
            border: none;
            transition: 0.3s;
        }
        .btn-transfer:hover {
            background: #0056b3;
        }
        .alert {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="transfer-card">
        <h3 class="text-center mb-4">💸 Money Transfer</h3>

        <!-- Display message dynamically -->
        <c:if test="${not empty message}">
            <div class="alert 
                <c:choose>
                    <c:when test='${messageType eq "success"}'>alert-success</c:when>
                    <c:otherwise>alert-danger</c:otherwise>
                </c:choose> 
                text-center" role="alert">
                ${message}
            </div>
        </c:if>

        <form action="/transferFunds" method="post">
            <div class="mb-3">
                <label for="senderAccount" class="form-label">Sender Account</label>
                <input type="text" id="senderAccount" name="senderAccount" 
                    value="${sessionScope.accountNumber}" class="form-control" readonly>
            </div>

            <div class="mb-3">
                <label for="receiverAccount" class="form-label">Receiver Account</label>
                <input type="text" id="receiverAccount" name="receiverAccount" 
                    class="form-control" placeholder="Enter receiver's account number" required>
            </div>

            <div class="mb-3">
                <label for="amount" class="form-label">Amount</label>
                <input type="number" id="amount" name="amount" step="0.01" 
                    class="form-control" placeholder="Enter amount to transfer" required>
            </div>

            <button type="submit" class="btn btn-transfer w-100">Transfer Money</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
