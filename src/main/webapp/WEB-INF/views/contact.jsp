<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - XYZ Bank</title>
	
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

    <style>
        /* -------- Global Styles -------- */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: "Poppins", Arial, sans-serif;
            background: linear-gradient(135deg, #a8edea, #fed6e3);
            color: #222;
            animation: fadeIn 1s ease-in-out;
        }

        /* -------- Header -------- */
        header {
            background: linear-gradient(90deg, #0072ff, #00c6ff);
            color: white;
            text-align: center;
            padding: 2rem 1rem;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        header h1 {
            font-size: 2.5rem;
            letter-spacing: 1px;
        }
        header p {
            font-size: 1.1rem;
            margin-top: 0.5rem;
            color: #f0f8ff;
        }

        /* -------- Navigation -------- */
        nav {
            background: linear-gradient(90deg, #001f3f, #004080);
            display: flex;
            justify-content: center;
            padding: 0.8rem;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.2);
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 1.2rem;
            font-size: 1.1rem;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
        }
        nav a::after {
            content: "";
            display: block;
            height: 2px;
            background: #ffcc00;
            width: 0%;
            transition: width 0.3s;
            margin-top: 4px;
        }
        nav a:hover::after {
            width: 100%;
        }
        nav a:hover {
            color: #ffcc00;
        }

        /* -------- Main Container -------- */
        .contact-container {
            max-width: 1100px;
            margin: 3rem auto;
            padding: 2rem;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            animation: slideUp 1s ease;
        }
        .contact-title {
            text-align: center;
            color: #0072ff;
            font-size: 2.2rem;
            margin-bottom: 2rem;
            font-weight: 600;
            letter-spacing: 0.5px;
        }

        /* -------- Section Styling -------- */
        .section {
            margin-bottom: 2rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            padding: 1rem;
            border-radius: 10px;
        }
        .section:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        .section h3 {
            color: #004080;
            font-size: 1.4rem;
            margin-bottom: 0.7rem;
            border-left: 5px solid #00c6ff;
            padding-left: 10px;
        }
        .section p, .section ul {
            color: #444;
            line-height: 1.7;
            font-size: 1rem;
        }
        .section ul {
            list-style: none;
        }
        .section ul li {
            margin-bottom: 0.6rem;
        }
        .section ul li::before {
            content: "💠 ";
        }

        /* -------- Social Links -------- */
        .social-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 1rem;
        }
        .social-links a {
            font-size: 1.3rem;
            text-decoration: none;
            color: #0072ff;
            background: #eaf6ff;
            padding: 0.8rem 1.5rem;
            border-radius: 30px;
            box-shadow: 0 4px 10px rgba(0, 114, 255, 0.2);
            transition: all 0.3s ease;
        }
        .social-links a:hover {
            background: linear-gradient(90deg, #0072ff, #00c6ff);
            color: white;
            transform: translateY(-3px);
            box-shadow: 0 6px 15px rgba(0, 114, 255, 0.4);
        }

        /* -------- Footer -------- */
        footer {
            background: linear-gradient(90deg, #001f3f, #004080);
            color: white;
            text-align: center;
            padding: 1.5rem;
            font-size: 0.95rem;
            margin-top: 3rem;
            box-shadow: 0 -3px 10px rgba(0, 0, 0, 0.2);
        }

        /* -------- Animations -------- */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        @keyframes slideUp {
            from { transform: translateY(30px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        /* -------- Responsive -------- */
        @media (max-width: 768px) {
            .contact-container {
                padding: 1.5rem;
            }
            nav a {
                margin: 0 0.7rem;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <!-- Header -->
    <header>
        <h1>Contact Us</h1>
        <p>We’re here to help — get in touch with our support team anytime.</p>
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
            <p><a href="mailto:support@xyzbank.com" style="color:#0072ff;text-decoration:none;">support@xyzbank.com</a></p>
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
                <li><strong>How can I open a new account?</strong> Visit your nearest branch with valid ID and address proof.</li>
                <li><strong>What are your loan options?</strong> We offer personal, home, car, and education loans. Contact us for details.</li>
                <li><strong>How can I update my contact details?</strong> Log in to your account and navigate to the Profile section.</li>
            </ul>
        </div>

        <!-- Social Media Links -->
        <div class="section">
            <h3>Follow Us</h3>
            <div class="social-links">
                <a href="https://www.facebook.com/xyzbank" target="_blank">🌐 Facebook</a>
                <a href="https://www.twitter.com/xyzbank" target="_blank">🐦 Twitter</a>
                <a href="https://www.linkedin.com/company/xyzbank" target="_blank">💼 LinkedIn</a>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2025 XYZ Bank | All Rights Reserved | Designed with 💙 by XYZ Web Team</p>
    </footer>

</body>
</html>
