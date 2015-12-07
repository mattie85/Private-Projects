int yetiposition = 215;// variable and is the speed (frames per sercond)
int yetititleposition = -15; //starting position of yeti on title page
int blobposition = yetiposition; // blob position = yeti position
int y = 502; //position of yeti on the screen
int monsterposition = 800; //monster position
int dragonpositionX = 800; //position of dragon
int dragonspeed = 3;  //speed of dragon
int dragonpositionY = 100; // position of dragon on height
int firepositionX = dragonpositionX; //fire and the dragon share the same X pixel
int firepositionY = 100; // fire is positioned 100 pixel from the topof the screen to start with
int levelupposition = 0;
int monster3position = 800;
PImage yeti; // image variables
PImage dragon;
PImage Blob;
PImage monster;
PImage fire;
PImage TheYeti;
PImage GameOver;
PImage levelup;
PImage monster3;
PFont title; // font variable
int stage; // variable for the different stages
int HIT = 0; //variable for the hit counter

void setup() {
  stage = 1; // first stage which is the title page
  size(1000, 800);
  yeti = loadImage("Monster1.png"); // load up image monster1.png  //edited monster using inkscape
  dragon = loadImage("Dragon1.png"); // load up several more images.
  Blob = loadImage("Blob.png"); // made using inkscape
  monster = loadImage("Monster2.png");
  fire = loadImage("fire.png"); // made using inkscape
  //background(0); //black background
  title = createFont("CrazyKiller-80", 800, true); // use "crazykiller" font which i found off cooltext.com 
  TheYeti = loadImage("Theyeti.png"); // made using cooltext.com
  GameOver = loadImage("Gameover.png");
  levelup = loadImage("levelup.png");
  monster3 = loadImage("monster3.png");
}

void draw() {
  if (stage == 1) { // if at stage one load up the following
   background(0); //black background
    textAlign(CENTER);
    image(TheYeti, 300, 200); // Image "the yeti" to be displayed on title page
    text("By Matt Stapleton", 450, 420); //add text displaying the maker as in me!!!! and at what position on the screen
    text("PRESS ANY KEY TO PLAY GAME", 450, 480); // add more text to tell user what to do
    image(yeti, yetititleposition, 600); // small yeti runs across the screen
    yetititleposition = yetititleposition + 4; // yeti runs at +4
    text("Z - Shoot X - Shield   Left/Right - To Move", 460, 500);
    if(keyPressed == true) { //if any key pressed move onto stage 2
      stage = 2;
    }
  }
  
  if (stage == 2) { // if at stage 2 load up the following
  //Surroundings
  background(10, 118, 247);
  fill(162, 11, 57);
  rect(-10, 550, 1100, 550);
  fill(150);
  rect(700, 200, 300, 350);
  fill(250, 97, 8);
  rect(800, 400, 100, 150); 
  fill(0);
  ellipse(820, 475, 10, 10);
  triangle(700, 200, 1000, 0, 1500, 200);
  fill(150);
  rect(450, 350, 250, 200);
  fill(250, 97, 8);
  rect(500, 400, 150, 150);
  strokeWeight(5);
  line(505, 415, 645, 415);
  line(505, 435, 645, 435);
  line(505, 455, 645, 455);
  line(505, 475, 645, 475);
  line(505, 495, 645, 495);
  line(505, 515, 645, 515);
  line(505, 535, 645, 535);
  
  
  
// Yeti
 if (keyPressed && (key == CODED)) { // if the keyboard is pressed and it is coded eg. an arrow
   if (keyCode == LEFT) { // the keyboard button is the left arrow
    yetiposition--; // decrease the X axel pixel
   } else if (keyCode == RIGHT) { // right arrow button
     yetiposition++; // increase the x axel pixel
   }
   if (keyCode == UP) { // if keyboard button up is pressed
     y--; // reduce the y pixel so the image will go up
   } else if (keyCode == DOWN) { // if keyboard button down is pressed
     y++; // increase y pixel so image will go down
   }

 }
image(yeti, yetiposition, y); // load image with new pixel co ordinates every frame

//Shield
if (keyPressed && key == 'x') {
  fill(255, 255, 255, 80); //added fourth set of number for transparancy
  ellipse(yetiposition + 20 , 520, 100, 80);
}

  






//  Blob
if (keyPressed && key == 'z') { // if keyboard button pressed then something will happen
    image(Blob, blobposition, y); // draw an image that will be the photo = blob. x2 is the same position as x on the yeti which is important when shooting the blob. 
    blobposition = blobposition +6; // x2 (blob) position gains 6 pixel per frame
    if (blobposition > width) { // if x2 (blob) hits width
      blobposition = yetiposition; // start shooting the blob from the yeti again.
    }

    
    
  }
  // Dragon
image(dragon, dragonpositionX, dragonpositionY); // load dragon image, with x axel being the variable dragonposition and with it being 100 pixel from the top.
dragonpositionX+=dragonspeed; // relationship between the position and the speed of the dragon.
if (dragonpositionX > width-100) {  //If the position of the dragon is bigger than the width I have to change the speed to a negative number to send it back
    dragonpositionX = width-100; // this line tells use where the dragon will start from heading in the other direction
    dragonspeed = -3;  // this tells me that it is running at 5 frames per second from right to left
  }
  if (dragonpositionX < 0) { // If the position of the dragon is smaller then 0 
    dragonpositionX = 0; //Start the dragon at 0
    dragonspeed = 3; // with speed of 5 frames per second going left to right
  }
  
  // fire
  image(fire, firepositionX, firepositionY); // load up fire image and place it at position x and y
  firepositionX = firepositionX - 2; // decrease fire pixel x by 2 pixels each frame
  firepositionY = firepositionY + 2; // increase fire pixel y by 2 pixels each frame
  if (firepositionY >= 800) { // if y pixel is greater or equal to 800 pixel
    firepositionY = dragonpositionY; // then place the fire back to the dragon
  }
  if (firepositionX <= width) { // if the fire gets to the edge of the screen 
   firepositionX = dragonpositionX; // then fire x pixel = dragon x pixel
  } 

 //monster 3
 image(monster3, monster3position, 475);
 monster3position = monster3position -2;
 if (monster3position < yetiposition + 50 &&(keyPressed && key == 'x') ) { 
  monster3position = 800;
 }
  if (monster3position < yetiposition + 20) { 
  stage = 3;
}
  if (blobposition >= monster3position &&(keyPressed && key =='z') ) { // for blobposition is bigger or equal to monster position whilst 'Z' is pressed 
 monster3position = 800; // return monster to 1100
 blobposition = yetiposition; // return blob to the yeti position
 HIT +=1;  // add 1 to the hit counter
 } 
  
  
  
  //Monster 
  image(monster, monsterposition, 450); //monster image
  monsterposition = monsterposition -1; // monsterposition to decrease a pixel every frame
   if (monsterposition < 0) { // if monster gets to the edge of the screen 
 monsterposition = 900; // he is to be reloaded at 900 pixel
 monsterposition = monsterposition -1; //then start to decrease a pixel everyframe
}
if (monsterposition < yetiposition + 50 &&(keyPressed && key == 'x') ) { // if monster reaches yeti whilst shield is on the monster is to return to the edge of the screen.
  monsterposition = 800;
}
if (monsterposition < yetiposition + 20) { // if the monster reaches the yeti then move on to stage 3 screen.
  stage = 3;
}
if (blobposition >= monsterposition &&(keyPressed && key =='z') ) { // for blobposition is bigger or equal to monster position whilst 'Z' is pressed 
 monsterposition = 1100; // return monster to 1100
 blobposition = yetiposition; // return blob to the yeti position
 HIT +=1;  // add 1 to the hit counter
} 
text("HIT: " + HIT, 25, 10); //write hit counter in top left corner
if (HIT > 10) {
  stage = 4;
}
}
if (stage == 3) { // if stage 3 is reached
  background(0); // black background
  image(GameOver, 300, 400); // load up game over image
  text("You need more game time sucker!!!!!!!", 510, 500); // add txt underneath the image 
  
}
//level 2 development
if (stage == 4) {  // level 2 development
  background(17, 163, 234);
  fill(7, 79, 229);
  rect(-10, 550, 1100, 550);
  fill(0, 225, 252);
  triangle(400, 0, 450, 90, 500, 0);
  triangle(600, 0, 650, 90, 700, 0);
  triangle(600, 550, 700, 300, 800, 550);
  triangle(-10, 550, 0, 0, 200, 550);
  image(levelup, levelupposition, 400);
  levelupposition = levelupposition +4;
  // Yeti
 if (keyPressed && (key == CODED)) { // if the keyboard is pressed and it is coded eg. an arrow
   if (keyCode == LEFT) { // the keyboard button is the left arrow
    yetiposition--; // decrease the X axel pixel
   } else if (keyCode == RIGHT) { // right arrow button
     yetiposition++; // increase the x axel pixel
   }
   if (keyCode == UP) { // if keyboard button up is pressed
     y--; // reduce the y pixel so the image will go up
   } else if (keyCode == DOWN) { // if keyboard button down is pressed
     y++; // increase y pixel so image will go down
   }

 }
image(yeti, yetiposition, y); // load image with new pixel co ordinates every frame

 
  
  
  
  
  
}
//Level 3
if (stage == 5) {
  
  
  
  
  
  
  
}
}


void keyReleased() {       // this is that something is going to happen once the z key is released. we know that if it is pressed and held a blob comes out.
  if (keyPressed && key == 'z') { // if the key pressed the blob will gain 6 pixel every frame
    blobposition = blobposition + 6;
  } else {
    blobposition = yetiposition; // if released the blob will disappear and return to the yeti.
  }
}
