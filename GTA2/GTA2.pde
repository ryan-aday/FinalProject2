Car car;
int a=1;

void setup(){
    size(600, 400);
    background(0, 0, 0);
    car=new Car(300, 200, 30, 50);  
}

void draw(){
}


void keyPressed(){
  println(key);
  car.move();
  
}