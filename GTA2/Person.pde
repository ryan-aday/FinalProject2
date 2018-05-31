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
  
}
 
