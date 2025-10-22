<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - XYZ Bank</title>
    <style>
        /* ====== GENERAL STYLES ====== */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #0f172a;
            color: #fff;
            overflow-x: hidden;
            position: relative;
        }

        #particles-js {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            background: linear-gradient(135deg, #001f3f, #0047ab, #0073e6);
            background-size: 400% 400%;
            animation: bgMove 12s infinite alternate;
        }

        @keyframes bgMove {
            0% { background-position: left top; }
            100% { background-position: right bottom; }
        }

        /* ====== HEADER ====== */
        header {
            background: linear-gradient(90deg, #0073e6, #00c6ff);
            color: white;
            text-align: center;
            padding: 2rem 1rem;
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
        }

        header h1 {
            font-size: 2.5rem;
            background: linear-gradient(90deg, #fff, #ffd700, #00c6ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: shine 3s linear infinite;
        }

        @keyframes shine {
            0% { background-position: -200px; }
            100% { background-position: 200px; }
        }

        header p {
            font-size: 1.1rem;
            color: #f0f0f0;
        }

        /* ====== NAVBAR ====== */
        nav {
            display: flex;
            justify-content: center;
            background: rgba(0,0,0,0.6);
            backdrop-filter: blur(6px);
            padding: 0.75rem 0;
        }

        nav a {
            color: #fff;
            text-decoration: none;
            margin: 0 1.2rem;
            font-size: 1.1rem;
            font-weight: 500;
            transition: all 0.3s ease;
            position: relative;
        }

        nav a::after {
            content: '';
            position: absolute;
            width: 0%;
            height: 3px;
            left: 0;
            bottom: -5px;
            background: linear-gradient(90deg, #ffd700, #00c6ff);
            transition: 0.3s;
            border-radius: 5px;
        }

        nav a:hover::after {
            width: 100%;
        }

        nav a:hover {
            color: #ffd700;
            transform: translateY(-2px);
        }

        /* ====== ABOUT CONTAINER ====== */
        .about-container {
            max-width: 1100px;
            margin: 3rem auto;
            padding: 2rem;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.4);
            animation: fadeIn 1s ease-in;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .about-title {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(90deg, #00c6ff, #ffd700, #ff4d4d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        .about-section h3 {
            color: #00c6ff;
            border-left: 4px solid #ffd700;
            padding-left: 10px;
        }

        .about-section p {
            color: #ddd;
            line-height: 1.7;
            font-size: 1rem;
        }

        /* ====== TEAM SECTION ====== */
        .team {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 2rem;
        }

        .team-member {
            text-align: center;
            margin: 1rem;
            background: rgba(255,255,255,0.08);
            padding: 1rem;
            border-radius: 10px;
            transition: all 0.4s ease;
            width: 200px;
        }

        .team-member:hover {
            transform: translateY(-8px) scale(1.05);
            background: rgba(255,255,255,0.2);
        }

        .team-member img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 3px solid #00c6ff;
            transition: transform 0.4s;
        }

        .team-member img:hover {
            transform: rotate(5deg) scale(1.05);
        }

        .team-member h4 {
            margin: 0.6rem 0 0.2rem;
            color: #ffd700;
        }

        .team-member p {
            font-size: 0.9rem;
            color: #f0f0f0;
        }

        /* ====== FOOTER ====== */
        footer {
            background: linear-gradient(90deg, #0047ab, #001f3f);
            color: #fff;
            text-align: center;
            padding: 1rem;
            margin-top: 3rem;
            font-size: 0.95rem;
        }
    </style>
</head>
<body>
    <!-- Particle Background -->
    <div id="particles-js"></div>

    <!-- Header -->
    <header>
        <h1>About Us</h1>
        <p>Discover who we are, what we stand for, and how we make banking smarter</p>
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
                At XYZ Bank, our mission is to empower individuals and businesses with innovative, secure, 
                and customer-centric financial solutions — redefining trust and transparency in every transaction.
            </p>
        </div>
        <div class="about-section">
            <h3>Our Vision</h3>
            <p>
                To become the world’s most trusted financial institution by driving digital innovation 
                and building long-term relationships that foster growth, prosperity, and financial freedom.
            </p>
        </div>
        <div class="about-section">
            <h3>Meet Our Team</h3>
            <div class="team">
                <div class="team-member">
                    <img src="images/team1.jpg" alt="John Doe">
                    <h4>John Doe</h4>
                    <p>Chief Executive Officer</p>
                </div>
                <div class="team-member">
                    <img src="images/team2.jpg" alt="Jane Smith">
                    <h4>Jane Smith</h4>
                    <p>Chief Operating Officer</p>
                </div>
                <div class="team-member">
                    <img src="images/team3.jpg" alt="Mike Brown">
                    <h4>Mike Brown</h4>
                    <p>Chief Technology Officer</p>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2025 XYZ Bank. All Rights Reserved | Designed with 💙 by XYZ Team</p>
    </footer>

    <!-- Particles.js Library -->
    <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    <script>
        /* ====== PARTICLES CONFIGURATION ====== */
        particlesJS("particles-js", {
            "particles": {
                "number": {
                    "value": 120,
                    "density": { "enable": true, "value_area": 800 }
                },
                "color": { "value": ["#00c6ff", "#ffd700", "#ff4d4d"] },
                "shape": { "type": "circle" },
                "opacity": {
                    "value": 0.8,
                    "random": true,
                    "anim": { "enable": true, "speed": 0.8, "opacity_min": 0.3 }
                },
                "size": {
                    "value": 3,
                    "random": true
                },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#00c6ff",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 3,
                    "direction": "none",
                    "out_mode": "bounce"
                }
            },
            "interactivity": {
                "events": {
                    "onhover": { "enable": true, "mode": "grab" },
                    "onclick": { "enable": true, "mode": "push" }
                },
                "modes": {
                    "grab": { "distance": 200, "line_linked": { "opacity": 0.6 } },
                    "push": { "particles_nb": 4 }
                }
            },
            "retina_detect": true
        });
    </script>
</body>
</html>
