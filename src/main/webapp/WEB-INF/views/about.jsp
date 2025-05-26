<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - XYZ Bank</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f4f4f9, #e0eafc);
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
        .about-container {
            max-width: 1000px;
            margin: 2rem auto;
            padding: 1.5rem;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }
        .about-title {
            color: #0047ab;
            text-align: center;
            margin-bottom: 1rem;
        }
        .about-section {
            margin: 1.5rem 0;
        }
        .about-section h3 {
            color: #003580;
        }
        .about-section p {
            line-height: 1.6;
            color: #333;
        }
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }
        .team-member {
            text-align: center;
            margin: 1rem;
        }
        .team-member img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .team-member h4 {
            margin: 0.5rem 0 0.2rem;
            color: #0047ab;
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
        <h1>About Us</h1>
        <p>Learn more about XYZ Bank and what we stand for</p>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="/index">Home</a>
        <a href="/services">Services</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact</a>
        <a href="/login">Login</a>
    </nav>

    <!-- About Content -->
    <div class="about-container">
        <h2 class="about-title">Who We Are</h2>
        <div class="about-section">
            <h3>Our Mission</h3>
            <p>
                At XYZ Bank, our mission is to empower individuals and businesses by providing 
                innovative and secure financial solutions tailored to their needs.
            </p>
        </div>
        <div class="about-section">
            <h3>Our Vision</h3>
            <p>
                To be a trusted financial partner globally, fostering growth, prosperity, and 
                financial independence for our customers.
            </p>
        </div>
        <div class="about-section">
            <h3>Meet Our Team</h3>
            <div class="team">
                <div class="team-member">
                    <img src="images/team1.jpg" alt="John Doe">
                    <h4>John Doe</h4>
                    <p>CEO</p>
                </div>
                <div class="team-member">
                    <img src="images/team2.jpg" alt="Jane Smith">
                    <h4>Jane Smith</h4>
                    <p>COO</p>
                </div>
                <div class="team-member">
                    <img src="images/team3.jpg" alt="Mike Brown">
                    <h4>Mike Brown</h4>
                    <p>CTO</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2025 XYZ Bank. All rights reserved.</p>
    </footer>
</body>
</html>
