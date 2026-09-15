<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Funds — XYZ Bank</title>
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
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);min-height:100vh;
            display:flex;align-items:center;justify-content:center;padding:1.5rem;position:relative;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 60% 50% at 30% 40%,rgba(0,212,170,0.07) 0%,transparent 60%),
            radial-gradient(ellipse 50% 40% at 70% 60%,rgba(124,58,237,0.06) 0%,transparent 60%);}
        .transfer-wrapper{position:relative;z-index:1;width:100%;max-width:480px;animation:fadeUp .8s ease;}
        .back-link{display:inline-flex;align-items:center;gap:.4rem;color:var(--text-muted);
            text-decoration:none;font-size:.9rem;font-weight:500;margin-bottom:1.5rem;transition:color .3s;}
        .back-link:hover{color:var(--accent-1);}
        .transfer-card{background:var(--bg-card);border:1px solid var(--glass-border);border-radius:var(--radius);
            padding:2.5rem;backdrop-filter:blur(20px);position:relative;overflow:hidden;}
        .transfer-card::before{content:'';position:absolute;top:0;left:0;right:0;height:3px;background:var(--gradient-primary);}
        .card-header{text-align:center;margin-bottom:2rem;}
        .card-header .icon{font-size:2.5rem;margin-bottom:.5rem;}
        .card-header h2{font-size:1.4rem;font-weight:800;}
        .card-header p{font-size:.85rem;color:var(--text-muted);margin-top:.3rem;}

        /* Messages */
        .msg{border-radius:10px;padding:.8rem 1rem;margin-bottom:1.5rem;font-size:.9rem;
            display:flex;align-items:center;gap:.5rem;animation:fadeUp .4s ease;}
        .msg-success{background:rgba(34,197,94,0.1);border:1px solid rgba(34,197,94,0.2);color:var(--success);}
        .msg-error{background:rgba(239,68,68,0.1);border:1px solid rgba(239,68,68,0.2);color:var(--error);}

        .form-group{margin-bottom:1.3rem;}
        .form-label{display:block;font-size:.8rem;font-weight:600;color:var(--text-secondary);margin-bottom:.5rem;
            text-transform:uppercase;letter-spacing:.3px;}
        .form-input{width:100%;padding:.85rem 1rem;border:1px solid var(--glass-border);border-radius:10px;
            background:rgba(255,255,255,0.03);color:var(--text-primary);font-size:.95rem;
            font-family:inherit;outline:none;transition:all .3s ease;}
        .form-input::placeholder{color:var(--text-muted);}
        .form-input:focus{border-color:var(--accent-1);box-shadow:0 0 0 3px rgba(0,212,170,0.15);background:rgba(255,255,255,0.05);}
        .form-input[readonly]{opacity:.6;cursor:not-allowed;}
        .amount-hint{font-size:.75rem;color:var(--text-muted);margin-top:.3rem;}
        .btn-transfer{width:100%;padding:.95rem;border:none;border-radius:10px;background:var(--gradient-primary);
            color:var(--bg-primary);font-size:1rem;font-weight:700;font-family:inherit;cursor:pointer;
            transition:all .3s ease;display:flex;align-items:center;justify-content:center;gap:.5rem;}
        .btn-transfer:hover{transform:translateY(-2px);box-shadow:0 8px 25px rgba(0,212,170,0.3);}
        @keyframes fadeUp{from{opacity:0;transform:translateY(25px)}to{opacity:1;transform:translateY(0)}}
        @media(max-width:480px){.transfer-card{padding:2rem 1.5rem;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>
    <div class="transfer-wrapper">
        <a href="/dashboard" class="back-link">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
            Back to Dashboard
        </a>
        <div class="transfer-card">
            <div class="card-header">
                <div class="icon">&#128184;</div>
                <h2>Transfer Money</h2>
                <p>Send funds securely to any account</p>
            </div>

            <c:if test="${not empty message}">
                <div class="msg ${messageType eq 'success' ? 'msg-success' : 'msg-error'}">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/></svg>
                    ${message}
                </div>
            </c:if>

            <form action="/transferFunds" method="post">
                <div class="form-group">
                    <label for="senderAccount" class="form-label">From Account</label>
                    <input type="text" id="senderAccount" name="senderAccount"
                           value="${sessionScope.accountNumber}" class="form-input" readonly>
                </div>
                <div class="form-group">
                    <label for="receiverAccount" class="form-label">To Account</label>
                    <input type="text" id="receiverAccount" name="receiverAccount"
                           class="form-input" placeholder="Enter receiver's account number" required>
                </div>
                <div class="form-group">
                    <label for="amount" class="form-label">Amount (&#8377;)</label>
                    <input type="number" id="amount" name="amount" step="0.01" min="1"
                           class="form-input" placeholder="0.00" required>
                    <div class="amount-hint">Minimum transfer amount: &#8377;1.00</div>
                </div>
                <button type="submit" class="btn-transfer">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
                    Transfer Now
                </button>
            </form>
        </div>
    </div>
</body>
</html>
