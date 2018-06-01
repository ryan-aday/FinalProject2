Car car;
Person person;
ArrayList<Enemy> enemies;
int a=1;

void setup(){
  size(600, 400);
  background(0, 0, 0);
  person = new Person();
  enemies= new ArrayList<Enemy>();
}
/*
void setup(){
    
    size(600, 400);
    background(0, 0, 0);
    car=new Car(100, 100, 30, 50, 3);
    person= new Person(0, 0, 10, 1, 0);
    enemies= new ArrayList<Enemy>();
    
}
*/

void draw(){
  Enemy e = new Enemy(10, 0);
  enemies.add(e);
  for(Enemy i: enemies){
    if (enemies.size() < 20){
      i.display();
    }
  }
  person.display();
}


void keyPressed(){
  println(key);
  person.move();
}