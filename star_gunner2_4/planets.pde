void planets(){     //create a function called planets that can be called for on the main body of the programs
  
 image(planet1, planet1positionx, 350);  //display an image called planet1 that has a variable x position and also the y position sits at 350 pixel.
  planet1positionx = planet1positionx - 1; // this makes the image move to the left at a rate of 1 pixel per frame.
  if(planet1positionx < -1500) { // if statement declaring that if the images x position becomes smaller than -1500 then to reset it back to 1500 
    planet1positionx = 1500;
  }
  
  
  image(planet, planetpositionx, 50); // This set of coding works exactly the same as above but with a different image and a different starting position.
  planetpositionx = planetpositionx - 1;
  if(planetpositionx < -1000) {
    planetpositionx = 1000;
  } 
  
 
}