<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us — XYZ Bank</title>
    <meta name="description" content="Learn about XYZ Bank's mission, vision, and the team behind your trusted banking partner.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        :root{--bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);--bg-card-hover:rgba(255,255,255,0.08);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;--accent-3:#7c3aed;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);
            --gradient-accent:linear-gradient(135deg,#7c3aed,#00b4d8);--radius:16px;--radius-lg:24px;}
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);line-height:1.6;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 60% 50% at 70% 20%,rgba(124,58,237,0.08) 0%,transparent 60%),
            radial-gradient(ellipse 50% 50% at 20% 80%,rgba(0,212,170,0.06) 0%,transparent 60%);}

        .navbar{position:fixed;top:0;left:0;right:0;z-index:1000;display:flex;justify-content:space-between;
            align-items:center;padding:1rem 2.5rem;background:rgba(10,14,39,0.85);backdrop-filter:blur(20px);
            border-bottom:1px solid var(--glass-border);}
        .nav-brand{font-size:1.5rem;font-weight:800;text-decoration:none;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
        .nav-links{display:flex;gap:2rem;align-items:center;}
        .nav-links a{color:var(--text-secondary);text-decoration:none;font-size:.95rem;font-weight:500;transition:color .3s;position:relative;}
        .nav-links a.active{color:var(--accent-1);}
        .nav-links a::after{content:'';position:absolute;bottom:-4px;left:0;width:0;height:2px;border-radius:2px;
            background:var(--gradient-primary);transition:width .3s;}
        .nav-links a:hover{color:var(--text-primary);} .nav-links a:hover::after,.nav-links a.active::after{width:100%;}
        .nav-btn{padding:.55rem 1.5rem;border-radius:50px;font-weight:600;font-size:.9rem;text-decoration:none;
            background:var(--gradient-primary);color:var(--bg-primary);transition:all .3s;}
        .nav-btn:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,212,170,0.3);}

        .page-hero{position:relative;z-index:1;text-align:center;padding:8rem 2rem 4rem;max-width:800px;margin:0 auto;}
        .page-hero h1{font-size:clamp(2rem,5vw,3.5rem);font-weight:900;margin-bottom:1rem;}
        .page-hero h1 .gradient{background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;}
        .page-hero p{font-size:1.1rem;color:var(--text-secondary);max-width:600px;margin:0 auto;}

        .content{position:relative;z-index:1;max-width:1000px;margin:0 auto;padding:0 2rem 4rem;}

        /* Mission/Vision Cards */
        .mv-grid{display:grid;grid-template-columns:1fr 1fr;gap:1.5rem;margin-bottom:3rem;}
        .mv-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:2rem;backdrop-filter:blur(10px);position:relative;overflow:hidden;transition:all .4s ease;}
        .mv-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;transition:background .3s;}
        .mv-card:nth-child(1)::before{background:var(--gradient-primary);}
        .mv-card:nth-child(2)::before{background:var(--gradient-accent);}
        .mv-card:hover{transform:translateY(-6px);background:var(--bg-card-hover);}
        .mv-card .mv-icon{font-size:2rem;margin-bottom:1rem;}
        .mv-card h3{font-size:1.2rem;font-weight:700;margin-bottom:.8rem;color:var(--accent-1);}
        .mv-card p{color:var(--text-secondary);font-size:.95rem;line-height:1.7;}

        /* Values */
        .section-label{font-size:.85rem;font-weight:600;text-transform:uppercase;letter-spacing:2px;
            color:var(--accent-1);text-align:center;margin-bottom:.5rem;}
        .section-title{font-size:1.8rem;font-weight:800;text-align:center;margin-bottom:2.5rem;}
        .values-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1.2rem;margin-bottom:3rem;}
        .value-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:1.5rem;text-align:center;transition:all .3s ease;}
        .value-card:hover{transform:translateY(-4px);background:var(--bg-card-hover);}
        .value-card .v-icon{font-size:2rem;margin-bottom:.8rem;}
        .value-card h4{font-size:.95rem;font-weight:700;margin-bottom:.4rem;}
        .value-card p{font-size:.8rem;color:var(--text-muted);}

        /* Team */
        .team-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:1.5rem;margin-bottom:3rem;}
        .team-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:2rem;text-align:center;transition:all .4s ease;}
        .team-card:hover{transform:translateY(-6px);background:var(--bg-card-hover);}
        .team-avatar{width:80px;height:80px;border-radius:50%;display:flex;align-items:center;justify-content:center;
            font-size:2rem;margin:0 auto 1rem;border:2px solid var(--accent-1);}
        .team-avatar.a1{background:rgba(0,212,170,0.12);} .team-avatar.a2{background:rgba(124,58,237,0.12);}
        .team-avatar.a3{background:rgba(0,180,216,0.12);}
        .team-card h4{font-size:1rem;font-weight:700;margin-bottom:.2rem;}
        .team-card .role{font-size:.85rem;color:var(--accent-1);font-weight:500;}

        .footer{position:relative;z-index:1;border-top:1px solid var(--glass-border);padding:2.5rem 2rem;text-align:center;}
        .footer-brand{font-size:1.2rem;font-weight:800;margin-bottom:.8rem;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
        .footer-links{display:flex;justify-content:center;gap:2rem;margin-bottom:1rem;flex-wrap:wrap;}
        .footer-links a{color:var(--text-muted);text-decoration:none;font-size:.85rem;transition:color .3s;}
        .footer-links a:hover{color:var(--accent-1);}
        .footer-copy{color:var(--text-muted);font-size:.8rem;} .footer-copy .hl{color:var(--accent-1);font-weight:600;}

        @media(max-width:768px){.mv-grid{grid-template-columns:1fr;} .navbar{padding:.8rem 1.2rem;} .nav-links{gap:1rem;}}
        @media(max-width:640px){.nav-links a:not(.nav-btn){display:none;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <nav class="navbar">
        <a href="/" class="nav-brand">XYZ Bank</a>
        <div class="nav-links">
            <a href="/services">Services</a>
            <a href="/about" class="active">About</a>
            <a href="/contact">Contact</a>
            <a href="/login" class="nav-btn">Login</a>
        </div>
    </nav>

    <section class="page-hero">
        <h1>About <span class="gradient">XYZ Bank</span></h1>
        <p>Discover who we are, what we stand for, and how we're making banking smarter for everyone.</p>
    </section>

    <section class="content">
        <!-- Mission & Vision -->
        <div class="mv-grid">
            <div class="mv-card">
                <div class="mv-icon">&#127919;</div>
                <h3>Our Mission</h3>
                <p>To empower individuals and businesses with innovative, secure, and customer-centric financial solutions — redefining trust and transparency in every transaction.</p>
            </div>
            <div class="mv-card">
                <div class="mv-icon">&#128302;</div>
                <h3>Our Vision</h3>
                <p>To become the world's most trusted financial institution by driving digital innovation and building long-term relationships that foster growth, prosperity, and financial freedom.</p>
            </div>
        </div>

        <!-- Core Values -->
        <div class="section-label">Our Principles</div>
        <h2 class="section-title">Core Values</h2>
        <div class="values-grid">
            <div class="value-card">
                <div class="v-icon">&#128737;</div>
                <h4>Security First</h4>
                <p>Your safety is our top priority</p>
            </div>
            <div class="value-card">
                <div class="v-icon">&#128161;</div>
                <h4>Innovation</h4>
                <p>Leading with cutting-edge tech</p>
            </div>
            <div class="value-card">
                <div class="v-icon">&#129309;</div>
                <h4>Trust</h4>
                <p>Built on transparency & integrity</p>
            </div>
            <div class="value-card">
                <div class="v-icon">&#127760;</div>
                <h4>Inclusivity</h4>
                <p>Banking for everyone, everywhere</p>
            </div>
        </div>

        <!-- Leadership Team -->
        <div class="section-label">Leadership</div>
        <h2 class="section-title">Meet Our Team</h2>
        <div class="team-grid">
            <div class="team-card">
                <div class="team-avatar a1">&#128104;&#8205;&#128188;</div>
                <h4>John Doe</h4>
                <div class="role">Chief Executive Officer</div>
            </div>
            <div class="team-card">
                <div class="team-avatar a2">&#128105;&#8205;&#128188;</div>
                <h4>Jane Smith</h4>
                <div class="role">Chief Operating Officer</div>
            </div>
            <div class="team-card">
                <div class="team-avatar a3">&#128104;&#8205;&#128187;</div>
                <h4>Mike Brown</h4>
                <div class="role">Chief Technology Officer</div>
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
