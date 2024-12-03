//make a user-defined class for stars

class Stars {
  
  //set user-defined variables for the locations and size of the stars
  float starX;
  float starY;
  
  //set the stars at random locations
  Stars() {
    starX = random(0, width);
    starY = random(0, height);
  }
  //set the look and size of the stars
  void display() {
    fill(255);
    ellipse(starX, starY, 5, 5);
  }
}
