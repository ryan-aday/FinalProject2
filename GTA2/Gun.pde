class Gun{
  float angle = 0;
  float targetAngle = 0;
  float easing = 1;
  float x,y;
  Gun(float _x, float _y){
        x=_x;
        y=_y;
    }
    
    void move(){
      // get the angle from the center to the mouse position
      angle = atan2( mouseY - height/2, mouseX - width/2 );
      // calculate the shortest rotation direction
      float dir = (angle - targetAngle) / TWO_PI;
      dir = dir - Math.round(dir);
      dir = dir * TWO_PI;

      // ease rotation
      targetAngle += dir * easing;
      pushMatrix();
      translate( width/2, height/2 );
      rotate( targetAngle );
      ellipse(10, 10, 5, 5 );
      fill(255, 0, 0);
      popMatrix();
    }

}
