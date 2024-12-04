//Make a new user-defined class for asteroids

class Asteroids {
  
  //set variables for the location and speed of the asteroids by making user-defined
  //variables for the asteroids x and y locations and the speed
  float asteroidX;
  float asteroidY;
  float asteroidSpeed;
  
  //set the asteroids in specific locations
  Asteroids() {
    asteroidX = random(0, width);
    asteroidY = random(280, 330);
    asteroidSpeed = 3;
  }
  //set the speed of the asteroid
  void passby() {
    asteroidX = asteroidX + asteroidSpeed;
  }
  //set the look of the asteroid
  void display() {
    fill(190);
    ellipse(asteroidX, asteroidY, 20, 20);
  }
  //reset the asteroids as they go by the screen
  void reset() {
    if (asteroidX > 450) {
      asteroidX = -50;
    }
  }
}
