class Car{
  float x, y, L, W, speed, angle;
  float fLx, fLy, fRx, fRy, bLx, bLy, bRx, bRy;
  float ogX, ogY;
  
  Car(float _x, float _y, float _L, float _W, float _speed){
    x=_x-_L/2;
    y=_y-_W/2;
    L=_L;
    W=_W;
    /*
    fLx=x;
    fLy=y;
    fRx=x+L;
    fRy=y;
    bLx=x;
    bLy=y+W;
    bRx=x+L;
    bRy=y+W;
    */
    ogX=x+L/2;
    ogY=y+W/2;
    speed=_speed;
    angle=0.01;
  }
  
  void move(){
    if (keyPressed){
      if (key=='d'){
        clear();
        translate(x, y);
        rotate(angle);
        angle+=.01;
        //x=0;
        //y=0;
        rect(x, y, L, W, 7);
        fill(255, 255, 255);
        //keyReleased();
      }
      if (key=='a'){
        clear();
        translate(x, y);
        rotate(-angle);

        angle+=.01;
        //x=0;
        //y=0;
        rect(x, y, L, W, 7);
        fill(255, 255, 255);
        //keyReleased();
      }
      if (key=='s'){
        clear();
        translate(x, y);
        fill(255, 255, 255);
        y+=speed;
        rect(x, y, L, W, 7);
        //x+=speed;

        
      }
      if (key=='w'){
        clear();
        translate(x, y);
        fill(255, 255, 255);
        y-=speed;
        rect(x, y, L, W, 7);
        //x-=speed;
        }
      }
    
  }
  
  void keyReleased(){
    speed=0.0;
  }
  //mouseCLicked for bullets
  
  boolean bumps(){
      return (x<0 && y<0 ||
              x<0 && y>400 ||
              x>600 && y<0  ||
              x>600 && y>400);
  }
}
