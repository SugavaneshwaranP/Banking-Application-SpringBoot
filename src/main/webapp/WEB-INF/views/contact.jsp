<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us — XYZ Bank</title>
    <meta name="description" content="Get in touch with XYZ Bank support team. Find our address, phone, email, and bank timings.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        :root{--bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);--bg-card-hover:rgba(255,255,255,0.08);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;--accent-3:#7c3aed;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);--radius:16px;--radius-lg:24px;}
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);line-height:1.6;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 50% 50% at 30% 30%,rgba(0,180,216,0.07) 0%,transparent 60%),
            radial-gradient(ellipse 60% 40% at 70% 80%,rgba(124,58,237,0.06) 0%,transparent 60%);}

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

        /* Contact Grid */
        .contact-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:1.5rem;margin-bottom:3rem;}
        .contact-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:1.8rem;transition:all .4s ease;position:relative;overflow:hidden;}
        .contact-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;
            background:var(--gradient-primary);transform:scaleX(0);transform-origin:left;transition:transform .4s;}
        .contact-card:hover{transform:translateY(-6px);background:var(--bg-card-hover);}
        .contact-card:hover::before{transform:scaleX(1);}
        .contact-card .c-icon{font-size:1.8rem;margin-bottom:1rem;}
        .contact-card h3{font-size:1rem;font-weight:700;margin-bottom:.6rem;color:var(--accent-1);}
        .contact-card p{font-size:.9rem;color:var(--text-secondary);line-height:1.7;}
        .contact-card a{color:var(--accent-1);text-decoration:none;font-weight:500;}
        .contact-card a:hover{text-decoration:underline;}

        /* FAQ Section */
        .section-label{font-size:.85rem;font-weight:600;text-transform:uppercase;letter-spacing:2px;
            color:var(--accent-1);text-align:center;margin-bottom:.5rem;}
        .section-title{font-size:1.8rem;font-weight:800;text-align:center;margin-bottom:2rem;}
        .faq-list{max-width:700px;margin:0 auto 3rem;}
        .faq-item{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:12px;
            margin-bottom:.8rem;overflow:hidden;transition:all .3s ease;}
        .faq-item:hover{background:var(--bg-card-hover);}
        .faq-question{padding:1.2rem 1.5rem;cursor:pointer;display:flex;justify-content:space-between;
            align-items:center;font-weight:600;font-size:.95rem;user-select:none;}
        .faq-question .arrow{transition:transform .3s;color:var(--accent-1);font-size:1.2rem;}
        .faq-answer{max-height:0;overflow:hidden;transition:max-height .3s ease,padding .3s ease;
            font-size:.9rem;color:var(--text-secondary);line-height:1.7;padding:0 1.5rem;}
        .faq-item.open .faq-answer{max-height:200px;padding:0 1.5rem 1.2rem;}
        .faq-item.open .arrow{transform:rotate(180deg);}

        /* Social Links */
        .social-section{text-align:center;margin-bottom:2rem;}
        .social-links{display:flex;justify-content:center;gap:1rem;margin-top:1rem;flex-wrap:wrap;}
        .social-link{display:inline-flex;align-items:center;gap:.4rem;padding:.6rem 1.4rem;
            background:var(--bg-card);border:1px solid var(--glass-border);border-radius:50px;
            color:var(--text-secondary);text-decoration:none;font-size:.9rem;font-weight:500;transition:all .3s;}
        .social-link:hover{background:var(--bg-card-hover);color:var(--accent-1);border-color:rgba(0,212,170,0.2);transform:translateY(-2px);}

        .footer{position:relative;z-index:1;border-top:1px solid var(--glass-border);padding:2.5rem 2rem;text-align:center;}
        .footer-brand{font-size:1.2rem;font-weight:800;margin-bottom:.8rem;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;}
        .footer-links{display:flex;justify-content:center;gap:2rem;margin-bottom:1rem;flex-wrap:wrap;}
        .footer-links a{color:var(--text-muted);text-decoration:none;font-size:.85rem;transition:color .3s;}
        .footer-links a:hover{color:var(--accent-1);}
        .footer-copy{color:var(--text-muted);font-size:.8rem;} .footer-copy .hl{color:var(--accent-1);font-weight:600;}

        @media(max-width:768px){.navbar{padding:.8rem 1.2rem;}.contact-grid{grid-template-columns:1fr;}}
        @media(max-width:640px){.nav-links a:not(.nav-btn){display:none;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <nav class="navbar">
        <a href="/" class="nav-brand">XYZ Bank</a>
        <div class="nav-links">
            <a href="/services">Services</a>
            <a href="/about">About</a>
            <a href="/contact" class="active">Contact</a>
            <a href="/login" class="nav-btn">Login</a>
        </div>
    </nav>

    <section class="page-hero">
        <h1>Contact <span class="gradient">Us</span></h1>
        <p>We're here to help — reach out to our support team anytime.</p>
    </section>

    <section class="content">
        <div class="contact-grid">
            <div class="contact-card">
                <div class="c-icon">&#127968;</div>
                <h3>Our Address</h3>
                <p>123 Financial Street<br>New York, NY 10001, USA</p>
            </div>
            <div class="contact-card">
                <div class="c-icon">&#128222;</div>
                <h3>Phone Numbers</h3>
                <p>Customer Care: +1 800-123-4567<br>Corporate: +1 800-987-6543</p>
            </div>
            <div class="contact-card">
                <div class="c-icon">&#128231;</div>
                <h3>Email</h3>
                <p><a href="mailto:support@xyzbank.com">support@xyzbank.com</a></p>
            </div>
            <div class="contact-card">
                <div class="c-icon">&#128339;</div>
                <h3>Bank Timings</h3>
                <p>Mon-Fri: 9:00 AM - 5:00 PM<br>Sat: 9:00 AM - 1:00 PM<br>Sun: Closed</p>
            </div>
        </div>

        <!-- FAQ -->
        <div class="section-label">Support</div>
        <h2 class="section-title">Frequently Asked Questions</h2>
        <div class="faq-list">
            <div class="faq-item">
                <div class="faq-question" onclick="this.parentElement.classList.toggle('open')">
                    How can I open a new account?
                    <span class="arrow">&#9660;</span>
                </div>
                <div class="faq-answer">Visit your nearest branch with valid ID and address proof, or register online through our website in just a few minutes.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="this.parentElement.classList.toggle('open')">
                    What loan options do you offer?
                    <span class="arrow">&#9660;</span>
                </div>
                <div class="faq-answer">We offer personal, home, car, and education loans with competitive interest rates and flexible tenures. Contact us for personalized rates.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="this.parentElement.classList.toggle('open')">
                    How can I update my contact details?
                    <span class="arrow">&#9660;</span>
                </div>
                <div class="faq-answer">Log in to your account and navigate to the Profile section, or visit your nearest branch with valid identification.</div>
            </div>
            <div class="faq-item">
                <div class="faq-question" onclick="this.parentElement.classList.toggle('open')">
                    Is online banking secure?
                    <span class="arrow">&#9660;</span>
                </div>
                <div class="faq-answer">Yes! We use 256-bit SSL encryption, multi-factor authentication, and real-time fraud detection to protect all your transactions.</div>
            </div>
        </div>

        <!-- Social -->
        <div class="social-section">
            <div class="section-label">Stay Connected</div>
            <h2 class="section-title">Follow Us</h2>
            <div class="social-links">
                <a href="https://facebook.com/xyzbank" target="_blank" class="social-link">&#127760; Facebook</a>
                <a href="https://twitter.com/xyzbank" target="_blank" class="social-link">&#128038; Twitter</a>
                <a href="https://linkedin.com/company/xyzbank" target="_blank" class="social-link">&#128188; LinkedIn</a>
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
