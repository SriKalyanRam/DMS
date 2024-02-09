<!DOCTYPE html>
<html>
<head>
<title>E-Survey</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body, html {
    height: 100%;
}

.bgimg {
    /* Background image */
    background-image: url('https://www.w3schools.com/w3images/forestbridge.jpg');
    /* Full-screen */
    height: 100%;
    /* Center the background image */
    background-position: center;
    /* Scale and zoom in the image */
    background-size: cover;
    /* Add position: relative to enable absolutely positioned elements inside the image (place text) */
    position: relative;
    /* Add a white text color to all elements inside the .bgimg container */
    color: white;
    /* Add a font */
    font-family: "Courier New", Courier, monospace;
    /* Set the font-size to 25 pixels */
    font-size: 25px;
}

/* Position text in the top-left corner */
.topleft {
    position: absolute;
    top: 0;
    left: 16px;
}

/* Position text in the bottom-left corner */
.bottomleft {
    position: absolute;
    bottom: 0;
    left: 16px;
}

/* Position text in the middle */
.middle {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
}

/* Style the <hr> element */
hr {
    margin: auto;
    width: 40%;
}

/* Style for the "Sign In" button */
.signin-button {
    position: absolute;
    top: 2px;
    right: 2px;
    margin: 2px;
    padding:18px;
    
}
</style>
</head>
<body>

<div class="bgimg">
  <div class="topleft">
    <p>Survello</p>
  </div>
  <div class="middle">
    <h1>E-Survey Web Application</h1>
    <h6>Experience the future of data collection and analysis with our innovative e-survey web application, simplifying your research and insights like never before.</h6>
    <hr>
  </div>
  <div class="bottomleft">
    
  </div>
  <div class="signin-button">
   <a href="login" style="text-decoration: none;">Login</a>
  </div>
</div>

</body>
</html>
