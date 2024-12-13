<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Movie Booking System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        :root {
            --primary-color: #ff6b98;
            --secondary-color: #ff9eb7;
            --background-color: #f9e0e6;
            --text-color-dark: #333;
            --text-color-light: #fff;
            --transition-speed: 0.3s;
            --border-radius: 12px;
        }

        body {
            font-family: 'Inter', 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
            background-image: url("https://img.freepik.com/free-photo/composition-cinema-elements-pink-background-with-copy-space_23-2148416788.jpg?t=st=1733749319~exp=1733752919~hmac=0be0582c1d7ed3735cec02866cf2505b19d65d26bbb9cc9208cb7af7363d3031&w=996");
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            min-height: 100vh; 
            padding: 2rem;
        }

        .container {
            position: relative;
            display: flex;
            flex-direction: column;
        }

        h1 {
            font-size: 2.5rem;
            color: var(--text-color-dark);
            margin-bottom: 2rem;
            text-align: center;
            font-weight: 700;
            position: relative;
        }

        h1::after {
            content: '';
            width: 100px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            margin: 1rem auto;
            border-radius: 2px;
        }

        .navbar {
            background-color: var(--text-color-light);
            display: flex;
            justify-content: space-around;
            align-items: center;
            padding: 0.75rem 1.5rem;
            gap: 1rem;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
            flex-wrap: wrap;
            width: 100%;
            margin-bottom: 2rem;
        }

        .dropdown {
            position: relative;
        }

        .dropbtn {
            background: transparent;
            border: none;
            padding: 1rem 1.5rem;
            font-size: 1rem;
            color: var(--text-color-dark);
            cursor: pointer;
            font-weight: 500;
            border-radius: var(--border-radius);
            transition: all var(--transition-speed) ease;
            position: relative;
            outline: none;
        }

        .dropdown-content {
            position: absolute;
            top: 100%;
            left: 50%;
            transform: translateX(-50%) translateY(10px);
            min-width: 220px;
            background: var(--text-color-light);
            border-radius: var(--border-radius);
            padding: 0.75rem;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
            opacity: 0;
            visibility: hidden;
            transition: all var(--transition-speed) ease;
            z-index: 100;
        }

        .dropdown:hover .dropdown-content {
            opacity: 1;
            visibility: visible;
            transform: translateX(-50%) translateY(0);
        }

        .dropdown-content a {
            color: var(--text-color-dark);
            padding: 0.75rem 1.25rem;
            text-decoration: none;
            display: block;
            border-radius: calc(var(--border-radius) * 0.75);
            transition: all var(--transition-speed) ease;
            font-size: 0.95rem;
        }

        .navbar > a {
            text-decoration: none;
            padding: 1rem 2rem;
            color: var(--text-color-light);
            background: var(--primary-color);
            border-radius: var(--border-radius);
            font-weight: 500;
            transition: all var(--transition-speed) ease;
            font-size: 1rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }

        .navbar > a:hover {
            background: color-mix(in srgb, var(--primary-color) 90%, white);
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(255, 107, 152, 0.4);
        }

        .right-containers {
            position: absolute;
            right: 2rem;
            top: calc(100% + 2rem);
            display: flex;
            flex-direction: column;
            gap: 1rem;
            width: 400px;
        }
		
		        .container-box {
		    background-color: #FAD1D1; /* Light pink background */
		    padding: 2rem;  /* More padding */
		    padding-top: 2rem;  /* Adjust top padding to add space above the buttons */
		    border-radius: var(--border-radius);
		    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.1);
		}
        

        .quick-action-btn {
            display: block;
            width: 100%;
            padding: 0.75rem;
            margin-bottom: 0.5rem;
            margin-top: 1rem;
            background-color: var(--primary-color);
            color: var(--text-color-light);
            text-decoration: none;
            text-align: center;
            border-radius: var(--border-radius);
            transition: all var(--transition-speed) ease;
        }

        .quick-action-btn:hover {
            background-color: var(--secondary-color);
            transform: translateY(-3px);
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 1rem;
                gap: 0.75rem;
            }

            .dropdown, .navbar > a {
                width: 100%;
            }

            .dropbtn, .navbar > a {
                text-align: center;
            }

            .dropdown-content {
                width: 95%;
                position: relative;
                transform: none;
                left: 0;
                margin: 0.5rem auto;
            }

            .dropdown:hover .dropdown-content {
                transform: none;
            }

            h1 {
                font-size: 2rem;
            }

            .right-containers {
                position: static;
                width: 100%;
                max-width: 400px;
                margin: 2rem auto;
            }
        }

        @keyframes float {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        .navbar > a:nth-child(1) { animation-delay: 0.1s; }
        .navbar > a:nth-child(2) { animation-delay: 0.2s; }
        .dropbtn { animation-delay: 0.3s; }

        ::-webkit-scrollbar {
            width: 10px;
        }

        ::-webkit-scrollbar-track {
            background: #fff0f4;
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb {
            background: var(--secondary-color);
            border-radius: 5px;
        }

        ::-webkit-scrollbar-thumb:hover {
            background: var(--primary-color);
        }
    </style>
</head>
<body>
     <div align="center">
        <h1>Welcome To Online Movie Booking System</h1>
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">Movie Management</button>
                <div class="dropdown-content">
                    <a href="/movieReport">Movie List</a>
                    <a href="/showTimeReport">Showtime List</a>
                </div>
            </div>

            <div class="dropdown">
                <button class="dropbtn">Booking Management</button>
                <div class="dropdown-content">
                    <a href="/movieReportLanguage">New Booking</a>
                    <!--<a href="/cancelTicket">Cancellation</a>-->
                    <a href="${pageContext.request.contextPath}/movieBookingCancellationPage">Cancellation</a>
                    
                </div>
            </div>
            
            <a href="/logout">Logout</a>
        </div>
    </div>
</body>
</html>