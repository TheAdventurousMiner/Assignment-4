//Make a new user-defined class for asteroids

class AsteroidsThree {
  
  //set variables for the location and speed of the asteroids by making user-defined
  //variables for the asteroids x and y locations and the speed
  float asteroidThreeX;
  float asteroidThreeY;
  float asteroidThreeSpeed;
  
  //set the asteroids in specific locations
  AsteroidsThree() {
    asteroidThreeX = random(0, width);
    asteroidThreeY = random(60, 100);
    asteroidThreeSpeed = 10;
  }
  //set the speed of the asteroid
  void passby() {
    asteroidThreeX = asteroidThreeX + asteroidThreeSpeed;
  }
  //set the look of the asteroid
  void display() {
    fill(190);
    ellipse(asteroidThreeX, asteroidThreeY, 20, 20);
  }
  //reset the asteroids as they go by the screen
  void reset() {
    if (asteroidThreeX > 450) {
      asteroidThreeX = -50;
    }
  }
}
