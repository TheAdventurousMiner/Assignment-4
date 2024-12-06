//Make a new user-defined class for asteroids

class AsteroidsTwo {
  
  //set variables for the location and speed of the asteroids by making user-defined
  //variables for the asteroids x and y locations and the speed
  float asteroidTwoX;
  float asteroidTwoY;
  float asteroidTwoSpeed;
  
  //set the asteroids in specific locations
  AsteroidsTwo() {
    asteroidTwoX = random(0, width);
    asteroidTwoY = random(160, 200);
    asteroidTwoSpeed = -8;
  }
  //set the speed of the asteroid
  void passby() {
    asteroidTwoX = asteroidTwoX + asteroidTwoSpeed;
  }
  //set the look of the asteroid
  void display() {
    fill(190);
    ellipse(asteroidTwoX, asteroidTwoY, 20, 20);
  }
  //reset the asteroids as they go by the screen
  void reset() {
    if (asteroidTwoX < -50) {
      asteroidTwoX = 450;
    }
  }
}
