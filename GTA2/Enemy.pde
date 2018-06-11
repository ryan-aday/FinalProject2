class Enemy{
  float xcor;
  float ycor;
  float vel;
  float angle;
  
  Enemy(float x, float y, float v, float a){
    xcor = x;
    ycor = y;
    vel = v;
    angle = a;
  }
  
  float getX(){
      //println(xcor);
      return xcor;
  }
  
  float getY(){
      //println(ycor);
      return ycor;
  }
  

  
  void setX(float val){
      clear();
      xcor=val;
      spawn();
  }
  
  void setY(float val){
      clear();
      ycor=val;
      spawn();
  }
  
  Enemy(float v, float a){
    float[] location;
    location = spawn();
    xcor = location[0];
    ycor = location[1];
    vel = v;
    angle = a;
  }
  
  float[] spawn(){
    float[] point = new float[2];
    int r = (int)(random(4));
    if(r == 0){
      point[0] = 0;
      point[1] = random(height);
    }
    else if(r == 1){
      point[0] = random(width);
      point[1] = 0;
    }
    else if(r == 2){
      point[0] = width;
      point[1] = random(height);
    }
    else if(r == 3){
      point[0] = random(width);
      point[1] = height;
    }
    return point;
  }
  
  void display(){
    ellipse(xcor, ycor, 10, 10);
    fill(255, 255, 255);
    ellipse(xcor + 5 * cos(angle), ycor + 5 * sin(angle), 3, 3);
    fill(255, 0, 0);
  }
  
  void chase(Person person){
    float speedv=.9980;
    if (person.getX() != getX() || person.getY() != getY()){
      if((getX()-person.getX()>100) && (getY()-person.getY()>100)){
        speedv=2.300;
      }else{
          speedv=.9980;
      } xcor=person.getX()+((getX()-person.getX())*speedv);
        ycor=person.getY()+((getY()-person.getY())*speedv);
      //}xcor=getX()-(20+random(40))*.9975;
      //ycor=getY()-(20+random(40))*.9975;
    }    
  }
    
}
