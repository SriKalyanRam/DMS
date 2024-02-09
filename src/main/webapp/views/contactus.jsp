<!DOCTYPE html>
<html>
<head>
    <title>Survey Dashboard</title>
    <style>
        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #04AA6D;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <form id="surveyForm" action="/insertuser/contact" method="post">
            <label for="fname">First Name</label>
            <input type="text" id="fname" name="firstname" placeholder="Your name..">

            <label for="lname">Last Name</label>
            <input type="text" id="lname" name="lastname" placeholder="Your last name..">

            <label for="country">Country</label>
            <input type="text" id="country" name="cntname" placeholder="Your country name..">

            <label for="subject">Subject</label>
            <textarea id="subject" name="sub" placeholder="Write something.." style="height:200px"></textarea>

            <input type="submit" value="Submit">
        </form>

        
        
    </div>
</body>
</html>
