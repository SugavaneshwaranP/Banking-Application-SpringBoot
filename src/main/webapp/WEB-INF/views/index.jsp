<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to XYZ Bank</title>
	
	<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
	<script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

    <style>
        /* ===== GLOBAL ===== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body, html {
            font-family: 'Poppins', sans-serif;
            height: 100%;
            overflow-x: hidden;
            background: #0f172a;
            color: #fff;
            position: relative;
        }

        /* ===== PARTICLE BACKGROUND ===== */
        #particles-js {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(120deg, #001f3f, #0047ab, #0073e6);
            background-size: 400% 400%;
            animation: gradientMove 12s infinite alternate;
            z-index: -1;
        }

        @keyframes gradientMove {
            0% { background-position: left top; }
            100% { background-position: right bottom; }
        }

        /* ===== HEADER ===== */
        header {
            background: rgba(0,0,0,0.5);
            backdrop-filter: blur(10px);
            color: #fff;
            text-align: center;
            padding: 2rem 1rem;
            box-shadow: 0 4px 20px rgba(0,0,0,0.4);
        }

        header h1 {
            font-size: 2.8rem;
            background: linear-gradient(90deg, #00c6ff, #ffd700, #ff4d4d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            animation: shine 3s linear infinite;
        }

        @keyframes shine {
            0% { background-position: -200px; }
            100% { background-position: 200px; }
        }

        header p {
            font-size: 1.2rem;
            color: #e0e0e0;
        }

        /* ===== NAVIGATION ===== */
        nav {
            display: flex;
            justify-content: center;
            background: rgba(255,255,255,0.08);
            padding: 0.8rem;
            gap: 1.5rem;
            backdrop-filter: blur(6px);
            border-bottom: 1px solid rgba(255,255,255,0.1);
        }

        nav a {
            color: #fff;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 500;
            position: relative;
            transition: 0.3s;
        }

        nav a::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -5px;
            height: 3px;
            width: 0%;
            background: linear-gradient(90deg, #ffd700, #00c6ff);
            border-radius: 5px;
            transition: width 0.3s;
        }

        nav a:hover {
            color: #ffd700;
            transform: translateY(-2px);
        }

        nav a:hover::after {
            width: 100%;
        }

        /* ===== HERO SECTION ===== */
        .hero {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-align: center;
            padding: 6rem 1.5rem;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            width: 80%;
            max-width: 1000px;
            margin: 4rem auto;
            box-shadow: 0 8px 20px rgba(0,0,0,0.4);
            animation: fadeInUp 1.2s ease-in;
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(40px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .hero h2 {
            font-size: 2.8rem;
            background: linear-gradient(90deg, #ffd700, #00c6ff, #ff4d4d);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 1rem;
        }

        .hero p {
            font-size: 1.2rem;
            color: #f1f1f1;
            margin-bottom: 2rem;
            line-height: 1.6;
            max-width: 800px;
        }

        .hero a {
            background: linear-gradient(90deg, #ffd700, #00c6ff);
            color: #001f3f;
            padding: 0.9rem 2.5rem;
            text-decoration: none;
            font-size: 1.1rem;
            font-weight: 600;
            border-radius: 50px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
            transition: all 0.3s ease;
        }

        .hero a:hover {
            background: linear-gradient(90deg, #00c6ff, #ffd700);
            transform: scale(1.08);
        }

        /* ===== FOOTER ===== */
        footer {
            background: linear-gradient(90deg, #0047ab, #001f3f);
            color: #fff;
            text-align: center;
            padding: 1.2rem;
            margin-top: 4rem;
            font-size: 1rem;
        }

        footer p span {
            color: #ffd700;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 768px) {
            .hero {
                width: 90%;
                padding: 3rem 1rem;
            }
            .hero h2 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Particle Background -->
    <div id="particles-js"></div>

    <!-- Header -->
    <header>
        <h1>Welcome to XYZ Bank</h1>
        <p>Your Trusted Partner in Financial Growth</p>
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
        <h2>Smart, Secure & Seamless Banking</h2>
        <p>
            Experience next-generation digital banking — where innovation meets trust.
            XYZ Bank brings you secure solutions, personalized insights, and effortless transactions 
            to help you achieve financial excellence.
        </p>
        <a href="/about">Get Started</a>
    </section>

    <!-- Footer -->
    <footer>
        <p>© 2025 <span>XYZ Bank</span> | All Rights Reserved | Designed with 💙</p>
    </footer>

    <!-- Particles.js Library -->
    <script src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
    <script>
        /* Particle Configuration */
        particlesJS("particles-js", {
            "particles": {
                "number": { "value": 100, "density": { "enable": true, "value_area": 800 } },
                "color": { "value": ["#00c6ff", "#ffd700", "#ff4d4d"] },
                "shape": { "type": "circle" },
                "opacity": { "value": 0.8, "random": true },
                "size": { "value": 3, "random": true },
                "line_linked": {
                    "enable": true,
                    "distance": 150,
                    "color": "#00c6ff",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 2.5,
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
