<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login — XYZ Bank</title>
    <meta name="description" content="Log in to your XYZ Bank account securely.">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-primary: #0a0e27; --bg-card: rgba(255,255,255,0.04);
            --glass-border: rgba(255,255,255,0.08); --accent-1: #00d4aa;
            --accent-2: #00b4d8; --text-primary: #fff; --text-secondary: #94a3b8;
            --text-muted: #64748b; --gradient-primary: linear-gradient(135deg,#00d4aa,#00b4d8);
            --radius: 16px; --error: #ef4444;
        }
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body {
            font-family:'Inter',-apple-system,sans-serif; background:var(--bg-primary);
            color:var(--text-primary); min-height:100vh;
            display:flex; align-items:center; justify-content:center;
            padding:1.5rem; position:relative; overflow:hidden;
        }
        .bg-mesh {
            position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:
                radial-gradient(ellipse 60% 50% at 20% 50%,rgba(0,212,170,0.08) 0%,transparent 60%),
                radial-gradient(ellipse 50% 40% at 80% 30%,rgba(124,58,237,0.08) 0%,transparent 60%);
        }
        .login-wrapper { position:relative; z-index:1; width:100%; max-width:440px; animation:fadeUp .8s ease; }

        /* Back link */
        .back-link {
            display:inline-flex; align-items:center; gap:.4rem; color:var(--text-muted);
            text-decoration:none; font-size:.9rem; font-weight:500; margin-bottom:1.5rem;
            transition:color .3s;
        }
        .back-link:hover { color:var(--accent-1); }

        /* Card */
        .login-card {
            background:var(--bg-card); border:1px solid var(--glass-border);
            border-radius:var(--radius); padding:2.5rem; backdrop-filter:blur(20px);
            position:relative; overflow:hidden;
        }
        .login-card::before {
            content:''; position:absolute; top:0; left:0; right:0; height:3px;
            background:var(--gradient-primary);
        }

        /* Logo */
        .brand {
            text-align:center; margin-bottom:2rem;
        }
        .brand-name {
            font-size:1.4rem; font-weight:800;
            background:var(--gradient-primary); -webkit-background-clip:text;
            -webkit-text-fill-color:transparent; background-clip:text;
        }
        .brand-sub { font-size:.85rem; color:var(--text-muted); margin-top:.3rem; }

        /* Form */
        .form-group { margin-bottom:1.3rem; }
        .form-label {
            display:block; font-size:.85rem; font-weight:600; color:var(--text-secondary);
            margin-bottom:.5rem;
        }
        .form-input {
            width:100%; padding:.85rem 1rem; border:1px solid var(--glass-border);
            border-radius:10px; background:rgba(255,255,255,0.03); color:var(--text-primary);
            font-size:.95rem; font-family:inherit; outline:none; transition:all .3s ease;
        }
        .form-input::placeholder { color:var(--text-muted); }
        .form-input:focus {
            border-color:var(--accent-1);
            box-shadow:0 0 0 3px rgba(0,212,170,0.15);
            background:rgba(255,255,255,0.05);
        }

        /* Error */
        .error-msg {
            background:rgba(239,68,68,0.1); border:1px solid rgba(239,68,68,0.2);
            border-radius:10px; padding:.75rem 1rem; margin-bottom:1.2rem;
            font-size:.85rem; color:var(--error); display:flex; align-items:center; gap:.5rem;
            animation:shake .4s ease;
        }
        @keyframes shake {
            0%,100%{transform:translateX(0)} 25%{transform:translateX(-6px)} 75%{transform:translateX(6px)}
        }

        /* Button */
        .btn-login {
            width:100%; padding:.9rem; border:none; border-radius:10px;
            background:var(--gradient-primary); color:var(--bg-primary);
            font-size:1rem; font-weight:700; font-family:inherit; cursor:pointer;
            transition:all .3s ease;
        }
        .btn-login:hover { transform:translateY(-2px); box-shadow:0 8px 25px rgba(0,212,170,0.3); }
        .btn-login:active { transform:translateY(0); }

        /* Footer */
        .card-footer {
            text-align:center; margin-top:1.5rem; font-size:.9rem; color:var(--text-muted);
        }
        .card-footer a {
            color:var(--accent-1); text-decoration:none; font-weight:600; transition:opacity .3s;
        }
        .card-footer a:hover { opacity:.8; }

        @keyframes fadeUp { from{opacity:0;transform:translateY(25px)} to{opacity:1;transform:translateY(0)} }

        @media(max-width:480px) { .login-card{padding:2rem 1.5rem;} }
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <div class="login-wrapper">
        <a href="/" class="back-link">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
            Back to Home
        </a>

        <div class="login-card">
            <div class="brand">
                <div class="brand-name">XYZ Bank</div>
                <div class="brand-sub">Sign in to your account</div>
            </div>

            <% if (request.getAttribute("error") != null) { %>
            <div class="error-msg">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="15" y1="9" x2="9" y2="15"/><line x1="9" y1="9" x2="15" y2="15"/></svg>
                <%= request.getAttribute("error") %>
            </div>
            <% } %>

            <form action="/login" method="post" id="loginForm">
                <div class="form-group">
                    <label for="email" class="form-label">Email Address</label>
                    <input type="email" id="email" name="email" class="form-input"
                           placeholder="you@example.com" required autocomplete="email">
                </div>

                <div class="form-group">
                    <label for="pin" class="form-label">6-Digit PIN</label>
                    <input type="password" id="pin" name="pin" class="form-input"
                           placeholder="Enter your PIN" maxlength="6" pattern="\d{6}"
                           required autocomplete="current-password">
                </div>

                <button type="submit" class="btn-login" id="loginBtn">Sign In</button>
            </form>

            <div class="card-footer">
                Don't have an account? <a href="/register">Create one</a>
            </div>
        </div>
    </div>
</body>
</html>
