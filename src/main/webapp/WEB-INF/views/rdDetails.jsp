<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recurring Deposit — XYZ Bank</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root{--bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);--bg-card-hover:rgba(255,255,255,0.08);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);--radius:16px;}
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);
            min-height:100vh;display:flex;align-items:center;justify-content:center;padding:1.5rem;position:relative;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 60% 50% at 60% 30%,rgba(0,212,170,0.08) 0%,transparent 60%),
            radial-gradient(ellipse 50% 50% at 30% 80%,rgba(0,180,216,0.06) 0%,transparent 60%);}
        .wrapper{position:relative;z-index:1;width:100%;max-width:600px;animation:fadeUp .8s ease;}
        .back-link{display:inline-flex;align-items:center;gap:.4rem;color:var(--text-muted);
            text-decoration:none;font-size:.9rem;font-weight:500;margin-bottom:1.5rem;transition:color .3s;}
        .back-link:hover{color:var(--accent-1);}
        .card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:2.5rem;backdrop-filter:blur(20px);position:relative;overflow:hidden;}
        .card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;background:var(--gradient-primary);}
        .card-header{text-align:center;margin-bottom:2rem;}
        .card-header .icon{font-size:3rem;margin-bottom:.5rem;}
        .card-header h1{font-size:1.6rem;font-weight:800;}
        .card-header h1 .gradient{background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;}
        .card-header p{color:var(--text-muted);font-size:.9rem;margin-top:.5rem;line-height:1.6;}

        .rate-highlight{background:rgba(0,212,170,0.1);border:1px solid rgba(0,212,170,0.2);
            border-radius:12px;padding:1.5rem;text-align:center;margin-bottom:1.5rem;}
        .rate-label{font-size:.8rem;font-weight:600;color:var(--accent-1);text-transform:uppercase;letter-spacing:1px;}
        .rate-value{font-size:2.5rem;font-weight:900;background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;margin:.3rem 0;}
        .rate-sub{font-size:.8rem;color:var(--text-muted);}

        .features{display:flex;flex-direction:column;gap:.8rem;margin-bottom:2rem;}
        .feature{display:flex;align-items:center;gap:.8rem;padding:.8rem 1rem;
            background:rgba(255,255,255,0.02);border-radius:10px;border:1px solid rgba(255,255,255,0.04);transition:all .3s;}
        .feature:hover{background:rgba(255,255,255,0.05);}
        .feature .f-icon{font-size:1.2rem;flex-shrink:0;}
        .feature .f-text{font-size:.9rem;color:var(--text-secondary);}
        .feature .f-text strong{color:var(--text-primary);}

        .btn-back{display:inline-flex;align-items:center;gap:.5rem;padding:.8rem 2rem;border-radius:50px;
            background:var(--gradient-primary);color:var(--bg-primary);text-decoration:none;font-weight:700;
            font-size:.95rem;transition:all .3s;}
        .btn-back:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,212,170,0.3);}

        @keyframes fadeUp{from{opacity:0;transform:translateY(25px)}to{opacity:1;transform:translateY(0)}}
        @media(max-width:480px){.card{padding:2rem 1.5rem;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>
    <div class="wrapper">
        <a href="/dashboard" class="back-link">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
            Back to Dashboard
        </a>
        <div class="card">
            <div class="card-header">
                <div class="icon">&#128200;</div>
                <h1>Recurring <span class="gradient">Deposit</span></h1>
                <p>Build savings steadily through regular monthly deposits and earn attractive returns over time.</p>
            </div>

            <div class="rate-highlight">
                <div class="rate-label">Interest Rate Up To</div>
                <div class="rate-value">6.25%</div>
                <div class="rate-sub">per annum</div>
            </div>

            <div class="features">
                <div class="feature">
                    <span class="f-icon">&#128197;</span>
                    <span class="f-text"><strong>Tenure:</strong> 6 months to 10 years</span>
                </div>
                <div class="feature">
                    <span class="f-icon">&#128176;</span>
                    <span class="f-text"><strong>Monthly Installment:</strong> Minimum &#8377;500</span>
                </div>
                <div class="feature">
                    <span class="f-icon">&#128275;</span>
                    <span class="f-text"><strong>Premature Withdrawal:</strong> Available with minor penalty</span>
                </div>
                <div class="feature">
                    <span class="f-icon">&#128100;</span>
                    <span class="f-text"><strong>Nomination Facility:</strong> Available</span>
                </div>
                <div class="feature">
                    <span class="f-icon">&#128260;</span>
                    <span class="f-text"><strong>Auto-Debit:</strong> Automatic monthly deduction from savings</span>
                </div>
            </div>

            <div style="text-align:center;">
                <a href="/dashboard" class="btn-back">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
                    Back to Dashboard
                </a>
            </div>
        </div>
    </div>
</body>
</html>
