class Car{
  float x, y, L, W, angle;
  
  Car(float _x, float _y, float _L, float _W){
    x=_x;
    y=_y;
    L=_L;
    W=_W;
    angle=0.0;
  }
  
  void move(){
    if (keyPressed){
      clear();
      translate(width/2, height/2);
      rotate(angle+PI/3.0);

      rect(22, 33, 5, 5);
     fill(255, 255, 255);
 
      angle++;
    }
  }
  }