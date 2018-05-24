class Ball{
  boolean isLeft;
  int BallX, BallY, speed;
   
  Ball(int _x, int _y){
      BallX=_x;
      BallY=_y;
      isLeft=true;
  }
 
  int getX(){
      return BallX;
  }
  
  int getY(){
      return BallY;
  }
  
  int getSpeed(){
      return speed;
  }
  
  void setSpeed(int value){
      speed=value;
  }
  
  void move(){
    if (isLeft && BallX>0){
      ellipse(BallX-speed, BallY, 20, 20);
      BallX-=speed;
    }else{
      ellipse(BallX+speed, BallY, 20, 20);
      BallX+=speed;
    }
  }
}

    
      