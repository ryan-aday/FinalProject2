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
  
  
}