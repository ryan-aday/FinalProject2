boolean[] keys= new boolean[128];
class Person{
  float x, y, r, speed, angle;
  
  Person(float _x, float _y, float _r, float _speed, float _angle){
    x = _x;
    y = _y;
    r = _r;
    speed = _speed;
    angle = _angle;
  }
  
  // default constructor
  Person(){
    x = width/2.0;
    y = height/2.0;
    speed = 10.0;
    angle = 0.0;
  }
  
 void move(){
    if (keyPressed){
      if (keys['d']){
        clear();
        translate(width/2, height/2);
        angle+=.06;
   //     rotate(angle);
        x+=speed;
        ellipse(x, y, r, r);
        fill(255, 255, 255);
        //keyReleaswwwwed();
      }
      if (keys['a']){
        clear();
        translate(width/2, height/2);
        angle-=.06;
     //   rotate(angle);
        x-=speed;
        ellipse(x, y, r, r);
        fill(255, 255, 255);
        //keyReleased();
      }
      if (keys['w']){
        if (key=='a'){
          x-=speed;
          y-=speed;
        }
        if (key=='d'){
            x+=speed;
            y-=speed;
        }
        clear();
        translate(width/2, height/2);
      //  rotate(angle);
        fill(255, 255, 255);
        y-=speed;
        ellipse(x, y, r, r);
      }
      while (key=='s'){
        if (key=='a'){
          x-=speed;
        }
        if (key=='d'){
            x+=speed;
        }
        clear();
        translate(width/2, height/2);
     //   rotate(angle);
        fill(255, 255, 255);
        y+=speed;
        ellipse(x, y, r, r);
        }
      }
    
  }
  
}
