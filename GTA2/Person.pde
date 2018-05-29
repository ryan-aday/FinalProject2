class Person{
  float xcor, ycor, vel, angle;
  
  Person(float x, float y, float v, float a){
    xcor = x;
    ycor = y;
    vel = v;
    angle = a;
  }
  
  // default constructor
  Person(){
    Person(width/2, height/2, 10, 0);
  }
  
  void Display{
    ellipse(xcor, ycor, 30, 30);
    fill(255, 255, 255);
    ellipse(xcor + 15 * cos(angle), ycor + 15 * sin(angle), 10, 10);
    fill(255, 0, 0);
  }
    
  
}
