class Person{
  float x, y, speed, angle;
  
  Person(float x, float y, float v, float a){
    xcor = x;
    ycor = y;
    vel = v;
    angle = a;xx
  }
  
  // default constructor
  Person(){
    xcor = width/2.0;
    ycor = height/2.0;
    vel = 10.0;
    angle = 0.0;
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
  
}