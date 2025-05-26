<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - XYZ Bank</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #f0f8ff, #c9eaf3);
        }
        header {
            background: #0047ab;
            color: white;
            padding: 1.5rem;
            text-align: center;
        }
        nav {
            background: #003580;
            display: flex;
            justify-content: center;
            padding: 0.8rem;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 1.5rem;
            font-size: 1.1rem;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #ffcc00;
        }
        .contact-container {
            max-width: 1000px;
            margin: 2rem auto;
            padding: 2rem;
            background: white;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }
        .contact-title {
            text-align: center;
            color: #0047ab;
            margin-bottom: 2rem;
            font-size: 2rem;
        }
        .section {
            margin-bottom: 2rem;
        }
        .section h3 {
            color: #003580;
            margin-bottom: 0.5rem;
        }
        .section p, .section ul {
            line-height: 1.6;
            color: #333;
        }
        .section ul {
            padding-left: 1.5rem;
        }
        .social-links {
            display: flex;
            justify-content: center;
            gap: 1.5rem;
            margin-top: 1rem;
        }
        .social-links a {
            color: #0047ab;
            font-size: 1.5rem;
            text-decoration: none;
            transition: color 0.3s;
        }
        .social-links a:hover {
            color: #ffcc00;
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
        <h1>Contact Us</h1>
        <p>We’re here to help. Get in touch with us for any queries or assistance.</p>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="/home">Home</a>
        <a href="/services">Services</a>
        <a href="/about">About Us</a>
        <a href="/contact">Contact</a>
        <a href="/login">Login</a>
    </nav>

    <!-- Contact Content -->
    <div class="contact-container">
        <h2 class="contact-title">Reach Out to XYZ Bank</h2>

        <!-- Contact Info -->
        <div class="section">
            <h3>Our Address</h3>
            <p>123 Financial Street,<br> New York, NY 10001, USA</p>
        </div>
        <div class="section">
            <h3>Phone Numbers</h3>
            <p>Customer Care: +1 800-123-4567<br>Corporate Office: +1 800-987-6543</p>
        </div>
        <div class="section">
            <h3>Email</h3>
            <p>support@xyzbank.com</p>
        </div>

        <!-- Bank Timings -->
        <div class="section">
            <h3>Bank Timings</h3>
            <ul>
                <li>Monday to Friday: 9:00 AM - 5:00 PM</li>
                <li>Saturday: 9:00 AM - 1:00 PM</li>
                <li>Sunday: Closed</li>
            </ul>
        </div>

        <!-- Frequently Asked Questions -->
        <div class="section">
            <h3>Frequently Asked Questions</h3>
            <ul>
                <li><strong>How can I open a new account?</strong> Visit your nearest branch with valid ID proof and address proof.</li>
                <li><strong>What are your loan options?</strong> We offer personal, home, car, and education loans. Contact us for more details.</li>
                <li><strong>How can I update my contact details?</strong> Log in to your account and navigate to the Profile section.</li>
            </ul>
        </div>

        <!-- Social Media Links -->
        <div class="section">
            <h3>Follow Us</h3>
            <div class="social-links">
                <a href="https://www.facebook.com/xyzbank" target="_blank">Facebook</a>
                <a href="https://www.twitter.com/xyzbank" target="_blank">Twitter</a>
                <a href="https://www.linkedin.com/company/xyzbank" target="_blank">LinkedIn</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2025 XYZ Bank. All rights reserved.</p>
    </footer>
</body>
</html>
