<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="Currents" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Currents Symposium</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: 'Roboto', sans-serif;
            color: #fff;
            background-color: #000;
            overflow-x: hidden;
        }

        header {
            background: url('https://wallpapers.com/images/hd/motherboard-2560-x-1600-background-hlxfljruu4rqb4uq.jpg') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 5%;
            position: relative;
            transition: background-position 0.3s ease-out;
            animation: slideIn 2s ease-in-out;
        }

        header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            z-index: 1;
        }

        @keyframes slideIn {
            0% { transform: translateY(-100%); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }

        .content-left {
            position: relative;
            z-index: 2;
            max-width: 50%;
        }

        .content-left h1 {
            font-size: 5rem;
            font-weight: bold;
            letter-spacing: 5px;
            text-transform: uppercase;
            margin-bottom: 20px;
            text-shadow: 4px 4px 10px rgba(0, 0, 0, 0.8);
            animation: fadeIn 2s ease-in-out;
        }

        .content-left p {
            font-size: 1.4rem;
            font-weight: 300;
            margin-bottom: 30px;
            line-height: 1.8;
            opacity: 0;
            animation: fadeIn 2s ease-in-out 1s forwards;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .btn-primary {
            display: inline-block;
            padding: 15px 40px;
            background: linear-gradient(90deg, #00c6ff, #007bbf);
            color: white;
            font-weight: bold;
            text-transform: uppercase;
            text-decoration: none;
            border-radius: 50px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background: linear-gradient(90deg, #007bbf, #00c6ff);
            transform: scale(1.1);
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.5);
        }

        .schedule-container {
            position: relative;
            z-index: 2;
            max-width: 40%;
            padding: 20px 30px;
            background: rgba(0, 0, 0, 0.7);
            border-radius: 15px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.4);
        }

        .schedule-container h2 {
            font-size: 2.5rem;
            margin-bottom: 15px;
            font-weight: bold;
            text-transform: uppercase;
            color: #00c6ff;
        }

        .schedule-container ul {
            list-style: none;
        }

        .schedule-container li {
            font-size: 1.2rem;
            margin-bottom: 15px;
            padding: 10px;
            background: #111;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .schedule-container li:hover {
            background: #222;
            transform: scale(1.05);
            color: #00c6ff;
        }

        .footer {
            background: linear-gradient(90deg, #222, #111);
            text-align: center;
            padding: 20px;
            color: #fff;
            font-size: 1rem;
            margin-top: 50px;
        }

        @media (max-width: 768px) {
            header {
                flex-direction: column;
                height: auto;
                justify-content: center;
                padding: 50px 0;
            }

            .content-left {
                max-width: 100%;
                text-align: center;
                margin-bottom: 30px;
            }

            .schedule-container {
                max-width: 90%;
                margin: auto;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="content-left">
            <h1>CURRENTS</h1>
            <p>Welcome to Currents! The National Level Technical Symposium of The Electrical and Electronics Engineering (EEE) Department of NIT Trichy. Join us for new innovations, learning, and networking!</p>
            <a href="#schedule" class="btn-primary">Explore Schedule</a>
        </div>
        <div class="schedule-container" id="schedule">
            <h2>Workshops</h2>
            <ul>
                <li>Stay tuned to this website for further details!!!!</li>
            </ul>
        </div>
    </header>

    <footer class="footer">
        <p>&copy; 2024 Currents Symposium | Department of Electrical and Electronics Engineering</p>
    </footer>

    <script>
        window.addEventListener('scroll', function () {
            let scrollPosition = window.pageYOffset;
            document.querySelector('header').style.backgroundPosition = 'center ' + (scrollPosition * 0.5) + 'px';
        });

        document.querySelector('.btn-primary').addEventListener('click', function (e) {
            e.preventDefault();
            document.querySelector('#schedule').scrollIntoView({ behavior: 'smooth' });
        });
    </script>
</body>
</html>

