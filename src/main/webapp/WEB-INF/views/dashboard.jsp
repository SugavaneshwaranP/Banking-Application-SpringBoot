<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard — XYZ Bank</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-primary:#0a0e27;--bg-secondary:#0f1437;--bg-card:rgba(255,255,255,0.04);
            --bg-card-hover:rgba(255,255,255,0.08);--glass-border:rgba(255,255,255,0.08);
            --accent-1:#00d4aa;--accent-2:#00b4d8;--accent-3:#7c3aed;--accent-4:#f59e0b;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);
            --gradient-accent:linear-gradient(135deg,#7c3aed,#00b4d8);
            --gradient-warm:linear-gradient(135deg,#f59e0b,#ef4444);
            --radius:16px;--radius-lg:24px;
        }
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);min-height:100vh;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 80% 50% at 50% 0%,rgba(0,212,170,0.06) 0%,transparent 60%),
            radial-gradient(ellipse 50% 50% at 90% 80%,rgba(124,58,237,0.05) 0%,transparent 60%);}

        /* Top Bar */
        .topbar{position:fixed;top:0;left:0;right:0;z-index:100;display:flex;justify-content:space-between;
            align-items:center;padding:.8rem 2rem;background:rgba(10,14,39,0.9);
            backdrop-filter:blur(20px);border-bottom:1px solid var(--glass-border);}
        .topbar-brand{font-size:1.3rem;font-weight:800;background:var(--gradient-primary);
            -webkit-background-clip:text;-webkit-text-fill-color:transparent;background-clip:text;text-decoration:none;}
        .topbar-right{display:flex;align-items:center;gap:1.5rem;}
        .topbar-user{font-size:.9rem;color:var(--text-secondary);font-weight:500;}
        .topbar-user strong{color:var(--text-primary);}
        .btn-logout{padding:.45rem 1.2rem;border-radius:50px;background:rgba(239,68,68,0.15);
            color:#ef4444;text-decoration:none;font-size:.85rem;font-weight:600;border:1px solid rgba(239,68,68,0.2);transition:all .3s;}
        .btn-logout:hover{background:rgba(239,68,68,0.25);transform:translateY(-1px);}

        /* Main Content */
        .main{position:relative;z-index:1;max-width:1200px;margin:0 auto;padding:5rem 2rem 3rem;}

        /* Welcome Card */
        .welcome-card{background:var(--gradient-accent);border-radius:var(--radius-lg);padding:2.5rem;
            margin-bottom:2rem;position:relative;overflow:hidden;animation:fadeUp .6s ease;}
        .welcome-card::before{content:'';position:absolute;top:-30%;right:-10%;width:300px;height:300px;
            border-radius:50%;background:rgba(255,255,255,0.06);}
        .welcome-card::after{content:'';position:absolute;bottom:-40%;left:10%;width:200px;height:200px;
            border-radius:50%;background:rgba(255,255,255,0.04);}
        .welcome-card h1{font-size:1.8rem;font-weight:800;position:relative;z-index:1;margin-bottom:.4rem;}
        .welcome-card p{color:rgba(255,255,255,0.8);font-size:1rem;position:relative;z-index:1;}

        /* Stats Grid */
        .stats-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(220px,1fr));gap:1.2rem;margin-bottom:2rem;}
        .stat-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:1.5rem;backdrop-filter:blur(10px);transition:all .3s ease;animation:fadeUp .6s ease both;}
        .stat-card:nth-child(2){animation-delay:.1s;} .stat-card:nth-child(3){animation-delay:.2s;} .stat-card:nth-child(4){animation-delay:.3s;}
        .stat-card:hover{transform:translateY(-4px);background:var(--bg-card-hover);}
        .stat-card .stat-icon{width:42px;height:42px;border-radius:10px;display:flex;align-items:center;
            justify-content:center;font-size:1.2rem;margin-bottom:1rem;}
        .stat-card .stat-icon.green{background:rgba(0,212,170,0.12);}
        .stat-card .stat-icon.blue{background:rgba(0,180,216,0.12);}
        .stat-card .stat-icon.purple{background:rgba(124,58,237,0.12);}
        .stat-card .stat-icon.amber{background:rgba(245,158,11,0.12);}
        .stat-card .stat-label{font-size:.8rem;color:var(--text-muted);font-weight:500;text-transform:uppercase;letter-spacing:.5px;}
        .stat-card .stat-value{font-size:1.6rem;font-weight:800;margin-top:.3rem;}
        .stat-card .stat-value.gradient{background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;}

        /* Section */
        .section{margin-bottom:2rem;}
        .section-title{font-size:1.1rem;font-weight:700;margin-bottom:1rem;display:flex;align-items:center;gap:.5rem;}
        .section-title::before{content:'';width:3px;height:20px;border-radius:3px;background:var(--gradient-primary);}

        /* Quick Actions Grid */
        .actions-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:1rem;}
        .action-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:1.5rem;text-decoration:none;color:var(--text-primary);transition:all .4s ease;
            display:flex;flex-direction:column;align-items:flex-start;gap:.8rem;position:relative;overflow:hidden;}
        .action-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;
            background:var(--gradient-primary);transform:scaleX(0);transform-origin:left;transition:transform .4s ease;}
        .action-card:hover{transform:translateY(-6px);background:var(--bg-card-hover);box-shadow:0 0 30px rgba(0,212,170,0.1);}
        .action-card:hover::before{transform:scaleX(1);}
        .action-icon{width:44px;height:44px;border-radius:12px;display:flex;align-items:center;
            justify-content:center;font-size:1.3rem;background:rgba(0,212,170,0.1);}
        .action-card h3{font-size:1rem;font-weight:700;}
        .action-card p{font-size:.85rem;color:var(--text-muted);line-height:1.5;}
        .action-arrow{font-size:.85rem;color:var(--accent-1);font-weight:600;display:flex;align-items:center;gap:.3rem;margin-top:auto;}

        /* Info Cards */
        .info-grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(280px,1fr));gap:1rem;}
        .info-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);padding:1.5rem;}
        .info-card h3{font-size:1rem;font-weight:700;margin-bottom:1rem;color:var(--accent-1);}
        .info-row{display:flex;justify-content:space-between;padding:.5rem 0;border-bottom:1px solid rgba(255,255,255,0.04);}
        .info-row:last-child{border:none;}
        .info-row .label{font-size:.85rem;color:var(--text-muted);}
        .info-row .value{font-size:.85rem;font-weight:600;}

        @keyframes fadeUp{from{opacity:0;transform:translateY(25px)}to{opacity:1;transform:translateY(0)}}
        @media(max-width:768px){
            .main{padding:4.5rem 1rem 2rem;} .welcome-card{padding:2rem;}
            .stats-grid{grid-template-columns:1fr 1fr;} .topbar{padding:.8rem 1rem;}
        }
        @media(max-width:480px){.stats-grid{grid-template-columns:1fr;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>

    <!-- Top Bar -->
    <div class="topbar">
        <a href="/" class="topbar-brand">XYZ Bank</a>
        <div class="topbar-right">
            <span class="topbar-user">Welcome, <strong>${customerName}</strong></span>
            <a href="/logout" class="btn-logout">Logout</a>
        </div>
    </div>

    <div class="main">
        <!-- Welcome Card -->
        <div class="welcome-card">
            <h1>Hello, ${customerName} &#128075;</h1>
            <p>Manage your finances smartly and explore personalized opportunities.</p>
        </div>

        <!-- Stats Grid -->
        <div class="stats-grid">
            <div class="stat-card">
                <div class="stat-icon green">&#128176;</div>
                <div class="stat-label">Available Balance</div>
                <div class="stat-value gradient">&#8377;${accountBalance}</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon blue">&#128179;</div>
                <div class="stat-label">Account Number</div>
                <div class="stat-value">${accountNumber}</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon purple">&#127974;</div>
                <div class="stat-label">Account Type</div>
                <div class="stat-value">${accountType}</div>
            </div>
            <div class="stat-card">
                <div class="stat-icon amber">&#127970;</div>
                <div class="stat-label">Branch</div>
                <div class="stat-value">${branchName}</div>
            </div>
        </div>

        <!-- Quick Actions -->
        <div class="section">
            <div class="section-title">Quick Actions</div>
            <div class="actions-grid">
                <a href="/transferFunds" class="action-card">
                    <div class="action-icon">&#128184;</div>
                    <h3>Transfer Money</h3>
                    <p>Send funds instantly to any account</p>
                    <span class="action-arrow">Transfer &rarr;</span>
                </a>
                <a href="/TransactionHistory" class="action-card">
                    <div class="action-icon" style="background:rgba(124,58,237,0.1);">&#128203;</div>
                    <h3>Transaction History</h3>
                    <p>View all your past transactions</p>
                    <span class="action-arrow">View &rarr;</span>
                </a>
                <a href="/fdDetails" class="action-card">
                    <div class="action-icon" style="background:rgba(245,158,11,0.1);">&#128142;</div>
                    <h3>Fixed Deposit</h3>
                    <p>Earn up to 6.5% interest annually</p>
                    <span class="action-arrow">Details &rarr;</span>
                </a>
                <a href="/rdDetails" class="action-card">
                    <div class="action-icon" style="background:rgba(0,180,216,0.1);">&#128200;</div>
                    <h3>Recurring Deposit</h3>
                    <p>Save systematically every month</p>
                    <span class="action-arrow">Details &rarr;</span>
                </a>
            </div>
        </div>

        <!-- Loans & Payment Info -->
        <div class="section">
            <div class="section-title">Loans & Schemes</div>
            <div class="info-grid">
                <div class="info-card">
                    <h3>&#128176; Personal Loan</h3>
                    <div class="info-row"><span class="label">Interest Rate</span><span class="value">11% p.a.</span></div>
                    <div class="info-row"><span class="label">Max Tenure</span><span class="value">5 Years</span></div>
                    <div class="info-row"><span class="label">Processing Fee</span><span class="value">1.5%</span></div>
                </div>
                <div class="info-card">
                    <h3>&#127968; Home Loan</h3>
                    <div class="info-row"><span class="label">Interest Rate</span><span class="value">7% p.a.</span></div>
                    <div class="info-row"><span class="label">Max Tenure</span><span class="value">30 Years</span></div>
                    <div class="info-row"><span class="label">Processing Fee</span><span class="value">0.5%</span></div>
                </div>
                <div class="info-card">
                    <h3>&#128663; Car Loan</h3>
                    <div class="info-row"><span class="label">Interest Rate</span><span class="value">8.5% p.a.</span></div>
                    <div class="info-row"><span class="label">Max Tenure</span><span class="value">7 Years</span></div>
                    <div class="info-row"><span class="label">Processing Fee</span><span class="value">1%</span></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
