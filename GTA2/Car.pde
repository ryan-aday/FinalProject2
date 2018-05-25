class Car{
  float x, y, L, W, speed, angle;
  
  Car(float _x, float _y, float _L, float _W, float _speed){
    x=_x;
    y=_y;
    L=_L;
    W=_W;
    speed=_speed;
    angle=0.0;
  }
  
  void move(){
    if (keyPressed){
      if (key=='d'){
        clear();
        translate(width/2, height/2);
        angle+=.06;
        rotate(angle);
        rect(x, y, L, W, 7);
        fill(255, 255, 255);
        //keyReleased();
      }
      if (key=='a'){
        clear();
        translate(width/2, height/2);
        angle-=.06;
        rotate(angle);
        rect(x, y, L, W, 7);
        fill(255, 255, 255);
        //keyReleased();
      }
      if (key=='w'){
        clear();
        translate(width/2, height/2);
        rotate(angle);
        fill(255, 255, 255);
        rect(x+speed, y+speed, L, W, 7);
        x+=speed*cos(angle);
        y+=speed*sin(angle);

        
      }
      if (key=='s'){
        clear();
        translate(width/2, height/2);
        rotate(angle);
        fill(255, 255, 255);
        rect(x-speed, y-speed, L, W, 7);
        x-=speed*cos(angle);
        y-=speed*sin(angle);
       
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