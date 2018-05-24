class RPaddle {
  int Rx, Ry, Rr, Rg, Rb, speed;

  RPaddle(int _x, int _y){
    Rx=_x;
    Ry=_y;
  }
  
  void setColor(int r, int g, int b){
     Rr=r;
     Rg=g;
     Rb=b;
  }
  
  void setSpeed(int value){
      speed=value;
  }

  boolean checkR() {
   if(key==111){
      if (Ry==0){}
      else{
        clear();
        rect(Rx, Ry-speed, 10, 50);
        //fill(255, 255, 255);
        Ry-=speed;
      }
    }
    if(key==108){
      if (Ry==350){}
      else{
        clear();
        rect(Rx, Ry+speed, 10, 50);
        //fill(255, 255, 255);
        println(Ry);
        Ry+=speed;
      }
    }
  
    println(int(key));   
    return true;
  }
}