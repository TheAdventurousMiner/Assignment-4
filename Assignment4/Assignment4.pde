//This program will make a game based on cross the road but space-themed. The player
//must go from Earth(bottom of screen) to Mars(top of screen) without getting hit. 
//If they get hit, they must retry until they reach Mars. If they reach Mars, they win.

//Use arrays to create a set of stars
Stars[] stars = new Stars[60];
Asteroids[] asteroid = new Asteroids[10];
AsteroidsTwo[] asteroidsTwo = new AsteroidsTwo[10];
AsteroidsThree[] asteroidsThree = new AsteroidsThree[10];

shootingStar shooting;
//set variables for ship x and y location
float shipX = 190;
float shipY = 370;

void setup() {
  
  //set the size of the canvas
  size(400, 400);
  
  //remove strokes for all drawings
  noStroke();
  
  shooting = new shootingStar();
  
  //set up the stars and asteroids
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Stars();
  }
  
  for (int i = 0; i < asteroid.length; i++) {
    asteroid[i] = new Asteroids();
  }
  
  for (int i = 0; i < asteroidsTwo.length; i++) {
    asteroidsTwo[i] = new AsteroidsTwo();
  }
  
  for (int i = 0; i < asteroidsThree.length; i++) {
    asteroidsThree[i] = new AsteroidsThree();
  }
  
  //ship = new Spaceship();
}

void draw() {
  //draw outer space
  background(60, 45, 75);
  
  shooting.update();
  shooting.edges();
  shooting.display();
  
  //display the stars and asteroids location and speed
  for (int i = 0; i < stars.length; i++) {
    stars[i].display();
  }
  
  for (int i = 0; i < asteroid.length; i++) {
    asteroid[i].passby();
    asteroid[i].display();
    asteroid[i].reset();
  }
 
  for (int i = 0; i < asteroidsTwo.length; i++) {
    asteroidsTwo[i].passby();
    asteroidsTwo[i].display();
    asteroidsTwo[i].reset();
  }
  
  for (int i = 0; i < asteroidsThree.length; i++) {
    asteroidsThree[i].passby();
    asteroidsThree[i].display();
    asteroidsThree[i].reset();
  }
  
  //Draw the moon by drawing an ellipse and colouring it grey
  fill(200);
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
  
  
  spaceship(shipX, shipY);

  
}

void spaceship(float x,float y) {
   

   

    if(keyPressed==true) {
     if(key== 'a') {
       shipX=shipX-5;
     }
     if(key== 'd') {
       shipX=shipX+5;
     }
     if(key== 'w') {
       shipY=shipY-5;
     }
     if(key== 's') {
       shipY=shipY+5;
     }
    }
    shipX = constrain(shipX, 5, 380);
    shipY = constrain(shipY, -20, 380);
   //}
   if (shipY < 0) {
     fill(255);
    text("Mission Accomplished! Click Mouse to play again.", 70, 20);
  }
  
  if (shipY > 360) {
    fill(0);
    text("Let's go to Mars!", 100, 380);
  }
  
  if (mousePressed == true) {
    shipX = 190;
    shipY= 370;
  }
   

     fill(245);
     rect(shipX, shipY, 20, 20);
     triangle(shipX, shipY, shipX+10, shipY-20, shipX+20, shipY);
     fill(255, 0, 0);
     triangle(shipX, shipY+10, shipX, shipY+20, shipX-10, shipY+30);
     triangle(shipX+20, shipY+10, shipX+20, shipY+20, shipX+30, shipY+30);
     fill(100);
     rect(shipX+5, shipY+20, 10, 5);
     fill(0);
     ellipse(shipX+10, shipY, 10, 10);

}
