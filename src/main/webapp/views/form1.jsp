<!DOCTYPE html> 
<html> 
<head> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<style> 
* { 
  box-sizing: border-box; 
} 
 
.columns { 
  float: left; 
  width: 33.3%; 
  padding: 8px; 
} 
 
.price { 
  list-style-type: none; 
  border: 1px solid #eee; 
  margin: 0; 
  padding: 0; 
  -webkit-transition: 0.3s; 
  transition: 0.3s; 
} 
 
.price:hover { 
  box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2) 
} 
 
.price .header { 
  background-color: #111; 
  color: white; 
  font-size: 25px; 
} 
 
.price li { 
  border-bottom: 1px solid #eee; 
  padding: 20px; 
  text-align: center; 
} 
 
.price .grey { 
  background-color: #eee; 
  font-size: 20px; 
} 
 
.button { 
  background-color: #04AA6D; 
  border: none; 
  color: white; 
  padding: 10px 25px; 
  text-align: center; 
  text-decoration: none; 
  font-size: 18px; 
} 
 
@media only screen and (max-width: 600px) { 
  .columns { 
    width: 100%; 
  } 
} 
</style> 
</head> 
<body> 
 
<h2 style="text-align:center">Our Pricing plans</h2> 
 
<div class="columns"> 
  <ul class="price"> 
    <li class="header">Basic</li> 
    <li class="grey">₹ 399 / year</li> 
    <li>Limited Surveys</li> 
     
    <li>Limited Options</li> 
    <li>Upto 2GB storage</li> 
    <li class="grey"><a href="#" class="button">Sign Up</a></li> 
  </ul> 
</div> 
 
<div class="columns"> 
  <ul class="price"> 
    <li class="header" style="background-color:#04AA6D">Pro</li> 
    <li class="grey">₹ 699 / year</li> 
    <li>Limited Surveys</li> 
    <li>Unlimited Options</li> 
    <li>Up to 5GB storage</li> 
    <li class="grey"><a href="#" class="button">Sign Up</a></li> 
  </ul> 
</div> 
 
<div class="columns"> 
  <ul class="price"> 
    <li class="header">Premium</li> 
    <li class="grey"> ₹ 999 / year</li> 
    <li>Unlimited Surveys</li> 
    <li>Unlimited Options</li> 
    <li>Upto 15GB storage</li> 
    <li class="grey"><a href="#" class="button">Sign Up</a></li> 
  </ul> 
</div> 
 
</body> 
</html>