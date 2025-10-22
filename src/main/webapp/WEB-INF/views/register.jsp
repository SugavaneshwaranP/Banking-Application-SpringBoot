<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Bank Registration</title>
  
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

  <style>
    /* Body background with animated gradient */
    body {
      font-family: 'Poppins', sans-serif;
      margin: 0;
      padding: 0;
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
      background: linear-gradient(135deg, #6a11cb, #2575fc, #00c6ff, #f72585);
      background-size: 400% 400%;
      animation: gradientShift 10s ease infinite;
    }

    @keyframes gradientShift {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    /* Glassmorphic container */
    .container {
      width: 100%;
      max-width: 480px;
      background: rgba(255, 255, 255, 0.15);
      border-radius: 20px;
      backdrop-filter: blur(15px);
      -webkit-backdrop-filter: blur(15px);
      box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
      padding: 40px;
      color: #fff;
      animation: fadeIn 1.2s ease-in-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .container h1 {
      text-align: center;
      margin-bottom: 25px;
      font-size: 28px;
      background: linear-gradient(90deg, #00f5a0, #00d9f5);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
    }

    .form-group {
      margin-bottom: 18px;
      position: relative;
    }

    .form-group label {
      display: block;
      font-weight: 600;
      margin-bottom: 6px;
      color: #e0e0e0;
    }

    .form-group input {
      width: 100%;
      padding: 12px 15px;
      border: none;
      border-radius: 10px;
      background: rgba(255, 255, 255, 0.2);
      color: #fff;
      font-size: 15px;
      transition: 0.3s ease;
      outline: none;
    }

    .form-group input:focus {
      background: rgba(255, 255, 255, 0.35);
      box-shadow: 0 0 10px rgba(0, 255, 255, 0.7);
    }

    /* Button with neon hover effect */
    .btn {
      width: 100%;
      padding: 14px;
      border: none;
      border-radius: 10px;
      background: linear-gradient(135deg, #00f5a0, #00d9f5);
      font-size: 16px;
      font-weight: 700;
      color: #000;
      cursor: pointer;
      letter-spacing: 1px;
      transition: all 0.3s ease;
    }

    .btn:hover {
      transform: scale(1.05);
      box-shadow: 0 0 15px rgba(0, 255, 255, 0.9);
    }

    .form-footer {
      text-align: center;
      margin-top: 20px;
      font-size: 14px;
      color: #f1f1f1;
    }

    .form-footer a {
      color: #00f5a0;
      font-weight: 600;
      text-decoration: none;
      transition: 0.3s ease;
    }

    .form-footer a:hover {
      text-decoration: underline;
      color: #00d9f5;
    }

    /* Floating glow around the container */
    .container::before {
      content: "";
      position: absolute;
      width: 150px;
      height: 150px;
      background: radial-gradient(circle, rgba(255,255,255,0.3) 0%, transparent 70%);
      top: -40px;
      right: -40px;
      border-radius: 50%;
      animation: pulse 5s infinite alternate;
    }

    @keyframes pulse {
      0% { transform: scale(1); opacity: 0.7; }
      100% { transform: scale(1.2); opacity: 1; }
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Register Your Bank Account</h1>
    <form action="register" method="post">
      <div class="form-group">
        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" placeholder="Enter your full name" required />
      </div>

      <div class="form-group">
        <label for="email">Email</label>
        <input type="email" id="email" name="email" placeholder="Enter your email" required />
      </div>

      <div class="form-group">
        <label for="mobile">Mobile Number</label>
        <input type="text" id="mobile" name="mobile" placeholder="Enter your 10-digit number" pattern="\d{10}" required />
      </div>

      <div class="form-group">
        <label for="accountNumber">Account Number</label>
        <input type="text" id="accountNumber" name="accountNumber" placeholder="Enter your account number" pattern="\d{10,16}" required />
      </div>

      <div class="form-group">
        <label for="pin">6-Digit PIN</label>
        <input type="password" id="pin" name="pin" placeholder="Enter a 6-digit PIN" pattern="\d{6}" required />
      </div>

      <div class="form-group">
        <label for="branch">Branch Name</label>
        <input type="text" id="branch" name="branch" placeholder="Enter your branch name" required />
      </div>

      <button type="submit" class="btn">Register</button>
    </form>

    <div class="form-footer">
      Already have an account? <a href="/login">Login here</a>.
    </div>
  </div>
</body>
</html>
