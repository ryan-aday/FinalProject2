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
  
  void display(){
    ellipse(xcor, ycor, 10, 10);
    fill(255, 255, 255);
    ellipse(xcor + 5 * cos(angle), ycor + 5 * sin(angle), 3, 3);
    fill(255, 0, 0);
  }
    
  
}