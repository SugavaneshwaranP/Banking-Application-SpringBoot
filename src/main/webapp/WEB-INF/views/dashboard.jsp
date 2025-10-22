<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Customer Dashboard</title>
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

  
  <style>
    /* Global Styles */
    body {
      font-family: "Poppins", sans-serif;
      background: linear-gradient(135deg, #e3f2fd, #f8f9fa);
      color: #222;
      margin: 0;
      padding: 0;
      animation: fadeIn 1.2s ease-in;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    h1, h2 {
      color: #1a73e8;
    }

    h3 {
      color: #333;
      margin-bottom: 0.5rem;
    }

    /* Dashboard Container */
    .dashboard-container {
      max-width: 1250px;
      margin: 2rem auto;
      padding: 2rem;
      background: #ffffffb7;
      border-radius: 16px;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
      backdrop-filter: blur(8px);
    }

    /* Welcome Section */
    .welcome-section {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 2rem;
      background: linear-gradient(90deg, #007bff, #00bcd4);
      color: white;
      border-radius: 15px;
      box-shadow: 0 6px 15px rgba(0, 123, 255, 0.3);
      margin-bottom: 2.5rem;
      transition: transform 0.3s ease;
    }

    .welcome-section:hover {
      transform: scale(1.02);
    }

    .welcome-section img {
      max-width: 220px;
      animation: float 3s ease-in-out infinite;
    }

    @keyframes float {
      0%, 100% {
        transform: translateY(0);
      }
      50% {
        transform: translateY(-8px);
      }
    }

    /* Cards Section */
    .cards-container {
      display: flex;
      flex-wrap: wrap;
      gap: 1.5rem;
    }

    .card {
      flex: 1 1 calc(33.333% - 1rem);
      background: linear-gradient(145deg, #ffffff, #f0f0f0);
      padding: 1.5rem;
      border-radius: 15px;
      box-shadow: 0 6px 15px rgba(0, 0, 0, 0.1);
      text-align: center;
      transition: all 0.3s ease;
      cursor: pointer;
      position: relative;
      overflow: hidden;
    }

    .card::before {
      content: "";
      position: absolute;
      top: 0;
      left: -100%;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, rgba(0, 123, 255, 0.2), rgba(0, 188, 212, 0.2));
      transition: all 0.4s ease;
    }

    .card:hover::before {
      left: 100%;
    }

    .card:hover {
      transform: translateY(-8px);
      background: linear-gradient(145deg, #007bff, #00bcd4);
      color: white;
      box-shadow: 0 10px 20px rgba(0, 123, 255, 0.3);
    }

    .card img {
      width: 55px;
      margin-bottom: 1rem;
      transition: transform 0.3s ease;
    }

    .card:hover img {
      transform: scale(1.2);
    }

    /* Link Styles */
    a {
      color: inherit;
      text-decoration: none;
      font-weight: 600;
    }

    a:hover {
      text-decoration: underline;
    }

    /* Section Titles */
    section {
      margin-bottom: 2rem;
    }

    section h2 {
      margin-bottom: 1rem;
      border-left: 5px solid #007bff;
      padding-left: 10px;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 1px;
    }

    /* Responsive Design */
    @media (max-width: 900px) {
      .cards-container {
        flex-direction: column;
      }

      .card {
        flex: 1 1 100%;
      }

      .welcome-section {
        flex-direction: column;
        text-align: center;
      }

      .welcome-section img {
        margin-top: 1rem;
      }
    }
  </style>
</head>
<body>
  <div class="dashboard-container">
    <!-- Welcome Section -->
    <section class="welcome-section">
      <div>
        <h1>Welcome, ${customerName} 👋</h1>
        <p>Manage your finances smartly and explore personalized opportunities.</p>
      </div>
      <div>
        <img src="images/welcome-image.svg" alt="Welcome" />
      </div>
    </section>

    <!-- Account Overview -->
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

    <!-- Money Transfer -->
    <section>
      <h2>Money Transfer</h2>
      <div class="cards-container">
        <a href="transferFunds" class="card">
          <img src="images/transfer-icon.svg" alt="Transfer" />
          <h3>Transfer Money</h3>
        </a>
        <a href="/TransactionHistory" class="card">
          <img src="images/history-icon.svg" alt="History" />
          <h3>Transfer History</h3>
        </a>
      </div>
    </section>

    <!-- Payment Methods -->
    <section>
      <h2>Payment Methods</h2>
      <div class="cards-container">
        <div class="card">
          <h3>Saved Cards</h3>
          <p>💳 Visa ****1234</p>
          <p>💳 Mastercard ****5678</p>
        </div>
        <div class="card">
          <h3>UPI Accounts</h3>
          <p>📱 yourname@bank</p>
          <p>📱 personalupi@bank</p>
        </div>
      </div>
    </section>

    <!-- Loans -->
    <section>
      <h2>Loans</h2>
      <div class="cards-container">
        <div class="card">
          <h3>Personal Loan</h3>
          <p>💰 Interest Rate: 11%</p>
          <p>⏱ Tenure: Up to 5 years</p>
        </div>
        <div class="card">
          <h3>Home Loan</h3>
          <p>🏠 Interest Rate: 7%</p>
          <p>⏱ Tenure: Up to 30 years</p>
        </div>
        <div class="card">
          <h3>Car Loan</h3>
          <p>🚗 Interest Rate: 8.5%</p>
          <p>⏱ Tenure: Up to 7 years</p>
        </div>
      </div>
    </section>

    <!-- Schemes -->
    <section>
      <h2>Special Schemes</h2>
      <div class="cards-container">
        <div class="card">
          <h3>Fixed Deposit</h3>
          <p>💎 Earn up to 6.5% interest annually.</p>
          <a href="fdDetails.jsp">View Details ➜</a>
        </div>
        <div class="card">
          <h3>Recurring Deposit</h3>
          <p>📈 Save systematically with flexible tenures.</p>
          <a href="rdDetails.jsp">View Details ➜</a>
        </div>
      </div>
    </section>
  </div>
</body>
</html>
