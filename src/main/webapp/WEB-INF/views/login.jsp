<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
  
  <link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css">
  <script src="/bootstrap/js/bootstrap.bundle.min.js"></script>

  <style>
    /* Global Styles */
    body {
      margin: 0;
      padding: 0;
      height: 100vh;
      font-family: "Poppins", sans-serif;
      background: linear-gradient(-45deg, #0072ff, #00c6ff, #00ffcc, #0066ff);
      background-size: 400% 400%;
      animation: gradientBG 8s ease infinite;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    @keyframes gradientBG {
      0% {
        background-position: 0% 50%;
      }
      50% {
        background-position: 100% 50%;
      }
      100% {
        background-position: 0% 50%;
      }
    }

    /* Login Card */
    .login-container {
      background: rgba(255, 255, 255, 0.95);
      padding: 40px 35px;
      border-radius: 20px;
      width: 380px;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
      backdrop-filter: blur(10px);
      transition: all 0.4s ease;
      position: relative;
      overflow: hidden;
    }

    .login-container::before {
      content: "";
      position: absolute;
      top: -50%;
      left: -50%;
      width: 200%;
      height: 200%;
      background: radial-gradient(circle at center, rgba(0, 200, 255, 0.2), transparent 60%);
      animation: rotateGlow 8s linear infinite;
      z-index: 0;
    }

    @keyframes rotateGlow {
      from {
        transform: rotate(0deg);
      }
      to {
        transform: rotate(360deg);
      }
    }

    .login-container:hover {
      transform: translateY(-5px);
      box-shadow: 0 15px 40px rgba(0, 123, 255, 0.3);
    }

    .login-container h1 {
      text-align: center;
      margin-bottom: 25px;
      color: #0072ff;
      font-size: 28px;
      font-weight: 700;
      position: relative;
      z-index: 1;
    }

    label {
      display: block;
      margin-bottom: 8px;
      font-weight: 600;
      color: #333;
      position: relative;
      z-index: 1;
    }

    input {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 2px solid #e0e0e0;
      border-radius: 8px;
      font-size: 15px;
      outline: none;
      transition: all 0.3s ease;
      position: relative;
      z-index: 1;
    }

    input:focus {
      border-color: #00b3ff;
      box-shadow: 0 0 10px rgba(0, 179, 255, 0.4);
      transform: scale(1.02);
    }

    button {
      width: 100%;
      padding: 12px;
      background: linear-gradient(90deg, #0072ff, #00c6ff);
      color: white;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      font-weight: bold;
      cursor: pointer;
      transition: all 0.3s ease;
      position: relative;
      z-index: 1;
    }

    button:hover {
      background: linear-gradient(90deg, #00b3ff, #0072ff);
      transform: scale(1.05);
      box-shadow: 0 5px 15px rgba(0, 114, 255, 0.3);
    }

    /* Error Message */
    .message {
      text-align: center;
      color: #e63946;
      font-weight: bold;
      font-size: 14px;
      margin-bottom: 10px;
      position: relative;
      z-index: 1;
      animation: fadeIn 1s ease;
    }

    @keyframes fadeIn {
      from {
        opacity: 0;
        transform: translateY(-10px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    /* Footer */
    .footer {
      text-align: center;
      font-size: 13px;
      color: #555;
      margin-top: 15px;
      position: relative;
      z-index: 1;
    }

    .footer a {
      color: #0072ff;
      text-decoration: none;
      font-weight: 600;
    }

    .footer a:hover {
      text-decoration: underline;
      color: #00c6ff;
    }
  </style>
</head>

<body>
  <div class="login-container">
    <h1>Customer Login</h1>

    <form action="login" method="post">
      <!-- Email Input -->
      <label for="email">Email Address</label>
      <input
        type="email"
        id="email"
        name="email"
        placeholder="Enter your email"
        required
      />

      <!-- PIN Input -->
      <label for="pin">6-Digit PIN</label>
      <input
        type="password"
        id="pin"
        name="pin"
        placeholder="Enter your secure PIN"
        maxlength="6"
        required
      />

      <!-- Error Message -->
      <div class="message">
        <% if (request.getAttribute("error") != null) { %>
        <%= request.getAttribute("error") %>
        <% } %>
      </div>

      <!-- Login Button -->
      <button type="submit">Login</button>
    </form>

    <!-- Registration Link -->
    <div class="footer">
      Don't have an account?
      <a href="register">Register here</a>
    </div>
  </div>
</body>
</html>
