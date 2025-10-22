<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Transaction History - XYZ Bank</title>
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

	
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Animated gradient background */
        body {
            background: linear-gradient(135deg, #6a11cb, #2575fc, #00c6ff, #f72585);
            background-size: 400% 400%;
            animation: gradientShift 10s ease infinite;
            font-family: 'Poppins', sans-serif;
            color: #fff;
            min-height: 100vh;
            margin: 0;
            padding: 0;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header Styling */
        .page-header {
            text-align: center;
            padding: 2.5rem 1rem 1rem 1rem;
        }

        .page-header h2 {
            font-size: 2.2rem;
            font-weight: 700;
            background: linear-gradient(90deg, #00f5a0, #00d9f5);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 0.5rem;
        }

        .page-header p {
            color: #e0e0e0;
            font-size: 1rem;
            letter-spacing: 0.5px;
        }

        /* Table Container Card */
        .transaction-card {
            background: rgba(255, 255, 255, 0.12);
            border-radius: 15px;
            padding: 25px;
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
        }

        /* Table Customization */
        table {
            border-collapse: separate;
            border-spacing: 0 10px;
            color: #fff;
        }

        thead th {
            background: rgba(0, 0, 0, 0.5);
            border: none;
            color: #00f5a0;
            text-transform: uppercase;
            font-weight: 600;
        }

        tbody tr {
            background: rgba(255, 255, 255, 0.1);
            transition: all 0.3s ease;
        }

        tbody tr:hover {
            background: rgba(0, 245, 160, 0.25);
            transform: scale(1.02);
            box-shadow: 0 6px 15px rgba(0, 255, 255, 0.2);
        }

        tbody td {
            border: none;
            padding: 1rem;
            vertical-align: middle;
            font-weight: 500;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 1.2rem;
            margin-top: 2rem;
            background: rgba(0, 0, 0, 0.3);
            font-size: 0.9rem;
            color: #e0e0e0;
            backdrop-filter: blur(6px);
        }

        footer span {
            color: #00f5a0;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <!-- Header -->
        <div class="page-header">
            <h2>Transaction History</h2>
            <p>Track your recent transactions securely and transparently</p>
        </div>

        <!-- Transaction Table -->
        <div class="transaction-card mt-4">
            <div class="table-responsive">
                <table class="table align-middle">
                    <thead>
                        <tr>
                            <th scope="col">Date</th>
                            <th scope="col">Type</th>
                            <th scope="col">Amount (₹)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="transaction" items="${transactions}">
                            <tr>
                                <td>${transaction.transactionDate}</td>
                                <td>${transaction.transactionType}</td>
                                <td>${transaction.amount}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Footer -->
        <footer>
            © 2025 <span>XYZ Bank</span>. All Rights Reserved.
        </footer>
    </div>
</body>
</html>
