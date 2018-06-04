Car car;
Person person;
ArrayList<Enemy> enemies;
int a=1;
float angle, speed;

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
  if (enemies.size() < 20){
    enemies.add(e);
  }
  for(Enemy i: enemies){
    i.display();
  }
  person.display();
  angle=0;
  speed=10;
}

void keyPressed(){
    if (key=='w'){
        for (Enemy i: enemies){
            i.setY(i.getY()+speed);
        }
    }
    if (key=='s'){
        for (Enemy i: enemies){
            i.setY(i.getY()-speed);
        }
    }
    if (key=='a'){
      pushMatrix();
      translate(width/2, height/2);
      angle+=.01;
      rotate(angle);
      
}