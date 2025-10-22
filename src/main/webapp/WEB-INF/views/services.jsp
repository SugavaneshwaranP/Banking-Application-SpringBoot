<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Our Services - XYZ Bank</title>
	
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

    <style>
        /* Smooth gradient animated background */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6a11cb, #2575fc, #00c6ff, #f72585);
            background-size: 400% 400%;
            animation: bgShift 10s ease infinite;
            color: #fff;
        }

        @keyframes bgShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* Header styling with glowing text */
        header {
            text-align: center;
            padding: 2rem 1rem;
            background: rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        header h1 {
            font-size: 2.5rem;
            margin: 0;
            background: linear-gradient(90deg, #00f5a0, #00d9f5);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        header p {
            font-size: 1.1rem;
            color: #e0e0e0;
            margin-top: 8px;
        }

        /* Navigation bar */
        nav {
            background: rgba(0, 0, 0, 0.4);
            display: flex;
            justify-content: center;
            padding: 0.7rem 0;
            backdrop-filter: blur(12px);
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 1.2rem;
            font-weight: 600;
            letter-spacing: 0.5px;
            position: relative;
            transition: 0.3s ease;
        }

        nav a::after {
            content: "";
            position: absolute;
            bottom: -5px;
            left: 0;
            width: 0%;
            height: 2px;
            background: linear-gradient(90deg, #00f5a0, #00d9f5);
            transition: width 0.3s ease;
        }

        nav a:hover::after {
            width: 100%;
        }

        nav a:hover {
            color: #00f5a0;
        }

        /* Main content styling */
        main {
            max-width: 1100px;
            margin: 3rem auto;
            padding: 0 1.5rem;
            text-align: center;
        }

        main h2 {
            font-size: 2rem;
            margin-bottom: 2rem;
            background: linear-gradient(90deg, #00f5a0, #00d9f5);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* Service cards grid */
        .service-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
        }

        /* Glassmorphic cards */
        .service-card {
            background: rgba(255, 255, 255, 0.15);
            border-radius: 15px;
            padding: 1.8rem;
            text-align: left;
            box-shadow: 0 6px 15px rgba(0,0,0,0.3);
            backdrop-filter: blur(10px);
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }

        .service-card::before {
            content: "";
            position: absolute;
            width: 0;
            height: 100%;
            top: 0;
            left: 0;
            background: linear-gradient(135deg, rgba(0,245,160,0.3), rgba(0,217,245,0.3));
            transition: 0.4s ease;
            z-index: 0;
        }

        .service-card:hover::before {
            width: 100%;
        }

        .service-card h3 {
            font-size: 1.4rem;
            margin-bottom: 0.6rem;
            color: #00f5a0;
            z-index: 1;
            position: relative;
        }

        .service-card p {
            color: #f1f1f1;
            font-size: 1rem;
            line-height: 1.5;
            z-index: 1;
            position: relative;
        }

        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0, 255, 255, 0.3);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 1.5rem;
            background: rgba(0, 0, 0, 0.4);
            color: #e0e0e0;
            font-size: 0.95rem;
            backdrop-filter: blur(8px);
            margin-top: 2rem;
        }

        footer span {
            color: #00f5a0;
            font-weight: 600;
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
        <div class="service-grid">
            <div class="service-card">
                <h3>Personal Banking</h3>
                <p>Manage your finances with ease using our savings and current account options, tailored for your lifestyle.</p>
            </div>
            <div class="service-card">
                <h3>Loans</h3>
                <p>Get quick and flexible personal or business loans at competitive interest rates and minimal paperwork.</p>
            </div>
            <div class="service-card">
                <h3>Credit Cards</h3>
                <p>Enjoy exclusive benefits, cashback, and reward points with our range of premium credit cards.</p>
            </div>
            <div class="service-card">
                <h3>Investment Services</h3>
                <p>Secure your financial future with expert advice and personalized wealth management plans.</p>
            </div>
            <div class="service-card">
                <h3>Online Banking</h3>
                <p>Experience seamless and secure banking from anywhere, anytime — at your fingertips.</p>
            </div>
        </div>
    </main>

    <!-- Footer -->
    <footer>
        © 2025 <span>XYZ Bank</span>. All Rights Reserved.
    </footer>
</body>
</html>
