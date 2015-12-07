void username(){ // function for making the page that a user can input there name. This will then greet them on the menu page and be used for scoreboard.
  
  //int trooperxposition = 0;
  
  
  
  
  fill(255);
  rect(75,200,300,75,7);
  textFont(funky);
  textSize(16);
  text("Please type your trooper name....",120,100);
  rect(275,300,50,50,7);
  fill(0);
  text(username,80,230); //display text stored in the string variable called username
  image(arrow,278,308);
  image(startrooper,trooperxposition,20);
  
  if(trooperxposition < 30){ //if the position of the trooper is less than 30 px do the following = 
    
    trooperxposition = trooperxposition + 1; // add 1 to the position to give the illusion of the trooper moving
    
  }
  
  
}