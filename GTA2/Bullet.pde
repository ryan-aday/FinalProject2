class Bullet{
    //float angle = 0;
    float targetAngle = 0;
    float easing = 1;
    float x, y, angle, speed;
    
    Bullet(){
      float[] location;
      location=spawn();
      x=300;
      y=200;
      speed=2;
    }
    
    
    float[] spawn(){
      float[] point = new float[2];
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
      ellipse(5, 5, 5, 5 );
      //fill(255, 0, 0);
      popMatrix();
      point[0]=getX();
      point[1]=getY();

      return point;
    }
    
    void move(){
      translate(width/2, height/2);
      x=x+cos(angle);
      y=y+sin(angle);
      ellipse(x, y, 10, 10);
    }
    
    float getX(){
        return x;
    }
    
    float getY(){
        return y;
    }
    
    void display(){
        fill(0, 255, 0);
        ellipse(x, y, 5, 5);

    }
<<<<<<< HEAD
}
=======
}
>>>>>>> master
