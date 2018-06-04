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
    angle = radians(2*PI);
  }
 
  void orthoMove(){
      if (keyPressed){
        if (key=='w'){
            clear();
            translate(width/2, height/2);
            y-=speed;
            ellipse(x, y, r, r);
            ellipse(x+r/2, y+r/2, 3, 3);
        }
        if (key=='s'){
            clear();
            translate(width/2, height/2);
            y+=speed;
            ellipse(x, y, r, r);
            ellipse(x+r/2, y+r/2, 3, 3);

        }
        if (key=='a'){
            clear();
            translate(width/2, height/2);
            x-=speed;
            ellipse(x, y, r, r);
            ellipse(x+r/2, y+r/2, 3, 3);
        }
        if (key=='d'){
            clear();
            translate(width/2, height/2);
            x+=speed;
            ellipse(x, y, r, r);
            ellipse(x+r/2, y+r/2, 3, 3);
      }
    }
  }
  
  void display(){
    fill(255, 255, 255);
    ellipse(x, y, 10, 10);
    fill(255, 0, 0);
    ellipse(x + 5 * cos(angle), y + 5 * sin(angle), 3, 3);
  }
}

 /* 
  void move(){
    if (keyPressed){
      if(key == 'w'){
        clear();
        translate(width/2, height/2);
        x = x + speed * cos(a);
        y = y + speed * sin(a);
      }
    }
  }
*/