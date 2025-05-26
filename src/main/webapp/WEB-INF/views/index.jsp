<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to XYZ Bank</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        /* Reset and Base Styles */
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f4f4f9;
        }

        /* Header Styles */
        header {
            background: #0047ab;
            color: white;
            padding: 1rem 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        header h1 {
            margin: 0;
            font-size: 2.5rem;
        }
        header p {
            margin: 0;
            font-size: 1.2rem;
        }

        /* Navigation Styles */
        nav {
            background: #003580;
            display: flex;
            justify-content: center;
            padding: 0.5rem 0;
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

        /* Hero Section */
        .hero {
            text-align: center;
            padding: 3rem 1rem;
            background: url('bank-hero.jpg') no-repeat center center/cover;
            color: white;
        }
        .hero h2 {
            font-size: 2.5rem;
            margin-bottom: 1rem;
        }
        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        .hero a {
            background: #ffcc00;
            color: #003580;
            padding: 0.8rem 2rem;
            text-decoration: none;
            font-size: 1.1rem;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .hero a:hover {
            background: #e6b800;
        }

        /* Footer Styles */
        footer {
            background: #003580;
            color: white;
            text-align: center;
            padding: 1rem 0;
            margin-top: 2rem;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <h1>Welcome to XYZ Bank</h1>
        <p>Your trusted partner in financial growth</p>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="/services">Services</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact</a>
        <a href="/login">Login</a>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <h2>Secure Banking Solutions</h2>
        <p>Experience a seamless banking journey with cutting-edge technology and personalized service.</p>
        <a href="/about">Get Started</a>
    </section>

    <!-- Footer -->
    
</body>
</html>
