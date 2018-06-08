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
  
  void display(){
    fill(255, 255, 255);
    ellipse(x, y, 10, 10);

  }
  
  void clear(){
    this.clear();
  }
  
  float getX(){
      return x;
  }
  
  float getY(){
      return y;
  }
}