Car car;
Person person;
ArrayList<Enemy> enemies;
int a=1;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  person.display();
  enemies = new ArrayList<Enemy>();
}

/*
void setup(){
    size(600, 400);
    background(0, 0, 0);
    car=new Car(33, 22, 30, 50, 3); 
}
*/

void draw(){
  Enemy e = new Enemy(10, 0);
  enemies.add(e);
  for(Enemy i: enemies){
    i.display();
  }
}


void keyPressed(){
  println(key);
  car.move();
  
  
}