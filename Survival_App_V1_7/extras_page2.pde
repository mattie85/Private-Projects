void extras_page2() {
  background(#004F1F); // green background
  for(int x=0; x<400; x +=30){ // for loop if the begin of square (x) starts at 0 and is 20 long, if a 10 space and make another 20 box follwed by 10 space all the way to the edge of screen(400 pixel)
    fill(#631919); //brown
    rect(x, 0, 20, 20);
  }
  
  fill(#631919); // brown hexidecimal colour
  rect(22,22,356,41); // larger box to give the illusion of a brown border
  
  rect(25,25,350,35); //smaller green box
  fill(#48B427); //green hexidecimal colour
 
  noStroke();
  
  fill(#631919); //brown hexidecimal colour
  rect(22,22,356,41); // larger box to give the illusion of a brown border
  fill(#48B427); //green
  noStroke();
  rect(25,25,350,35); //smaller green box
  image(menu,155,28); // "extras" logo at the top of the page
  
  
  fill(#631919); //brown colour
  triangle(52, 286, 16, 310, 52, 334);
  fill(#48B427); // green colour
  triangle(50,290,20,310,50,330);
  
}