<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Our Services - XYZ Bank</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: #f4f4f9;
        }
        header {
            background: #0047ab;
            color: white;
            padding: 1rem;
            text-align: center;
        }
        nav {
            background: #003580;
            display: flex;
            justify-content: center;
            padding: 0.5rem;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            font-size: 1.1rem;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffcc00;
        }
        main {
            padding: 2rem;
        }
        .service-card {
            background: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 1.5rem;
            margin: 1rem 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .service-card h3 {
            color: #0047ab;
            margin-bottom: 0.5rem;
        }
        footer {
            background: #003580;
            color: white;
            text-align: center;
            padding: 1rem;
            margin-top: 2rem;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Our Services</h1>
        <p>Discover the range of services we offer to meet your financial needs</p>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="/index">Home</a>
        <a href="/services">Services</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact</a>
        <a href="/login">Login</a>
    </nav>

    <!-- Main Content -->
    <main>
        <h2>Banking Services</h2>
        <div class="service-card">
            <h3>Personal Banking</h3>
            <p>Manage your finances with ease using our savings and current account options.</p>
        </div>
        <div class="service-card">
            <h3>Loans</h3>
            <p>Get quick and easy loans tailored to your personal and business needs.</p>
        </div>
        <div class="service-card">
            <h3>Credit Cards</h3>
            <p>Enjoy exclusive benefits with our range of credit card options.</p>
        </div>
        <div class="service-card">
            <h3>Investment Services</h3>
            <p>Secure your future with our expert investment and wealth management services.</p>
        </div>
        <div class="service-card">
            <h3>Online Banking</h3>
            <p>Experience the convenience of managing your account from anywhere, anytime.</p>
        </div>
    </main>

    <!-- Footer -->
   
</body>
</html>
