class Car{
  float x, y, L, W, speed, angle;

  // default constructor
  Car(){
    x = width/2.0;
    y = height/2.0;
    speed = 10.0;
    angle = radians(2*PI);
  }
  
  void display(){
    fill(255, 255, 255);
    rect(x, y, 30, 50, 7);

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
