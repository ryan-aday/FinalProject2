class LPaddle {
  int Lx, Ly, Lr, Lg, Lb, speed;

  LPaddle(int _x, int _y){
    Lx=_x;
    Ly=_y;
  }
  
  void setColor(int r, int g, int b){
     Lr=r;
     Lg=g;
     Lb=b;
  }
  
  void setSpeed(int value){
      speed=value;
  }

  boolean checkL() {
   if(key==119){
      if (Ly==0){}
      else{
        clear();
        rect(Lx, Ly-speed, 10, 50);
        //fill(255, 255, 255);
        Ly-=speed;
      }
    }
    if(key==115){
      if (Ly==350){}
      else{
        clear();
        rect(Lx, Ly+speed, 10, 50);
        //fill(255, 255, 255);
        println(Ly);
        Ly+=speed;
      }
    }
  
    println(int(key));
    return true;
  }
}