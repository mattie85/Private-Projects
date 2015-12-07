// In this version a username page was added were a user can input their name into the game

import ddf.minim.*; // import minim library to play music

Minim minim; //set memoery space for minim
AudioPlayer player; //set memory space for player

float[] x = new float[25]; // create an array called x that contains 25 places
float[] y = new float[25]; // create an array called y that contains 25 places
float[] speed = new float[25]; // create an array called speed that contains 25 places
PImage stargunner; //create a memory space called stargunner
PImage planet;//create memory spaces for image
PImage planet1;
PImage title;
PImage arrow;
PImage startrooper;
//PImage enemyship;
int xposition = 900;
PFont funky; // create memory space for a font
int planetpositionx = 1000; //set planet position variable to 1000
int planet1positionx = 1500; //set planet1 position variable to 1500
int gunnerposx = 50; // create a variable called "gunnerposx" and is the starting x axis of star gunner ship
int gunnerposy = 100; // create a variable called "gunnerposy" and is starting y axis of start gunner ship
int stage; //variable for storing what stage the game is at
int score = 0; //variable for storing the users score. has default value of 0 that then can be increased
int trooperxposition = 0; //variable for the x position of the trooper image in username page.
String username=""; //string called username that stores the characters a user inputs on the username page

void setup() {
  /////////Title page////////// stage 1///////// title page//////////////////
  stage = 1;
  size(500, 500); //create a display size 500px in length and 500px in height 
  background(0); // Set the background colour as black
  stroke(255); 
  strokeWeight(5);
  funky = loadFont("funky.vlw"); //created a font in the font creator tool and named it funky. this line is telling the program when funky is called load a font called funky.
  stargunner = loadImage("Star Gunner Ship.png"); //in memory space called stargunner load up the image "Star Gunner Ship.png"
  planet = loadImage("planet.png");
  planet1 = loadImage("planet1.png");
  title = loadImage("Star Gunner Ship Title.png");
  arrow = loadImage("arrow.png"); //load image arrow.png which was found on clipart.org under public domain license. made by mystica on 26/12/2006.
  startrooper = loadImage("star trooper.png");
 // enemyship = loadImage("enemy ship.png");
  minim = new Minim(this); //gets passed to minim to load file from the directory
  player = minim.loadFile("Tech I Gunshot.mp3"); /* "loadfile" loads up the mp3 from the directory (star_gunner) and assigns it to player. Sourced TECH I Gunshot.mp3 from
  http://freepd.com/Techno/Tech%20I%20Gunshot under public domain */
  

  int i = 0;
  while(i < 25) {  
    x[i] = random(0, width);
    y[i] = random(0, height);
    speed[i] = random(1, 5);
    i = i + 1;
  }
}

void draw() {
  background(0); // black background
  
  if (stage == 1) {
  
  image(title,150,120); //display the title image that i created using inkscape.
    
    
    
    
    
  
  if (keyPressed) {
   stage = 2;
  }
  }
  
  int i = 0;
  while(i < 25) {
    stroke(150); // grey coloured stars
    point(x[i], y[i]);
  
    x[i] = x[i] - speed[i];
    if(x[i] < 0) {
      x[i] = width;
    }
    i = i + 1;
  }
  
  //////////username/////////stage2////////////username//////////stage2//////////
  if (stage == 2){
   
   username();
   
   
   
 }
  
  
  
  
  ///////////menu////////////stage 3//////////// menu/////////////////////////
 if (stage == 3){
   
   menu();
   
   
   
 }
 ////////////controls page////////stage4////////controls page/////////stage4
 
 if (stage == 4){
   
  controls(); 
  if (mouseX > 50 &&mouseX < 50+400 && mouseY > 350 && mouseY < 350 + 100 ){ //if mouse moves over this rectangle alter the following:
    fill(255);
    rect(50,350,400,100,7); //return box turns to white
    fill(0);
    text("Return to Menu",60,390); //return to menu button turns to black
      
    }  
   
   
 }
 ///////////Scoreboard//////////// stage 5//////////Scoreboard//////////stage 5////
 
 if (stage == 5){
   
   
   scoreboard();
   if (mouseX > 50 &&mouseX < 50+400 && mouseY > 350 && mouseY < 350 + 100 ){ //if mouse moves over this rectangle alter the following:
    fill(255);
    rect(50,350,400,100,7); //return box turns to white
    fill(0);
    text("Return to Menu",60,390); //return to menu button turns to black
   }
   
 }
 
 ///////////game//////////stage6//////////////game/////////stage 6//////////
  
 if (stage == 6) {
   
   planets(); // call the function called planets
   
   player.play(); //play mp3 file assigned to player.
  
  
  
  
   
   
   if (keyPressed && (key == CODED)) { // if the keyboard is pressed and it is coded eg. an arrow
   if (keyCode == LEFT) { // the keyboard button is the left arrow
    gunnerposx--; // decrease the X axel pixel
   } else if (keyCode == RIGHT) { // right arrow button
     gunnerposx++; // increase the x axel pixel
   }
   if (keyCode == UP) { // if keyboard button up is pressed
     gunnerposy--; // reduce the y pixel so the image will go up
   } else if (keyCode == DOWN) { // if keyboard button down is pressed
     gunnerposy++; // increase y pixel so image will go down
   }

 }
   
  image(stargunner,gunnerposx, gunnerposy);
  fill(255,0,0); //red colour
  textFont(funky); //set the font style to funky
  text("SCORE = ",280,30);
  text("HEALTH", 10, 30);
  
  ////health bar////////
  noStroke();
  rect(130, 10, 100, 15); //red health bar
  fill(255,255,255); //green colour
  rect(130, 10, 100, 15); // green health bar
  
  text(score, 450,30); // display the actual score stored in the variable called score.

  //image(enemyship,xposition,300);
 // xposition = xposition -3;
 }
  
}

void mousePressed(){
  
  if (stage == 2) {
     if (mouseX > 275&&mouseX < 275+50 && mouseY > 300 && mouseY < 300+50) {  // if the user is in stage 2(username) and mouse is pressed within the set area send the user to stage 3
     stage = 3; // menu
    }
    }
  
  if (stage == 3) {
     if (mouseX > 300&&mouseX < 300+150 && mouseY > 100 && mouseY < 100+200) {  // if the user is in stage 3(the menu) and mouse is pressed within the set area send the user to stage 4
     stage = 4; // the controls
    }
    }
    
  if (stage == 3) {
     if (mouseX > 50&&mouseX < 50+150 && mouseY > 100 && mouseY < 100+200) {  // if the user is in stage 3(the menu) and mouse is pressed within the set area send the user to stage 5
     stage = 5; // the scoreboard
    }
    }
  
  if (stage == 3) {
     if (mouseX > 50&&mouseX < 50+400 && mouseY > 350 && mouseY < 350+100) {  // if the user is in stage 3(the menu) and mouse is pressed within the set area send the user to stage 6
     stage = 6; // the game
    }
    }
  
  if (stage == 4) {
     if (mouseX > 50&&mouseX < 50+400 && mouseY > 350 && mouseY < 350+100) {  // if the user is in stage 4(controls) and mouse is pressed within the set area send the user to stage 2
     stage = 3; // the menu
    }
    }
    
  if (stage == 5) {
     if (mouseX > 50&&mouseX < 50+400 && mouseY > 350 && mouseY < 350+100) {  // if the user is in stage 4(scoreboard) and mouse is pressed within the set area send the user to stage 2
     stage = 3; // the menu
    }
    }
  
}

void keyPressed() {
  if (stage == 2) { //if in stage 2 do the following
  
  username+=key;  //username = the keys a user inputs into the screen
  
}
} 
  