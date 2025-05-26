<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Registration</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(135deg, #6a11cb, #2575fc);
            color: #333;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #2575fc;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

        .form-group input:focus {
            outline: none;
            border-color: #2575fc;
            box-shadow: 0 0 5px rgba(37, 117, 252, 0.5);
        }

        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            font-size: 16px;
            font-weight: bold;
            color: #fff;
            background: #2575fc;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-align: center;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #6a11cb;
        }

        .form-footer {
            margin-top: 20px;
            text-align: center;
            font-size: 14px;
        }

        .form-footer a {
            color: #2575fc;
            text-decoration: none;
        }

        .form-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register Your Account</h1>
        <form action="register" method="post">
            <!-- User Name -->
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your full name" required>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email address" required>
            </div>

            <!-- Mobile Number -->
            <div class="form-group">
                <label for="mobile">Mobile Number</label>
                <input type="text" id="mobile" name="mobile" placeholder="Enter your mobile number" pattern="\d{10}" required>
            </div>

            <!-- Account Number -->
            <div class="form-group">
                <label for="accountNumber">Account Number</label>
                <input type="text" id="accountNumber" name="accountNumber" placeholder="Enter your account number" pattern="\d{10,16}" required>
            </div>

            <!-- PIN -->
            <div class="form-group">
                <label for="pin">6-Digit PIN</label>
                <input type="password" id="pin" name="pin" placeholder="Enter a 6-digit PIN" pattern="\d{6}" required>
            </div>

            <!-- Branch Name -->
            <div class="form-group">
                <label for="branch">Branch Name</label>
                <input type="text" id="branch" name="branch" placeholder="Enter your branch name" required>
            </div>

            <!-- Submit Button -->
            <button type="submit" class="btn">Register</button>
        </form>

        <!-- Footer -->
        <div class="form-footer">
            Already have an account? <a href="/login">Login here</a>.
        </div>
    </div>
</body>
</html>
