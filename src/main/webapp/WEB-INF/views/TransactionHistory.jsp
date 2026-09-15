<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transaction History — XYZ Bank</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
    <style>
        :root {
            --bg-primary:#0a0e27;--bg-card:rgba(255,255,255,0.04);
            --glass-border:rgba(255,255,255,0.08);--accent-1:#00d4aa;--accent-2:#00b4d8;
            --text-primary:#fff;--text-secondary:#94a3b8;--text-muted:#64748b;
            --gradient-primary:linear-gradient(135deg,#00d4aa,#00b4d8);
            --radius:16px;--sent:#ef4444;--received:#22c55e;
        }
        *,*::before,*::after{margin:0;padding:0;box-sizing:border-box}
        body{font-family:'Inter',-apple-system,sans-serif;background:var(--bg-primary);color:var(--text-primary);min-height:100vh;}
        .bg-mesh{position:fixed;top:0;left:0;width:100%;height:100%;z-index:0;pointer-events:none;
            background:radial-gradient(ellipse 60% 50% at 50% 20%,rgba(0,212,170,0.06) 0%,transparent 60%),
            radial-gradient(ellipse 50% 50% at 80% 80%,rgba(124,58,237,0.05) 0%,transparent 60%);}
        .container{position:relative;z-index:1;max-width:900px;margin:0 auto;padding:2rem 1.5rem;animation:fadeUp .8s ease;}
        .back-link{display:inline-flex;align-items:center;gap:.4rem;color:var(--text-muted);
            text-decoration:none;font-size:.9rem;font-weight:500;margin-bottom:1.5rem;transition:color .3s;}
        .back-link:hover{color:var(--accent-1);}
        .page-header{text-align:center;margin-bottom:2.5rem;}
        .page-header h1{font-size:2rem;font-weight:800;margin-bottom:.4rem;}
        .page-header h1 .gradient{background:var(--gradient-primary);-webkit-background-clip:text;
            -webkit-text-fill-color:transparent;background-clip:text;}
        .page-header p{color:var(--text-muted);font-size:.95rem;}

        /* Table Card */
        .table-card{background:var(--bg-card);border:1px solid var(--glass-border);
            border-radius:var(--radius);overflow:hidden;backdrop-filter:blur(10px);}
        .table-wrap{overflow-x:auto;}
        table{width:100%;border-collapse:collapse;}
        thead th{padding:1rem 1.2rem;text-align:left;font-size:.75rem;font-weight:700;
            text-transform:uppercase;letter-spacing:.8px;color:var(--accent-1);
            background:rgba(0,0,0,0.3);border-bottom:1px solid var(--glass-border);}
        tbody tr{border-bottom:1px solid rgba(255,255,255,0.03);transition:background .2s ease;}
        tbody tr:hover{background:rgba(0,212,170,0.05);}
        tbody tr:last-child{border:none;}
        tbody td{padding:1rem 1.2rem;font-size:.9rem;color:var(--text-secondary);font-weight:500;}
        .badge{display:inline-flex;align-items:center;gap:.3rem;padding:.3rem .8rem;
            border-radius:50px;font-size:.75rem;font-weight:700;}
        .badge-sent{background:rgba(239,68,68,0.12);color:var(--sent);}
        .badge-received{background:rgba(34,197,94,0.12);color:var(--received);}
        .amount-cell{font-weight:700;font-family:'Inter',monospace;}
        .amount-sent{color:var(--sent);}
        .amount-received{color:var(--received);}

        /* Empty State */
        .empty-state{text-align:center;padding:4rem 2rem;}
        .empty-state .icon{font-size:3rem;margin-bottom:1rem;opacity:.5;}
        .empty-state h3{font-size:1.2rem;font-weight:700;margin-bottom:.5rem;}
        .empty-state p{color:var(--text-muted);font-size:.9rem;}
        .empty-state a{display:inline-flex;align-items:center;gap:.4rem;margin-top:1rem;
            color:var(--accent-1);text-decoration:none;font-weight:600;font-size:.9rem;}
        .empty-state a:hover{text-decoration:underline;}

        /* Footer */
        .footer{text-align:center;padding:2rem 1rem;color:var(--text-muted);font-size:.85rem;margin-top:2rem;
            border-top:1px solid var(--glass-border);}
        .footer .highlight{color:var(--accent-1);font-weight:600;}

        @keyframes fadeUp{from{opacity:0;transform:translateY(25px)}to{opacity:1;transform:translateY(0)}}
        @media(max-width:600px){.container{padding:1.5rem 1rem;} thead th,tbody td{padding:.8rem;font-size:.8rem;}}
    </style>
</head>
<body>
    <div class="bg-mesh"></div>
    <div class="container">
        <a href="/dashboard" class="back-link">
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M19 12H5M12 19l-7-7 7-7"/></svg>
            Back to Dashboard
        </a>

        <div class="page-header">
            <h1>Transaction <span class="gradient">History</span></h1>
            <p>Track all your transactions securely and transparently</p>
        </div>

        <div class="table-card">
            <c:choose>
                <c:when test="${not empty transactions}">
                    <div class="table-wrap">
                        <table>
                            <thead>
                                <tr>
                                    <th>Date & Time</th>
                                    <th>Type</th>
                                    <th>Sender</th>
                                    <th>Receiver</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="txn" items="${transactions}">
                                    <tr>
                                        <td>${txn.transactionDate}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${txn.senderAccount == accountNumber}">
                                                    <span class="badge badge-sent">&#8593; Sent</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="badge badge-received">&#8595; Received</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>${txn.senderAccount}</td>
                                        <td>${txn.receiverAccount}</td>
                                        <td class="amount-cell ${txn.senderAccount == accountNumber ? 'amount-sent' : 'amount-received'}">
                                            <c:choose>
                                                <c:when test="${txn.senderAccount == accountNumber}">-&#8377;${txn.amount}</c:when>
                                                <c:otherwise>+&#8377;${txn.amount}</c:otherwise>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="empty-state">
                        <div class="icon">&#128203;</div>
                        <h3>No Transactions Yet</h3>
                        <p>Your transaction history will appear here once you make your first transfer.</p>
                        <a href="/transferFunds">Make a Transfer &rarr;</a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>

        <div class="footer">
            &copy; 2025 <span class="highlight">XYZ Bank</span>. All Rights Reserved.
        </div>
    </div>
</body>
</html>
