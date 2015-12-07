void bugout_list(){
  background(#004F1F); //darker green
  fill(#631919); //brown
  noStroke();
  rect(22,22,356,41);
  fill(#48B427); //green
  noStroke();
  rect(25,25,350,35);
  image(bugout,100,28);
  for(int x=0; x<400; x +=30){ // for loop if the begin of square (x) starts at 0 and is 20 long, if a 10 space and make another 20 box follwed by 10 space all the way to the edge of screen(400 pixel)
    fill(#631919); //brown
    rect(x, 0, 20, 20);
  }
  
  fill(#631919);
  strokeWeight(20);
  textFont(font2, 24);
  text("~ Rucksack (25-80L)", 10, 100);
  text("~ Survival knife (sharpe)", 10, 120);
  text("~ Multi-Tool",10, 140);
  text("~ Lighter/Matches & Steel Flint", 10, 160);
  text("~ Tent/Tarp(For Sleeping)",10,180);
  text("~ Sleeping Bag",10,200);
  text("~ First Aid Kit",10,220);
  text("~ Drinkable Water",10,240);
  text("~ Food",10,260);
  text("~ Fishing hooks & line",10,280);
  text(" (for fishing & Trap Making)",10,300);
  text("~ Touch with spare batteries",10,320);
  text("~ Cord/Rope",10,340);
  text("~ Axe",10,360);
  text("~ Cash & Coins",10,380);
  text("~ Roll of Duct Tape",10,400);
  text("~ Survival Hand Book",10,420);
  
  
  
  
  fill(#631919); //brown
  noStroke();
  rect(22,547,356,41);
  fill(#48B427); //green
  noStroke();
  rect(25,550,350,35);
  image(menu,155,555);
  
}

  