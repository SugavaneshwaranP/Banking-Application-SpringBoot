<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register — XYZ Bank</title>
    <meta name="description" content="Create your XYZ Bank account in minutes.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);
            --radius:16px;--success:#22c55e;--error:#ef4444;
        }
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body {
            font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);
            color:var(--text-primary);min-height:100vh;display:flex;
            align-items:center;justify-content:center;padding:1.5rem;
            position:relative;overflow-x:hidden;
        }
        .bg-mesh {
            position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:
                radial-gradient(ellipse 50% 50% at 70% 30%,rgba(0,212,170,0.08) 0%,transparent 60%),
                radial-gradient(ellipse 50% 50% at 30% 70%,rgba(124,58,237,0.06) 0%,transparent 60%);
        }
        .register-wrapper{position:relative;z-index:1;width:100%;max-width:480px;animation:fadeUp .8s ease;}
        .back-link {
            display:inline-flex;align-items:center;gap:.4rem;color:var(--text-muted);
            text-decoration:none;font-size:.9rem;font-weight:500;margin-bottom:1.5rem;transition:color .3s;
        }
        .back-link:hover{color:var(--accent-1);}
        .register-card {
            background:var(--bg-card);border:1px solid var(--glass-border);
            border-radius:var(--radius);padding:2.5rem;backdrop-filter:blur(20px);
            position:relative;overflow:hidden;
        }
        .register-card::before {
            content:'';position:absolute;top:0;left:0;right:0;height:3px;
            background:var(--gradient-primary);
        }
        .brand{text-align:center;margin-bottom:2rem;}
        .brand-name {
            font-size:1.4rem;font-weight:800;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;
        }
        .brand-sub{font-size:.85rem;color:var(--text-muted);margin-top:.3rem;}

        /* Messages */
        .msg-success {
            background:rgba(34,197,94,0.1);border:1px solid rgba(34,197,94,0.2);
            border-radius:10px;padding:.75rem 1rem;margin-bottom:1.2rem;
            font-size:.85rem;color:var(--success);display:flex;align-items:center;gap:.5rem;
        }
        .msg-error {
            background:rgba(239,68,68,0.1);border:1px solid rgba(239,68,68,0.2);
            border-radius:10px;padding:.75rem 1rem;margin-bottom:1.2rem;
            font-size:.85rem;color:var(--error);display:flex;align-items:center;gap:.5rem;
        }

        /* Form Grid */
        .form-row{display:grid;grid-template-columns:1fr 1fr;gap:1rem;}
        .form-group{margin-bottom:1.2rem;}
        .form-group.full{grid-column:1/-1;}
        .form-label{display:block;font-size:.8rem;font-weight:600;color:var(--text-secondary);margin-bottom:.4rem;}
        .form-input {
            width:100%;padding:.8rem 1rem;border:1px solid var(--glass-border);
            border-radius:10px;background:rgba(255,255,255,0.03);color:var(--text-primary);
            font-size:.9rem;font-family:inherit;outline:none;transition:all .3s ease;
        }
        .form-input::placeholder{color:var(--text-muted);}
        .form-input:focus{border-color:var(--accent-1);box-shadow:0 0 0 3px rgba(0,212,170,0.15);background:rgba(255,255,255,0.05);}
        .btn-register {
            width:100%;padding:.9rem;border:none;border-radius:10px;
            background:var(--gradient-primary);color:var(--bg-primary);
            font-size:1rem;font-weight:700;font-family:inherit;cursor:pointer;transition:all .3s ease;
        }
        .btn-register:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,212,170,0.3);}
        .card-footer{text-align:center;margin-top:1.5rem;font-size:.9rem;color:var(--text-muted);}
        .card-footer a{color:var(--accent-1);text-decoration:none;font-weight:600;transition:opacity .3s;}
        .card-footer a:hover{opacity:.8;}
        @keyframes fadeUp{from{opacity:0;transform:translateY(25px)}to{opacity:1;transform:translateY(0)}}
        @media(max-width:540px){.form-row{grid-template-columns:1fr;}.register-card{padding:2rem 1.5rem;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>
    <div class="register-wrapper">
        <a href="/" class="back-link">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
            Back to Home
        </a>
        <div class="register-card">
            <div class="brand">
                <div class="brand-name">XYZ Bank</div>
                <div class="brand-sub">Create your account</div>
            </div>

            <% if (request.getAttribute("message") != null) {
                String msgType = (String) request.getAttribute("messageType");
                String cssClass = "success".equals(msgType) ? "msg-success" : "msg-error";
            %>
            <div class="<%= cssClass %>">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/></svg>
                <%= request.getAttribute("message") %>
            </div>
            <% } %>

            <form action="/register" method="post">
                <div class="form-row">
                    <div class="form-group full">
                        <label for="name" class="form-label">Full Name</label>
                        <input type="text" id="name" name="name" class="form-input" placeholder="John Doe" required>
                    </div>
                    <div class="form-group">
                        <label for="email" class="form-label">Email Address</label>
                        <input type="email" id="email" name="email" class="form-input" placeholder="you@email.com" required>
                    </div>
                    <div class="form-group">
                        <label for="mobile" class="form-label">Mobile Number</label>
                        <input type="text" id="mobile" name="mobile" class="form-input" placeholder="10-digit number" pattern="\d{10}" required>
                    </div>
                    <div class="form-group">
                        <label for="accountNumber" class="form-label">Account Number</label>
                        <input type="text" id="accountNumber" name="accountNumber" class="form-input" placeholder="10-16 digit number" pattern="\d{10,16}" required>
                    </div>
                    <div class="form-group">
                        <label for="pin" class="form-label">6-Digit PIN</label>
                        <input type="password" id="pin" name="pin" class="form-input" placeholder="Create a PIN" pattern="\d{6}" maxlength="6" required>
                    </div>
                    <div class="form-group full">
                        <label for="branch" class="form-label">Branch Name</label>
                        <input type="text" id="branch" name="branch" class="form-input" placeholder="Your nearest branch" required>
                    </div>
                </div>
                <button type="submit" class="btn-register">Create Account</button>
            </form>
            <div class="card-footer">
                Already have an account? <a href="/login">Sign in</a>
            </div>
        </div>
    </div>
</body>
</html>
