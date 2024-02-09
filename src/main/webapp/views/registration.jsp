<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(180deg, #051937, #001324, #000c1b);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            animation: galaxy 20s linear infinite;
        }

        @keyframes galaxy {
            0% { background-color: #000c1b; }
            25% { background-color: #000529; }
            50% { background-color: #051937; }
            75% { background-color: #000529; }
            100% { background-color: #000c1b; }
        }

        .registration-container {
            display: flex;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 800px;
        }

        .left-content {
            flex: 1;
            padding: 5px;
            text-align: center;
            background: url('https://img.freepik.com/free-vector/app-development-concept-with-flat-design_23-2147857787.jpg') center/cover;
        }

        .left-content h1 {
            color: #fff;
        }

        .right-content {
            flex: 1;
            padding: 30px;
            text-align: center;
        }

        h1 {
            color: #007BFF;
        }

        .input-group {
            margin-bottom: 20px;
        }

        .input-group label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            color: #333;
        }

        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 4px;
            padding: 10px 20px;
            cursor: pointer;
            font-weight: bold;
        }

        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="registration-container">
        <div class="left-content">
            <h1>Welcome</h1>
        </div>
        <div class="right-content">
            <h1>Registration</h1>
            <form action="#" method="post">
                <div class="input-group">
                    <label for="first-name">First Name:</label>
                    <input type="text" id="first-name" name="first-name" required>
                </div>
                
                <div class="input-group">
                    <label for="last-name">Last Name:</label>
                    <input type="text" id="last-name" name="last-name" required>
                </div>
                <div class="input-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" required>
                </div>
                
                <div class="input-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <!-- Add more input fields here -->
                <button type="submit" class="btn">Register</button>
            </form>
        </div>
    </div>
</body>
</html>
