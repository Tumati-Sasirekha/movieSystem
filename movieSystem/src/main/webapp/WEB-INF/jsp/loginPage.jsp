<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: white;
        }

        .login-wrapper {
            display: flex;
            width: 60%;
            height: 80vh;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .login-image {
            flex: 1;
            background: url('https://i.pinimg.com/736x/67/13/81/6713813ffa60c09afb28013bea53020a.jpg') no-repeat center center;
            background-size: 400px 400px;
        }

        .login-form {
            flex: 1;
            background-color: #fff4fa;
            padding: 30px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border-radius: 10px;
        }

        h3 {
            color: #800000;
            font-size: 24px;
            margin-bottom: 20px;
        }

        h2 a {
            color: #ff66b2;
            font-size: 16px;
            text-decoration: none;
        }

        h2 a:hover {
            color: #ff3385;
            text-decoration: underline;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ddd;
            background-color: #f4f4f9;
            font-size: 16px;
            color: #333;
            box-sizing: border-box;
            transition: border-color 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #f95a37;
        }

        input[type="submit"] {
            width: 100%;
            padding: 14px;
            background-color: #ff66b2;
            border: none;
            border-radius: 20px;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            margin-top: 20px;
            box-sizing: border-box;
        }

        input[type="submit"]:hover {
            background-color: #ff3385;
            transform: translateY(-2px);
        }

        input[type="submit"]:active {
            background-color: #ff1a6d;
            transform: translateY(0);
        }

        .password-wrapper {
            position: relative;
            width: 100%;
        }

        .password-wrapper input {
            padding-right: 40px;
        }

        .toggle-password {
            position: absolute;
            right: 10px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            width: 20px;
            height: 20px;
        }

        @media (max-width: 768px) {
            .login-wrapper {
                flex-direction: column;
                height: auto;
            }

            .login-image {
                height: 200px;
                background-size: cover;
            }

            .login-form {
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <!-- Left Side with Image -->
        <div class="login-image"></div>

        <!-- Right Side with Login Form -->
        <div class="login-form">
            <h3>User Login</h3>
            <form action="/login" method="post">
                <label for="username">Enter User ID:</label>
                <input type="text" id="username" name="username" />
                <br />
                <label for="password">Enter Password:</label>
                <div class="password-wrapper">
                    <input type="password" id="password" name="password" />
                    <img
                        src="https://cdn-icons-png.flaticon.com/512/565/565655.png"
                        alt="Show Password"
                        class="toggle-password"
                        id="togglePassword"
                    />
                </div>
                <br />
                <input type="submit" value="Submit" />
            </form>
            <h2>
                <a href="/register">Register for New User</a>
            </h2>
        </div>
    </div>

    <script>
        document.getElementById("togglePassword").addEventListener("click", function () {
            const passwordField = document.getElementById("password");
            const icon = this;

            if (passwordField.type === "password") {
                passwordField.type = "text";
                icon.src = "https://cdn-icons-png.flaticon.com/512/159/159604.png"; // Eye-slash icon
                icon.alt = "Hide Password";
            } else {
                passwordField.type = "password";
                icon.src = "https://cdn-icons-png.flaticon.com/512/565/565655.png"; // Eye icon
                icon.alt = "Show Password";
            }
        });
        
        
    </script>
</body>
</html>