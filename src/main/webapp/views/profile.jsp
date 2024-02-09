
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer">
    <style>
        body {
            background-color: #c9d6ff;
            background: linear-gradient(to right, #e2e2e2, #c9d6ff);
            font-family: 'Montserrat', sans-serif;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            height: 100vh;
            margin: 0;
        }

        .profile-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            width: 400px;
            padding: 20px;
            text-align: center;
        }

        .profile-avatar {
            font-size: 48px;
            color: #512da8;
        }

        .profile-name {
            font-size: 24px;
            margin: 10px 0;
        }

        .profile-details {
            font-size: 16px;
            margin: 10px 0;
        }

        .profile-actions {
            margin-top: 20px;
        }

        .profile-actions a {
            text-decoration: none;
            background-color: #512da8;
            color: #fff;
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 5px;
            margin: 0 10px;
            transition: background-color 0.3s;
        }

        .profile-actions a:hover {
            background-color: #5c6bc0;
        }
    </style>
</head>
<body>
<div class="profile-container">
    <div class="profile-avatar">
        <i class="fas fa-user-circle"></i>
    </div>
    <div class="profile-name">${user.fname} ${user.lname}</div>
    <div class="profile-details">
        <p>Email: <span>${user.email}</span></p>
        <p>Mobile: <span>${user.mobile}</span></p>
    </div>
    <div class="profile-actions">
        <a href="#">Edit Profile</a>
        <a href="#">Change Password</a>
        <a href="#">Logout</a>
    </div>
</div>

</body>
</html>
