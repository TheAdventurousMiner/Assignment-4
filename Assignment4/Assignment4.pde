//This program will make a game based on cross the road but space-themed. The player
//must go from Earth(bottom of screen) to Mars(top of screen) without getting hit. 
//If they get hit, they must retry until they reach Mars. If they reach Mars, they win.

//Use arrays to create a set of stars
Stars[] stars = new Stars[60];
Asteroids[] asteroids = new Asteroids[10];

void setup() {
  
  //set the size of the canvas
  size(400, 400);
  
  //remove strokes for all drawings
  noStroke();
  
  //set up the stars
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Stars();
  }
  
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i] = new Asteroids();
  }
  
}

void draw() {
  //draw outer space
  background(60, 45, 75);
  
  //display the stars
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
  }
  
  for (int i = 0; i < asteroids.length; i++) {
    asteroids[i].passby();
    asteroids[i].display();
    asteroids[i].reset();
  }
 
  
  //Draw the moon by drawing an ellipse and colouring it grey
  fill(150);
  ellipse(50, 370, 75, 75);
  
  //Draw planet Earth at the bottom of the screen by drawing an ellipse and colouring it blue.
  fill(65, 115, 190);
  ellipse(200, 480, 300, 300);
  //Draw the arctic on the Earth by drawing an ellipse and colouring it white.
  fill(255);
  ellipse(200, 350, 100, 40);
  //Draw continents on the Earth by drawing an ellipse and colouring it green.
  fill(75, 125, 50);
  ellipse(160, 400, 150, 30);
  ellipse(300, 430, 60, 100);
  
  //Draw planet Mars at the top of the screen by drawing an ellispe and colouring it red.
  fill(180, 65, 75);
  ellipse(200, -80, 250, 250);
  //Draw some details on Mars by drawing more ellipses and coluring them a darker red.
  fill(130, 40, 65);
  ellipse(160, 0, 100, 20);
  ellipse(230, 25, 60, 15);
}
