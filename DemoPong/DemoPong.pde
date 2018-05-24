abstract class paddle{
  void paddle(){}
}

int Mx, My;
LPaddle left;
RPaddle right;
Ball ball;
void setup(){
  
    left=new LPaddle(50, 200);
    left.setColor(225, 225, 225);
    left.setSpeed(10);
    right=new RPaddle(550, 200);
    right.setColor(225, 225, 225);
    right.setSpeed(10);
    ball= new Ball(300, 200);
    ball.setSpeed(5);
    
    Mx=300;
    My=1;
    
    size(600, 400);
    background(0, 0, 0);
    

}

void draw(){
    rect(Mx, My, 10, 400);
    fill(255, 255, 255);  
    
}

void keyPressed(){
    left.checkL();
    right.checkR();
    ball.move();
}