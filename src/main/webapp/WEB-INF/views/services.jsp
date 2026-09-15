<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Our Services — XYZ Bank</title>
    <meta name="description" content="Explore the full range of banking services offered by XYZ Bank.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        :root{--bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);--bg-card-hover:rgba(255,255,255,0.08);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;--accent-3:#7c3aed;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);--radius:16px;--radius-lg:24px;}
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);line-height:1.6;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 60% 50% at 20% 30%,rgba(0,212,170,0.07) 0%,transparent 60%),
            radial-gradient(ellipse 50% 40% at 80% 70%,rgba(124,58,237,0.06) 0%,transparent 60%);}

        /* Navbar */
        .navbar{position:fixed;top:0;left:0;right:0;z-index:1000;display:flex;justify-content:space-between;
            align-items:center;padding:1rem 2.5rem;background:rgba(10,14,39,0.85);backdrop-filter:blur(20px);
            border-bottom:1px solid var(--glass-border);}
        .nav-brand{font-size:1.5rem;font-weight:800;text-decoration:none;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
        .nav-links{display:flex;gap:2rem;align-items:center;}
        .nav-links a{color:var(--text-secondary);text-decoration:none;font-size:.95rem;font-weight:500;
            transition:color .3s;position:relative;}
        .nav-links a.active{color:var(--accent-1);}
        .nav-links a::after{content:'';position:absolute;bottom:-4px;left:0;width:0;height:2px;border-radius:2px;
            background:var(--gradient-primary);transition:width .3s;}
        .nav-links a:hover{color:var(--text-primary);}
        .nav-links a:hover::after,.nav-links a.active::after{width:100%;}
        .nav-btn{padding:.55rem 1.5rem;border-radius:50px;font-weight:600;font-size:.9rem;text-decoration:none;
            transition:all .3s;background:var(--gradient-primary);color:var(--bg-primary);}
        .nav-btn:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,212,170,0.3);}

        /* Hero */
        .page-hero{position:relative;z-index:1;text-align:center;padding:8rem 2rem 4rem;max-width:800px;margin:0 auto;}
        .page-hero h1{font-size:clamp(2rem,5vw,3.5rem);font-weight:900;margin-bottom:1rem;letter-spacing:-.02em;}
        .page-hero h1 .gradient{background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;}
        .page-hero p{font-size:1.1rem;color:var(--text-secondary);max-width:600px;margin:0 auto;}

        /* Services Grid */
        .services-section{position:relative;z-index:1;max-width:1200px;margin:0 auto;padding:0 2rem 4rem;}
        .services-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(320px,1fr));gap:1.5rem;}
        .service-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:2rem;backdrop-filter:blur(10px);transition:all .4s ease;position:relative;overflow:hidden;}
        .service-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;
            background:var(--gradient-primary);transform:scaleX(0);transform-origin:left;transition:transform .4s ease;}
        .service-card:hover{transform:translateY(-8px);background:var(--bg-card-hover);box-shadow:0 0 40px rgba(0,212,170,0.1);}
        .service-card:hover::before{transform:scaleX(1);}
        .service-icon{width:52px;height:52px;border-radius:14px;display:flex;align-items:center;
            justify-content:center;font-size:1.5rem;margin-bottom:1.2rem;}
        .service-icon.teal{background:rgba(0,212,170,0.12);}
        .service-icon.purple{background:rgba(124,58,237,0.12);}
        .service-icon.blue{background:rgba(0,180,216,0.12);}
        .service-icon.amber{background:rgba(245,158,11,0.12);}
        .service-icon.rose{background:rgba(244,63,94,0.12);}
        .service-card h3{font-size:1.15rem;font-weight:700;margin-bottom:.6rem;}
        .service-card p{color:var(--text-secondary);font-size:.9rem;line-height:1.6;}
        .service-card .learn-more{display:inline-flex;align-items:center;gap:.3rem;margin-top:1rem;
            color:var(--accent-1);font-size:.85rem;font-weight:600;text-decoration:none;transition:gap .3s;}
        .service-card:hover .learn-more{gap:.6rem;}

        /* Footer */
        .footer{position:relative;z-index:1;border-top:1px solid var(--glass-border);padding:2.5rem 2rem;text-align:center;}
        .footer-brand{font-size:1.2rem;font-weight:800;margin-bottom:.8rem;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
        .footer-links{display:flex;justify-content:center;gap:2rem;margin-bottom:1rem;flex-wrap:wrap;}
        .footer-links a{color:var(--text-muted);text-decoration:none;font-size:.85rem;transition:color .3s;}
        .footer-links a:hover{color:var(--accent-1);}
        .footer-copy{color:var(--text-muted);font-size:.8rem;}
        .footer-copy .hl{color:var(--accent-1);font-weight:600;}

        @media(max-width:768px){.navbar{padding:.8rem 1.2rem;}.nav-links{gap:1rem;}.services-grid{grid-template-columns:1fr;}}
        @media(max-width:640px){.nav-links a:not(.nav-btn){display:none;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <nav class="navbar">
        <a href="/" class="nav-brand">XYZ Bank</a>
        <div class="nav-links">
            <a href="/services" class="active">Services</a>
            <a href="/about">About</a>
            <a href="/contact">Contact</a>
            <a href="/login" class="nav-btn">Login</a>
        </div>
    </nav>

    <section class="page-hero">
        <h1>Our <span class="gradient">Services</span></h1>
        <p>Discover the comprehensive range of financial services designed to meet your every need.</p>
    </section>

    <section class="services-section">
        <div class="services-grid">
            <div class="service-card">
                <div class="service-icon teal">&#127974;</div>
                <h3>Personal Banking</h3>
                <p>Manage your finances with ease using our savings and current account options, tailored for your lifestyle with zero minimum balance.</p>
                <a href="/register" class="learn-more">Open Account &rarr;</a>
            </div>
            <div class="service-card">
                <div class="service-icon purple">&#128176;</div>
                <h3>Loans & Credit</h3>
                <p>Get quick and flexible personal, home, or car loans at competitive interest rates with minimal paperwork and fast approval.</p>
                <a href="/contact" class="learn-more">Apply Now &rarr;</a>
            </div>
            <div class="service-card">
                <div class="service-icon amber">&#128179;</div>
                <h3>Credit Cards</h3>
                <p>Enjoy exclusive benefits, cashback up to 5%, and reward points with our range of premium credit cards for every spender.</p>
                <a href="/contact" class="learn-more">Explore Cards &rarr;</a>
            </div>
            <div class="service-card">
                <div class="service-icon blue">&#128200;</div>
                <h3>Investment Services</h3>
                <p>Secure your financial future with expert advice, mutual funds, SIPs, and personalized wealth management plans.</p>
                <a href="/contact" class="learn-more">Start Investing &rarr;</a>
            </div>
            <div class="service-card">
                <div class="service-icon rose">&#9889;</div>
                <h3>Digital Banking</h3>
                <p>Experience seamless, secure banking from anywhere — instant transfers, bill payments, and account management at your fingertips.</p>
                <a href="/login" class="learn-more">Get Started &rarr;</a>
            </div>
            <div class="service-card">
                <div class="service-icon teal">&#128142;</div>
                <h3>Fixed & Recurring Deposits</h3>
                <p>Grow your savings with competitive FD and RD rates up to 6.5% p.a. with flexible tenure options from 7 days to 10 years.</p>
                <a href="/fdDetails" class="learn-more">View Rates &rarr;</a>
            </div>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-brand">XYZ Bank</div>
        <div class="footer-links">
            <a href="/">Home</a><a href="/services">Services</a><a href="/about">About</a><a href="/contact">Contact</a><a href="/login">Login</a>
        </div>
        <p class="footer-copy">&copy; 2025 <span class="hl">XYZ Bank</span>. All Rights Reserved.</p>
    </footer>
</body>
</html>
