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
    xcor = width/2.0;
    ycor = height/2.0;
    vel = 10.0;
    angle = 0.0;
  }
  
  void Display(){
    fill(255, 255, 255);
    ellipse(xcor, ycor, 40, 40);
    fill(255, 0, 0);
    ellipse(xcor + 12 * cos(angle), ycor + 12 * sin(angle), 10, 10);
    
  }
    
  
}
