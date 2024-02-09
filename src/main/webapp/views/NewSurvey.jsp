<body>
    <div class="intro">
      <h1 id="title">University survey <i class="fa fa-university"></i></h1>
      <style>
      *{
font-family: 'Bricolage Grotesque', sans-serif;
padding: 0;
margin: 0;
box-sizing: border-box;

}
body{
  background-color:#101b3b;
  color:white;

}

#title, #description{
  text-align: center;
}

#survey-form{
  margin: 0 auto;
  max-width: 65%;
  min-width: 55%;

}
hr{
  max-width:67%;
  min-width:100%;
  margin: 10px 0 10px 0;
}

input, select{
  width: 100%;
  margin: 1% 0;
}

input[type="radio"]{
  width: auto;
  margin: auto 0;
}

.radio-button{
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: 0.6% 0;

}

input[type="checkbox"]{
  width: auto;
  margin: auto 0;
}

.checkbox{
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin: 0.5% 0;
}

textarea{
  margin: 1% 0;
  width: 100%;
}

#submit{
  margin-top: 5%;
  border-radius: 5px;
  font-size: 1.3rem;
  width: 100%;
  margin-bottom: 5%;

}
      </style>
      <p id="description"> This survey help us to understand how do you feel about university </p>
   </div> 
   <hr/>
    <form action="/" id="survey-form">
      <label id="name-label" for="name">Name <i class="fa fa-id-card" aria-hidden="true"></i> * <input type="text" required id="name" placeholder="Enter your name" /></label> 
      <label id="email-label" for="email"> Email <i class="fa fa-envelope"> *</i><input required id="email" placeholder="Enter your email" type="email"/></label> 
    <label id="number-label" for="number"> Age <i class="fa fa-hourglass"></i>  <input id="number"placeholder="Enter your age (optional)" type="number" min="15" max="120"/></label> Which of these courses describes best yours? <i class="fa fa-graduation-cap"></i>
      <select id="dropdown">
        <option>Accounting & Finance</option>
        <option>Art & Design</option>
        <option>Law</option>
        <option>Economics</option>
        <option>Medicine</option>
        <option>Engineering & Technology</option>
        <option>Architecture</option>
        <option>Other</option>
      </select> 
           <label>Write something about yourself, and your university life *
        </label> 
        <textarea required></textarea>
      <label>How did you find this survey?</label>
      <div class="radio-button">
        <label><input value="easy-hard" name="easy-hard" type="radio" /> A friend suggests me to do this survey</label>
        <label><input value="easy-hard" name="easy-hard" type="radio" /> Directly searching the survey</label>
        <label><input value="easy-hard" name="easy-hard" type="radio" /> Other</label>
      </div>

      <label>How can we improve it?</label> 
      <div class="checkbox">
        <label> <input type="checkbox" value="more-option"/> Too many useless questions </label>
        <label><input type="checkbox" value="more-available"/> More relevant questions to answer</label>
        <label>Write more about the improvment that we can make <textarea></textarea></label>
        </div> 
 
      <input id="submit" type="submit" value="Submit"/>
    </form>
 </body>
