//make user-defined class for shooting star
class shootingStar {
  
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  shootingStar() {
    location = new PVector(0, 200);
    velocity = new PVector(0,0);
    acceleration = new PVector(0.5,0);
  }
  
  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(10);
  }
  
  void edges() {
    if (location.x > 800) location.x = -300;
    if (location.x < -300) location.x = 800;
    if (location.y > 800) location.y = -300;
    if (location.y < -300) location.y = 800;
  }
  
  void display() {
    noStroke();
    fill(255);
    rect(location.x, location.y, 100, 1);
  }
}
