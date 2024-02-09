<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>E-Survey.co</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<style>
 /******************************
Flexbox Layout
*******************************/

.header, .nav {
  display: -webkit-flex;
  display: flex;
  -webkit-flex-direction: column;
  flex-direction: column;
}

.header {
  justify-content: space-between;
}

.nav {
  -webkit-flex: 1;
  flex: 1;
  -webkit-justify-content: space-around;
  justify-content: space-around;
}

@media all and (min-width: 640px) {
  .header, .nav {
    -webkit-flex-direction: row;
    flex-direction: row;
  }
}

@media all and (min-width: 1030px) {
  .nav {
    -webkit-flex: none;
    flex: none;
  }
}


/******************************
Treehouse Styling
*******************************/

body {
  margin: 0;
  font-family: Helvetica;
  background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/25480/hero-img.jpg') top center no-repeat;
  background-size: cover;
}

.header {
  padding: 20px 0;
  margin: 0 auto;
}

.logo {
  background: transparent url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/25480/treehouse-white.svg') center center no-repeat;
  width: 195px;
  background-size: contain;
  text-indent: 100%;
  white-space: nowrap;
  overflow: hidden;
}

.nav {
  list-style: none;
}

.nav li {
  margin: 12px 0 12px 28px;
}

.nav li a {
  text-decoration: none;
  color: #fff;
  font-size: 12px;
  text-transform: uppercase;
}

.nav li a:hover {
  color: rgba(255,255,255,0.7);
}

.nav li:last-child a {
  background: rgba(255,255,255,0.3);
  border-radius: 2px;
  transition: 200ms ease-in-out;
  padding: 8px 16px 7px;
}

.nav li:last-child a:hover {
  background: rgba(255,255,255,0.5);
  color: #fff;
}

@media all and (min-width: 1030px) {
  .header {
    width: 1030px;
    min-width: 768px;
  }
}
</style>
<body>
<header class="header">
  <h1 style="color:white;">Survello</h1>
  <ul class="nav">
    <li><a href="survey">CreateSurvey</a></li>
    <li><a href="form1">Pricing</a></li>
    <li><a href="aboutus">aboutus</a></li>
    <li><a href="/surveys/dashboard">dashboard</a></li>
    <li><a href="contactus">contactus</a></li>
    <li><a href="Team">OurTeam</a></li>
    <li><a href="login">LogOut</a></li>
  </ul>
</header>
<body>
</html>