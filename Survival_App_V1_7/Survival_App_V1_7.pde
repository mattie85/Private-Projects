PImage bugout;
PImage extras;
PImage bush1;
PImage bush2;
PImage tree1;
PImage fire, firered;
PImage fire1;
PImage shelter, shelterred;
PImage tree2;
PImage food, smallfood;
PImage water;
PImage menu;
PImage traps,base,campfire;
int x = 0;
int stage;
PImage logo;
int totalTime = 3000;
PImage title, tap, camp;
PFont font1;
PFont font2;
PFont font3;
PImage leanto;
PImage shelter0;
PImage shelter00;
PImage lean0;
PImage lean00;
PImage firewool, firewool00;
PImage batteryfire, batteryfire00;

void setup(){
  stage = 1;
  size(400,600);
  bugout = loadImage("bugout bag.png");  // all images sourced from openclipart.org and cooltext.com
  extras = loadImage("Extras.png");
  bush1 = loadImage("bush1.png");
  bush2 = loadImage("bush2.png");
  tree1 = loadImage("tree1.png");
  fire1 = loadImage("fire1.png");
  shelter = loadImage("shelter1.png");
  fire = loadImage("Fire.png");
  tree2 = loadImage("tree2.png");
  food = loadImage("food.png");
  water = loadImage("water.png");
  logo = loadImage("logo.png");
  title = loadImage("title.png"); ///#EFE66E = text colour
  tap = loadImage("tap.png");
  font1 = createFont("font1", 800, true);
  font2 = createFont("font2",28);
  font3 = createFont("fonte",10);
  camp = loadImage("camp.png");
  menu = loadImage("menu.png");
  traps = loadImage("traps.png");
  base = loadImage("base.png");
  campfire = loadImage("campfire.png");
  leanto = loadImage("leanto.jpg");
  shelter0 = loadImage("shelter0.png");
  shelter00 = loadImage("shelter00.png");
  lean0 = loadImage("lean0.png");
  lean00= loadImage("lean00.png");
  firewool = loadImage("wool fire.png");
  batteryfire = loadImage("batteryfire.png");
  batteryfire00 = loadImage("batteryfire00.jpg");
  firewool00 = loadImage("wool fire00.jpg");
  shelterred = loadImage("shelterred.png");
  firered = loadImage("firered.png");
  smallfood = loadImage("smallfood.png");
}


void draw() {
  ///////stage1///////blackpage ///////// stage1 //////// blackpage //////// stage1 ///////
  if (stage == 1) {
    background(0);
  image(logo,50,200);    //mjs production logo
  int passedTime = millis();  // this line and next line is the timer
  if(passedTime > totalTime) { // total time variable stored at the top
    stage = 2;
  }
  }
  ///////////////stage 2 ///////////stage2//////////////stage2/////////////stage2///////
  if (stage == 2){
    title_page();
   //if (keyPressed && key == 'x') {
     if (mousePressed) {
   stage = 3;
  }
  }
  //////// stage 3  ///// Menu///////// stage 3//////// menu//////////////////////stage 3///////
 if (stage == 3) { 
  menu();
  
 }

////////// stage4///////////Bugout list page////////stage4///////Bugout list page//////////////////////////////
if (stage == 4) {
  bugout_list();
 
}
//////////stage 5/////////// Extras page////////////stage 5 /////// extras page///////////////////////
if (stage == 5) {
  extras_page();
}



//////////stage6/////////////shelter////////////////stage6//////////////shelter////////////////////////////
if (stage == 6) {
  shelter();
 
  
  
}
//////////stage7//////////// enlarged picture on shelter page///////// stage 7///////// enlarged picture on shelter page///
if (stage == 7) {
 background(#004F1F);
 image(shelter00,0,100);
 image(shelterred,150,560);

}
//////////stage8////////////enlarged picture on shelter page/////////stage8//////////enlarged picture on shelter page///////
if (stage == 8) {
 background(#004F1F);
 image(lean00,10,100);
 image(shelterred,150,560);

}

//////////stage9////////////fire/////////////stage9///////////fire///////////stage9/////////fire///////stage9///////////
if (stage == 9) {
 fire();

}

////////stage10/////////enlarged fire image//////////stage10////////enlarged fire image///////stage 10////////////////
if (stage == 10) {
 background(#004F1F);
 image(firewool00,75,100);
 image(firered,150,560);
 text("Rub the wool over the battery terminals which will cause the", 25, 400);
 text("battery to short and produce sparks/heat ready to use in a ", 25, 410);
 text("tinder bundle.", 25, 420);
 

}

/////////stage11////////enlarged fire image/////////stage11////////enlarged fire image/////////stage11///////
if (stage == 11) {
 background(#004F1F);
 image(batteryfire00,75,100);
 image(firered,150,560);
 textSize(14);
 text("hold a thin piece of gum wrapping at each ",25,300);
 text("end of the battery it will heat up very quickly",25,310);
 text("resulting in a flame.....bingo..",25,320);
}

///////stage12////////food//////////////stage12////////food/////////stage12//////////food///////////////////
if (stage == 12) {
  food();
  
}


///////stage13//////water///////////////stage13/////////////water//////////stage13//////////water//////////
if (stage == 13) {
  water();
  
}

//////stage 14////////extras page 2///////////stage14//////////extras page 2/////// stage14////////////

if (stage == 14) {
  extras_page2();
  
}

//////stage15/////////////traps////////////stage15///////////traps//////////stage15//////////////////////
if (stage == 15) {
  traps();
  
}

//////stage16/////// shopping basket trap////////// stage 16//////// shopping basket trap///////////////
if (stage == 16) {
 // use the link function to add a link to a youtube clip if the basket button is pressed. 
  
  
}



}

void mousePressed(){
 
    if (stage == 3) {
     if (mouseX > 25&&mouseX < 25+350 && mouseY > 25 && mouseY < 25+35) {  // if bugout bag button pressed on menu page enter bugout bag page
     stage = 4;
    }
    }

    if (stage == 3) {
     if (mouseX > 60&&mouseX < 60+141 && mouseY > 150 && mouseY < 150+60) {  // if shelter button pressed on menu page enter through to shelter page
     stage = 6;
    }
    }
    
    if (stage == 3) {
     if (mouseX > 240&&mouseX < 240+96 && mouseY > 150 && mouseY < 150+60) {  // if fire button pressed on menu page enter through to fire page
     stage = 9;
    }
    }
  
    if (stage == 3) {
     if (mouseX > 25&&mouseX < 25+350 && mouseY > 550 && mouseY < 550+35) { // on menu page if extras button pressed enter extras page
     stage = 5;
    }
    }
    
    if (stage == 3) {
     if (mouseX > 60&&mouseX < 60+115 && mouseY > 370 && mouseY < 370+60) { // on menu page if food button pressed enter food page
     stage = 12;
    }
    }
    
    
    if (stage == 3) {
     if (mouseX > 230&&mouseX < 230+123 && mouseY > 370 && mouseY < 370+60) { // on menu page if water button pressed enter food page
     stage = 13;
    }
    }
   
    
    if (stage == 4) {
     if (mouseX > 25&&mouseX < 25+350 && mouseY > 550 && mouseY < 550+35) {  //if menu button pressed on bugout page return to the menu
     stage = 3;
    }
    }
    
   if (stage == 5) {
    if (mouseX > 25&&mouseX < 25+350 && mouseY > 25 && mouseY < 25+35) {  // if menu button pressed when within extras page the user is returned to the menu page
    stage = 3;
    }
    }
    
    
   if (stage == 5) {
    if (mouseX > 348&&mouseX < 348+34 && mouseY > 286 && mouseY < 286+50) {  // if triangle button pressed when within extras page the user is moved onto extras page 2
    stage = 14;
    }
    }
    
   if (stage == 6) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if menu button pressed on shelter page return to the menu
     stage = 3;
    }
    }
    
   if (stage == 6) {
     if (mouseX > 250&&mouseX < 250+120 && mouseY > 450 && mouseY < 450+128) {  //if the image is clicked on the shelter page the image will enlarge
     stage = 7;
    }
    }
    
   if (stage == 6) {
     if (mouseX > 10&&mouseX < 10+120 && mouseY > 470 && mouseY < 470+101) {  //if the image is clicked on the shelter page the image will enlarge
     stage = 8;
    }
    } 
  
  if (stage == 7) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on the enlarged picture in shelter then return to menu.
     stage = 6;
    }
    }
  
  if (stage == 8) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on the enlarged picture in shelter then return to menu.
     stage = 6;
    }
    }
     
  if (stage == 9) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on the fire page then return to menu.
     stage = 3;
    }
    }
  
  if (stage == 9) {
     if (mouseX > 30&&mouseX < 30+100 && mouseY > 460 && mouseY < 460+100) {  //if the picture is clicked on the fire page then enlarge(stage 10).
     stage = 10;
    }
    }
    
  if (stage == 9) {
     if (mouseX > 240&&mouseX < 240+100 && mouseY > 480 && mouseY < 480+52) {  //if the picture is clicked on the fire page then enlarge(stage 10).
     stage = 11;
    }
    }
  
  if (stage == 10) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on the enlarged fire picture then return to menu.
     stage = 9;
    }
    }
    
  if (stage == 11) {
     if (mouseX > 165&&mouseX < 165+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on the enlarged fire picture then return to menu.
     stage = 9;
    }
    }
    
  if (stage == 12) {
     if (mouseX > 150&&mouseX < 150+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on in the food page then return to menu.
     stage = 3;
    }
    }
    
  if (stage == 12) {
     if (mouseX > 20&&mouseX < 20+360 && mouseY > 200 && mouseY < 200+50) {  //if the traps button is clicked on in the food page then goto traps.
     stage = 15;
    }
    }  
    
  if (stage == 13) {
     if (mouseX > 150&&mouseX < 150+68 && mouseY > 550 && mouseY < 550+25) {  //if the menu button is clicked on in the water page then return to menu.
     stage = 3;
    }
    }
    
    
  if (stage == 14) {
     if (mouseX > 16&&mouseX < 16+36 && mouseY > 286 && mouseY < 286+50) {  //if the triangle button is clicked on in the extras 2 page then return to extras 1.
     stage = 5;
    }
    }
  
  if (stage == 14) {
    if (mouseX > 25&&mouseX < 25+350 && mouseY > 25 && mouseY < 25+35) {  // if menu button pressed when within extras 2 page the user is returned to the menu page
    stage = 3;
    }
    }
    
    
   
}


    
    
  
  
  
  
  
  
  
  
  
  
  