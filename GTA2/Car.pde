class Car{
  float x, y, L, W, speed, angle;
  float fLx, fLy, fRx, fRy, bLx, bLy, bRx, bRy;
  float ogX, ogY;
  
  Car(float _x, float _y, float _L, float _W, float _speed){
    x=_x;
    y=_y;
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
    angle=0.00;
    rectMode(CENTER);
  }
  
  void move(){
    if (keyPressed){
      if (key=='d'){
        clear();
        pushMatrix();
        translate(x, y);
        rotate(angle);
        angle+=.01;

        rect(0, 0, L, W, 7);
        fill(255, 255, 255);
        popMatrix();
        //keyReleased();
      }
      if (key=='a'){
        clear();
        pushMatrix();
        translate(x, y);

        rotate(angle);

        angle-=.01;
        //x=0;
        //y=0;
        rect(0, 0, L, W, 7);
        fill(255, 255, 255);
        popMatrix();
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
  
  void display(){
      rect(300, 200, 50, 70, 7);
  }
  
  void keyReleased(){
    speed=0.0;
  }
  //mouseCLicked for bullets
}