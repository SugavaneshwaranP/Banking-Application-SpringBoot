<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Dashboard</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f8f9fa;
            color: #333;
            margin: 0;
            padding: 0;
        }

        h1, h2 {
            color: #007bff;
            margin-bottom: 1rem;
        }

        h3 {
            color: #555;
        }

        /* Dashboard Container */
        .dashboard-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 1.5rem;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        /* Welcome Section */
        .welcome-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 2rem;
            background: #007bff;
            color: white;
            border-radius: 10px;
            margin-bottom: 2rem;
        }

        .welcome-section img {
            max-width: 200px;
        }

        /* Cards Section */
        .cards-container {
            display: flex;
            flex-wrap: wrap;
            gap: 1.5rem;
        }

        .card {
            flex: 1 1 calc(33.333% - 1rem);
            background: #f1f1f1;
            padding: 1rem;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.3s ease, background 0.3s ease;
        }

        .card:hover {
            background: #007bff;
            color: white;
            transform: translateY(-5px);
        }

        .card img {
            width: 50px;
            margin-bottom: 1rem;
        }

        .card h3 {
            margin-bottom: 0.5rem;
        }

        .card p {
            margin: 0.5rem 0;
        }

        /* Link Styles */
        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .cards-container {
                flex-direction: column;
            }

            .card {
                flex: 1 1 100%;
            }
        }
    </style>
</head>
<body>
    <div class="dashboard-container">
        <!-- Welcome Section -->
        <section class="welcome-section">
            <div>
                <h1>Welcome, ${customerName}!</h1>
                <p>We're here to help you manage your banking needs and discover new opportunities.</p>
            </div>
            <div>
                <img src="images/welcome-image.svg" alt="Welcome">
            </div>
        </section>

        <!-- Account Details Section -->
        <section>
            <h2>Account Overview</h2>
            <div class="cards-container">
                <div class="card">
                    <h3>Account Details</h3>
                    <p><strong>Account Number:</strong> ${accountNumber}</p>
                    <p><strong>Account Type:</strong> ${accountType}</p>
                    <p><strong>Balance:</strong> $${accountBalance}</p>
                </div>
                <div class="card">
                    <h3>Quick Stats</h3>
                    <p><strong>Total Transactions:</strong> 150</p>
                    <p><strong>Last Transaction:</strong> Jan 22, 2025</p>
                    <p><strong>Monthly Expenses:</strong> $2,800</p>
                </div>
            </div>
        </section>

        <!-- Money Transfer Section -->
        <section>
            <h2>Money Transfer</h2>
            <div class="cards-container">
                <a href="transferFunds" class="card">
                    <img src="images/transfer-icon.svg" alt="Transfer">
                    <h3>Transfer Money</h3>
                </a>
                <a href="/TransactionHistory" class="card">
                    <img src="images/history-icon.svg" alt="History">
                    <h3>Transfer History</h3>
                </a>
            </div>
        </section>

        <!-- Payment Methods Section -->
        <section>
            <h2>Payment Methods</h2>
            <div class="cards-container">
                <div class="card">
                    <h3>Saved Cards</h3>
                    <p>Visa ****1234</p>
                    <p>Mastercard ****5678</p>
                </div>
                <div class="card">
                    <h3>UPI Accounts</h3>
                    <p>yourname@bank</p>
                    <p>personalupi@bank</p>
                </div>
            </div>
        </section>

        <!-- Loans Section -->
        <section>
            <h2>Loans</h2>
            <div class="cards-container">
                <div class="card">
                    <h3>Personal Loan</h3>
                    <p>Interest Rate: 11%</p>
                    <p>Tenure: Up to 5 years</p>
                </div>
                <div class="card">
                    <h3>Home Loan</h3>
                    <p>Interest Rate: 7%</p>
                    <p>Tenure: Up to 30 years</p>
                </div>
                <div class="card">
                    <h3>Car Loan</h3>
                    <p>Interest Rate: 8.5%</p>
                    <p>Tenure: Up to 7 years</p>
                </div>
            </div>
        </section>

        <!-- Schemes Section -->
        <section>
            <h2>Special Schemes</h2>
            <div class="cards-container">
                <div class="card">
                    <h3>Fixed Deposit</h3>
                    <p>Earn up to 6.5% interest annually.</p>
                    <a href="fdDetails.jsp">View Details</a>
                </div>
                <div class="card">
                    <h3>Recurring Deposit</h3>
                    <p>Start saving systematically with flexible tenures.</p>
                    <a href="rdDetails.jsp">View Details</a>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
