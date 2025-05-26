<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Money Transfer</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f9; text-align: center; }
        .transfer-container {
            max-width: 400px;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-group { margin-bottom: 15px; text-align: left; }
        .form-group label { display: block; font-weight: bold; }
        .form-group input { width: 100%; padding: 10px; border: 1px solid #ccc; border-radius: 4px; }
        .btn { width: 100%; padding: 10px; background: #007bff; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn:hover { background: #0056b3; }
        .message { color: red; margin-top: 10px; }
    </style>
</head>
<body>
    <div class="transfer-container">
        <h2>Money Transfer</h2>
        
        <c:if test="${not empty message}">
            <p class="message">${message}</p>
        </c:if>

        <form action="/transferFunds" method="post">
            <div class="form-group">
                <label for="senderAccount">Sender Account:</label>
                <input type="text" id="senderAccount" name="senderAccount" value="${sessionScope.accountNumber}" readonly>
            </div>
            
            <div class="form-group">
                <label for="receiverAccount">Receiver Account:</label>
                <input type="text" id="receiverAccount" name="receiverAccount" placeholder="Enter receiver's account number" required>
            </div>
            
            <div class="form-group">
                <label for="amount">Amount:</label>
                <input type="number" id="amount" name="amount" step="0.01" placeholder="Enter amount" required>
            </div>
            
            <button type="submit" class="btn">Transfer</button>
        </form>
    </div>
</body>
</html>
