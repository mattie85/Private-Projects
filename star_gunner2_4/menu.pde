void menu(){  // this function is used to draw up all the indiviual details of the menu section of the game. Using a function for this reduces the lines of code on the main game.
  
  textFont(funky); // use text font called funky
  fill(255);
  text("Welcome...........", 50,50);
  text(username,250,50); //display user name at the top of menu page
  
  fill(0);
  rect(50,100,150,200,7); //the 5th element of the rect gives the shape its curved edges. scoreboard box
  rect(300,100,150,200,7); //controls box
  rect(50,350,400,100,7); //play box
  fill(255);
  text("Play Game......",140,390);
  text("Score",80,200);
  text("Board",80,225);
  text("Controls",320,200);
  
  
  if (mouseX > 300 &&mouseX < 300+150 && mouseY > 100 && mouseY < 100 + 200 ){ //if mouse moves over this rectangle alter the following:
    fill(255);
    rect(300,100,150,200,7); //controls box turns to white
    fill(0);
    text("Controls",320,200); //controls text turns to black
      
    }

  if (mouseX > 50 &&mouseX < 50+150 && mouseY > 100 && mouseY < 100 + 200 ){ //if mouse moves over this rectangle alter the following:
    fill(255);
    rect(50,100,150,200,7); //scoreboard button turns to white
    fill(0);
    text("Score",80,200); //scoreboard text turns to black
    text("Board",80,225);
      
    }
  
  if (mouseX > 50 &&mouseX < 50+400 && mouseY > 350 && mouseY < 350 + 100 ){ //if mouse moves over this rectangle alter the following:
    fill(255);
    rect(50,350,400,100,7); //play box turns to white
    fill(0);
    text("Play Game......",140,390); //play game button turns to black
      
    }
  
  
}