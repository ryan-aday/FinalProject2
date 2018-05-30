Car car;
Person person;
ArrayList<Enemy> enemies;
int a=1;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  person.Display();
}

/*
void setup(){
    size(600, 400);
    background(0, 0, 0);
    car=new Car(33, 22, 30, 50, 3); 
}
*/

void draw(){
}


void keyPressed(){
  println(key);
  car.move();
  
  
}