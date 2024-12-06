class Spaceship {
   float shipX;
   float shipY;
   
   Spaceship() {
     shipX = 190;
     shipY = 370;
   }
   
   void control() {
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
   }
   
   void display() {
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
}
     
