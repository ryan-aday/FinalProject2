Car car;
Person person;
int a=1;
/*
void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  person.Display();
  
}
*/
void setup(){
    size(600, 400);
    background(0, 0, 0);
    car=new Car(100, 100, 30, 50, 3);
    person= new Person(0, 0, 10, 1, 0);
}
void draw(){
}


void keyPressed(){
  println(key);
  car.move(); 
}
