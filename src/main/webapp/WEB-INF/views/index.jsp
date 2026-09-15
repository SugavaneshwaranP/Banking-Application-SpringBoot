<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>XYZ Bank — Smart, Secure & Seamless Banking</title>
    <meta name="description" content="XYZ Bank offers next-generation digital banking with secure solutions, personalized insights, and effortless transactions.">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        /* ===== CSS VARIABLES ===== */
        :root {
            --bg-primary: #0a0e27;
            --bg-secondary: #0f1437;
            --bg-card: rgba(255, 255, 255, 0.05);
            --bg-card-hover: rgba(255, 255, 255, 0.1);
            --glass-border: rgba(255, 255, 255, 0.08);
            --accent-1: #00d4aa;
            --accent-2: #00b4d8;
            --accent-3: #7c3aed;
            --accent-4: #f59e0b;
            --text-primary: #ffffff;
            --text-secondary: #94a3b8;
            --text-muted: #64748b;
            --gradient-primary: linear-gradient(135deg, #00d4aa, #00b4d8);
            --gradient-accent: linear-gradient(135deg, #7c3aed, #00b4d8);
            --gradient-warm: linear-gradient(135deg, #f59e0b, #ef4444);
            --shadow-glow: 0 0 40px rgba(0, 212, 170, 0.15);
            --radius: 16px;
            --radius-lg: 24px;
        }

        /* ===== RESET & BASE ===== */
        *, *::before, *::after { margin: 0; padding: 0; box-sizing: border-box; }
        html { scroll-behavior: smooth; }
        body {
            font-family: 'Inter', -apple-system, sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.6;
            overflow-x: hidden;
            min-height: 100vh;
        }

        /* ===== ANIMATED BACKGROUND ===== */
        .bg-mesh {
            position: fixed; top: 0; left: 0; width: 100%; height: 100%;
            z-index: 0; pointer-events: none;
            background:
                radial-gradient(ellipse 80% 50% at 20% 40%, rgba(0, 212, 170, 0.08) 0%, transparent 60%),
                radial-gradient(ellipse 60% 40% at 80% 20%, rgba(124, 58, 237, 0.08) 0%, transparent 60%),
                radial-gradient(ellipse 50% 60% at 50% 90%, rgba(0, 180, 216, 0.06) 0%, transparent 60%);
        }

        /* ===== NAVIGATION ===== */
        .navbar {
            position: fixed; top: 0; left: 0; right: 0; z-index: 1000;
            display: flex; justify-content: space-between; align-items: center;
            padding: 1rem 2.5rem;
            background: rgba(10, 14, 39, 0.85);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid var(--glass-border);
            transition: all 0.3s ease;
        }
        .navbar.scrolled { background: rgba(10, 14, 39, 0.95); padding: 0.7rem 2.5rem; }
        .nav-brand {
            font-size: 1.5rem; font-weight: 800; text-decoration: none;
            background: var(--gradient-primary); -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; background-clip: text;
        }
        .nav-links { display: flex; gap: 2rem; align-items: center; }
        .nav-links a {
            color: var(--text-secondary); text-decoration: none; font-size: 0.95rem;
            font-weight: 500; transition: all 0.3s ease; position: relative;
        }
        .nav-links a::after {
            content: ''; position: absolute; bottom: -4px; left: 0;
            width: 0; height: 2px; border-radius: 2px;
            background: var(--gradient-primary); transition: width 0.3s ease;
        }
        .nav-links a:hover { color: var(--text-primary); }
        .nav-links a:hover::after { width: 100%; }
        .nav-btn {
            padding: 0.55rem 1.5rem; border-radius: 50px; font-weight: 600;
            font-size: 0.9rem; text-decoration: none; transition: all 0.3s ease;
            background: var(--gradient-primary); color: var(--bg-primary);
        }
        .nav-btn:hover { transform: translateY(-2px); box-shadow: 0 8px 25px rgba(0,212,170,0.3); }

        /* ===== HERO SECTION ===== */
        .hero {
            position: relative; z-index: 1;
            min-height: 100vh; display: flex; align-items: center; justify-content: center;
            padding: 8rem 2rem 4rem;
        }
        .hero-content { text-align: center; max-width: 800px; animation: fadeUp 1s ease; }
        .hero-badge {
            display: inline-flex; align-items: center; gap: 0.5rem;
            padding: 0.5rem 1.2rem; border-radius: 50px;
            background: rgba(0, 212, 170, 0.1); border: 1px solid rgba(0, 212, 170, 0.2);
            font-size: 0.85rem; font-weight: 500; color: var(--accent-1);
            margin-bottom: 1.5rem;
        }
        .hero-badge .dot {
            width: 8px; height: 8px; border-radius: 50%;
            background: var(--accent-1); animation: pulse 2s ease infinite;
        }
        .hero h1 {
            font-size: clamp(2.5rem, 6vw, 4.5rem); font-weight: 900;
            line-height: 1.1; margin-bottom: 1.5rem; letter-spacing: -0.03em;
        }
        .hero h1 .gradient-text {
            background: var(--gradient-primary); -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; background-clip: text;
        }
        .hero p {
            font-size: 1.2rem; color: var(--text-secondary);
            max-width: 600px; margin: 0 auto 2.5rem; line-height: 1.7;
        }
        .hero-buttons { display: flex; gap: 1rem; justify-content: center; flex-wrap: wrap; }
        .btn-primary {
            padding: 0.9rem 2.2rem; border-radius: 50px; font-weight: 700;
            font-size: 1rem; text-decoration: none; transition: all 0.3s ease;
            background: var(--gradient-primary); color: var(--bg-primary);
            display: inline-flex; align-items: center; gap: 0.5rem;
        }
        .btn-primary:hover { transform: translateY(-3px); box-shadow: 0 12px 35px rgba(0,212,170,0.35); }
        .btn-secondary {
            padding: 0.9rem 2.2rem; border-radius: 50px; font-weight: 600;
            font-size: 1rem; text-decoration: none; transition: all 0.3s ease;
            border: 1px solid var(--glass-border); color: var(--text-primary);
            background: var(--bg-card);
        }
        .btn-secondary:hover { background: var(--bg-card-hover); transform: translateY(-3px); }

        /* ===== STATS BAR ===== */
        .stats-bar {
            position: relative; z-index: 1; padding: 0 2rem;
            display: flex; justify-content: center;
        }
        .stats-container {
            display: flex; gap: 3rem; padding: 2rem 3rem;
            background: var(--bg-card); border: 1px solid var(--glass-border);
            border-radius: var(--radius-lg); backdrop-filter: blur(10px);
            max-width: 900px; width: 100%;
            animation: fadeUp 1s ease 0.2s both;
        }
        .stat-item { flex: 1; text-align: center; }
        .stat-value {
            font-size: 2rem; font-weight: 800;
            background: var(--gradient-primary); -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; background-clip: text;
        }
        .stat-label { font-size: 0.85rem; color: var(--text-muted); margin-top: 0.3rem; font-weight: 500; }

        /* ===== FEATURES SECTION ===== */
        .features {
            position: relative; z-index: 1;
            padding: 6rem 2rem; max-width: 1200px; margin: 0 auto;
        }
        .section-header { text-align: center; margin-bottom: 4rem; animation: fadeUp 0.8s ease; }
        .section-label {
            font-size: 0.85rem; font-weight: 600; text-transform: uppercase;
            letter-spacing: 2px; color: var(--accent-1); margin-bottom: 0.8rem;
        }
        .section-title {
            font-size: clamp(1.8rem, 4vw, 2.8rem); font-weight: 800;
            letter-spacing: -0.02em;
        }
        .features-grid {
            display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
            gap: 1.5rem;
        }
        .feature-card {
            background: var(--bg-card); border: 1px solid var(--glass-border);
            border-radius: var(--radius); padding: 2rem;
            backdrop-filter: blur(10px); transition: all 0.4s ease;
            position: relative; overflow: hidden;
        }
        .feature-card::before {
            content: ''; position: absolute; top: 0; left: 0;
            width: 100%; height: 3px;
            background: var(--gradient-primary); transform: scaleX(0);
            transform-origin: left; transition: transform 0.4s ease;
        }
        .feature-card:hover { transform: translateY(-8px); background: var(--bg-card-hover);
            box-shadow: var(--shadow-glow); }
        .feature-card:hover::before { transform: scaleX(1); }
        .feature-icon {
            width: 50px; height: 50px; border-radius: 12px;
            background: rgba(0, 212, 170, 0.1); display: flex;
            align-items: center; justify-content: center; margin-bottom: 1.2rem;
            font-size: 1.5rem;
        }
        .feature-card h3 { font-size: 1.2rem; font-weight: 700; margin-bottom: 0.6rem; }
        .feature-card p { color: var(--text-secondary); font-size: 0.95rem; line-height: 1.6; }

        /* ===== CTA SECTION ===== */
        .cta-section {
            position: relative; z-index: 1; padding: 5rem 2rem;
            display: flex; justify-content: center;
        }
        .cta-card {
            max-width: 900px; width: 100%; padding: 4rem;
            background: var(--gradient-accent); border-radius: var(--radius-lg);
            text-align: center; position: relative; overflow: hidden;
        }
        .cta-card::before {
            content: ''; position: absolute; top: -50%; right: -20%;
            width: 400px; height: 400px; border-radius: 50%;
            background: rgba(255,255,255,0.08);
        }
        .cta-card h2 { font-size: 2.2rem; font-weight: 800; margin-bottom: 1rem; position: relative; }
        .cta-card p { font-size: 1.1rem; opacity: 0.9; margin-bottom: 2rem; position: relative; }
        .cta-btn {
            padding: 1rem 2.5rem; border-radius: 50px; font-weight: 700;
            font-size: 1rem; text-decoration: none;
            background: white; color: var(--bg-primary);
            display: inline-flex; align-items: center; gap: 0.5rem;
            transition: all 0.3s ease; position: relative;
        }
        .cta-btn:hover { transform: translateY(-3px); box-shadow: 0 12px 30px rgba(0,0,0,0.3); }

        /* ===== FOOTER ===== */
        .footer {
            position: relative; z-index: 1;
            border-top: 1px solid var(--glass-border);
            padding: 3rem 2rem; text-align: center;
        }
        .footer-brand {
            font-size: 1.3rem; font-weight: 800; margin-bottom: 1rem;
            background: var(--gradient-primary); -webkit-background-clip: text;
            -webkit-text-fill-color: transparent; background-clip: text;
        }
        .footer-links { display: flex; justify-content: center; gap: 2rem; margin-bottom: 1.5rem; flex-wrap: wrap; }
        .footer-links a { color: var(--text-muted); text-decoration: none; font-size: 0.9rem; transition: color 0.3s; }
        .footer-links a:hover { color: var(--accent-1); }
        .footer-copy { color: var(--text-muted); font-size: 0.85rem; }
        .footer-copy .highlight { color: var(--accent-1); font-weight: 600; }

        /* ===== ANIMATIONS ===== */
        @keyframes fadeUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.4; }
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 768px) {
            .navbar { padding: 0.8rem 1.2rem; }
            .nav-links { gap: 1rem; }
            .nav-links a { font-size: 0.85rem; }
            .hero { padding: 7rem 1.2rem 3rem; }
            .stats-container { flex-direction: column; gap: 1.5rem; padding: 2rem; }
            .features-grid { grid-template-columns: 1fr; }
            .cta-card { padding: 2.5rem 1.5rem; }
            .hero-buttons { flex-direction: column; align-items: center; }
        }

        /* Mobile nav toggle */
        .nav-toggle { display: none; background: none; border: none; cursor: pointer; padding: 0.5rem; }
        .nav-toggle span { display: block; width: 22px; height: 2px; background: var(--text-primary);
            margin: 5px 0; transition: all 0.3s; border-radius: 2px; }
        @media (max-width: 640px) {
            .nav-toggle { display: block; }
            .nav-links {
                position: fixed; top: 60px; left: 0; right: 0;
                flex-direction: column; background: rgba(10,14,39,0.98);
                padding: 2rem; gap: 1.5rem; transform: translateY(-120%);
                transition: transform 0.3s ease; backdrop-filter: blur(20px);
                border-bottom: 1px solid var(--glass-border);
            }
            .nav-links.open { transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <!-- Navigation -->
    <nav class="navbar" id="navbar">
        <a href="/" class="nav-brand">XYZ Bank</a>
        <button class="nav-toggle" id="navToggle" aria-label="Toggle navigation">
            <span></span><span></span><span></span>
        </button>
        <div class="nav-links" id="navLinks">
            <a href="/services">Services</a>
            <a href="/about">About</a>
            <a href="/contact">Contact</a>
            <a href="/login" class="nav-btn">Login</a>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <div class="hero-badge">
                <span class="dot"></span>
                Trusted by 1M+ Customers
            </div>
            <h1>
                Banking Made<br>
                <span class="gradient-text">Smart & Seamless</span>
            </h1>
            <p>
                Experience next-generation digital banking where innovation meets trust.
                Secure solutions, personalized insights, and effortless transactions.
            </p>
            <div class="hero-buttons">
                <a href="/register" class="btn-primary">
                    Open Account
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                </a>
                <a href="/services" class="btn-secondary">Explore Services</a>
            </div>
        </div>
    </section>

    <!-- Stats Bar -->
    <section class="stats-bar">
        <div class="stats-container">
            <div class="stat-item">
                <div class="stat-value">1M+</div>
                <div class="stat-label">Active Users</div>
            </div>
            <div class="stat-item">
                <div class="stat-value">$50B+</div>
                <div class="stat-label">Assets Managed</div>
            </div>
            <div class="stat-item">
                <div class="stat-value">99.9%</div>
                <div class="stat-label">Uptime</div>
            </div>
            <div class="stat-item">
                <div class="stat-value">24/7</div>
                <div class="stat-label">Support</div>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="section-header">
            <div class="section-label">Why Choose Us</div>
            <h2 class="section-title">Built for Modern Banking</h2>
        </div>
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon">&#128274;</div>
                <h3>Bank-Grade Security</h3>
                <p>Your data is protected with 256-bit encryption, multi-factor authentication, and real-time fraud detection systems.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">&#9889;</div>
                <h3>Instant Transfers</h3>
                <p>Send and receive money in seconds with our lightning-fast payment infrastructure powered by cutting-edge technology.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">&#128200;</div>
                <h3>Smart Analytics</h3>
                <p>Track your spending patterns, set budgets, and get personalized financial insights with AI-powered analytics.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">&#127760;</div>
                <h3>Global Access</h3>
                <p>Bank from anywhere in the world with our fully responsive web platform and mobile-ready interface.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">&#128176;</div>
                <h3>Competitive Rates</h3>
                <p>Enjoy industry-leading interest rates on savings, fixed deposits, and recurring deposits with zero hidden fees.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">&#129309;</div>
                <h3>Dedicated Support</h3>
                <p>Our expert team is available 24/7 via chat, phone, or email to assist you with any banking needs.</p>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="cta-card">
            <h2>Ready to Get Started?</h2>
            <p>Open your account in minutes and start your journey to smarter banking today.</p>
            <a href="/register" class="cta-btn">
                Create Free Account
                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
            </a>
        </div>
    </section>

    <!-- Footer -->
    <footer class="footer">
        <div class="footer-brand">XYZ Bank</div>
        <div class="footer-links">
            <a href="/services">Services</a>
            <a href="/about">About Us</a>
            <a href="/contact">Contact</a>
            <a href="/login">Login</a>
            <a href="/register">Register</a>
        </div>
        <p class="footer-copy">&copy; 2025 <span class="highlight">XYZ Bank</span>. All Rights Reserved.</p>
    </footer>

    <script>
        // Navbar scroll effect
        window.addEventListener('scroll', () => {
            document.getElementById('navbar').classList.toggle('scrolled', window.scrollY > 50);
        });
        // Mobile nav toggle
        document.getElementById('navToggle').addEventListener('click', () => {
            document.getElementById('navLinks').classList.toggle('open');
        });
    </script>
</body>
</html>
