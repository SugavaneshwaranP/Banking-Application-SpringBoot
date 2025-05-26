<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #0072ff, #00c6ff);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            width: 350px;
        }

        .login-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .login-container label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: 0.3s;
        }

        .login-container input:focus {
            border-color: #0072ff;
            outline: none;
            box-shadow: 0 0 5px rgba(0, 114, 255, 0.5);
        }

        .login-container button {
            background: #0072ff;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: 0.3s;
        }

        .login-container button:hover {
            background: #005fcc;
        }

        .login-container .message {
            text-align: center;
            color: red;
            font-size: 14px;
        }

        /* Footer Section */
        .footer {
            margin-top: 10px;
            text-align: center;
            font-size: 12px;
            color: #777;
        }

        .footer a {
            color: #0072ff;
            text-decoration: none;
            font-weight: bold;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h1>Login</h1>

        <form action="login" method="post">
            <!-- Email Input -->
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required />

            <!-- PIN Input -->
            <label for="pin">6-Digit PIN:</label>
            <input type="password" id="pin" name="pin" placeholder="Enter your PIN" maxlength="6" required />

            <!-- Error Message -->
            <div class="message">
                <% if (request.getAttribute("error") != null)
				 { %>
                    <%= request.getAttribute("error") %>
                <% }
				 %>
            </div>

            <!-- Login Button -->
            <button type="submit">Login</button>
        </form>

        <!-- Registration Link -->
        <div class="footer">
            Don't have an account? <a href="register">Register here</a>
        </div>
    </div>
</body>
</html>
